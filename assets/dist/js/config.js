
(function () {
    window.config = {
        startGame() {
            window.TellNative.startGame();
        },
        gameBehest(i, b) {
            window.TellNative.gameBehest(i, b)
        },
        gameOver(){
            window.TellNative.gameOver();
        },
        gameResult(a){
            window.TellNative.gameResult(a)
        },
        loadJSON(link){
            var sc = document.createElement('script')
            sc.type = 'text/javascript';
            var done = new Promise(function(res, rej) {
                sc.onerror = function(e) {
                    rej(new Error('fetching ' + link + ' failed'));
                };
                sc.onload = function() {
                    console.log(beatmapjson);
                    res(beatmapjson);
                };
            });
            sc.src = link;
            document.getElementsByTagName('head')[0].appendChild(sc);
            return done;
        }
    }
})()