let stage = [];
let combo = [];
let score = [];
let star = [];
let calcStar = [];

function ele(link, element, event) {
    var done = new Promise(function (res, rej) {
        element.onerror = function (e) {
            rej(new Error('fetching ' + link + ' failed'));
        };
        element.addEventListener(event, function () {
            res(element);
        });
    });
    element.src = link;
    return done;
}

function load(link) {
    var suffix = (link.match(/\.(\w+)$/) || [])[1];
    switch (suffix) {
        case 'png':
            return ele(link, new Image(), 'load');
    }
}

/**
 * 获取url参数
 * @param variable key
 * @param value 给定的默认值,没有给定则返回false
 * @returns {string|*} 如果没有匹配上，使用第二个参数为默认值
 */
function getQueryVariable(variable, value = false) {
    let query = window.location.search.substring(1);
    let vars = query.split("&");
    for (let i = 0; i < vars.length; i++) {
        let pair = vars[i].split("=")
        if (pair[0] === variable) {
            return decodeURI(pair[1])
        }
    }
    return value;
}
;(function () {
    let stage1 = 0.3
    let stage2 = stage1 * 2
    let stage3 = stage1 * 3
    let total = getQueryVariable("total");
    stage.push(parseInt(total * stage1))
    stage.push(parseInt(total * stage2))
    stage.push(parseInt(total * stage3))
    let combo1 = getQueryVariable("combo").split("").map(value => load("./image/num_2_" + value + ".png"))
    Promise.all(combo1).then(res => {
        combo = res;
    })
    let score1 = getQueryVariable("score").split("").map(value => load("./image/num_1_" + value + ".png"))
    Promise.all(score1).then(res => {
        score = res;
    })
    let star1 = stage.map(value => {
        if (parseInt(getQueryVariable("score")) >= value) {
            calcStar.push(value)
          return load("./image/star_2.png")
        } else {
           return load("./image/star_1.png")
        }
    })
    Promise.all(star1).then(res => {
        star = res;
    })
})()
window.addEventListener("load", function () {
    let starContainerEle = document.getElementsByClassName("score-star-cont")[0]
    let scoreEle = document.getElementsByClassName("score-score")[0]
    let comboEle = document.getElementsByClassName("score-combo")[0]
    for (let i = 0; i < stage.length; i++) {
        let div = document.createElement("div");
        let p = document.createElement("p")
        p.innerText = stage[i]
        div.append(star[i], p)
        starContainerEle.append(div)
    }
    score.forEach(function (value) {
        scoreEle.append(value)
    })
    combo.forEach(function (value) {
        comboEle.append(value)
    })

    document.getElementById("back").addEventListener("click", function () {
        config.gameOver()
    })
    document.getElementById("music").innerText = getQueryVariable('name')
    document.getElementById("writer").innerText = 'by '+getQueryVariable('writer')
    setTimeout(()=>{
        config.gameResult(calcStar.length);
    },300)
})