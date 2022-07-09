!function(e){var n={};function t(o){if(n[o])return n[o].exports;var r=n[o]={i:o,l:!1,exports:{}};return e[o].call(r.exports,r,r.exports,t),r.l=!0,r.exports}t.m=e,t.c=n,t.d=function(e,n,o){t.o(e,n)||Object.defineProperty(e,n,{enumerable:!0,get:o})},t.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},t.t=function(e,n){if(1&n&&(e=t(e)),8&n)return e;if(4&n&&"object"==typeof e&&e&&e.__esModule)return e;var o=Object.create(null);if(t.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:e}),2&n&&"string"!=typeof e)for(var r in e)t.d(o,r,function(n){return e[n]}.bind(null,r));return o},t.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return t.d(n,"a",n),n},t.o=function(e,n){return Object.prototype.hasOwnProperty.call(e,n)},t.p="",t(t.s=0)}([function(module,exports){document.querySelector(".logout").addEventListener("click",e=>{config.soundPool("select"),config.gameOver()}),document.getElementById("close").addEventListener("click",e=>{config.soundPool("select"),config.gameOver()});const anim={img:document.createElement("img"),roundPath:["./image/action_txt_round1.png","./image/action_txt_round2.png","./image/action_txt_round3.png"],animPath:{emoDance:"./image/action_txt_emowill.png",carefully:"./image/action_txt_watch.png",repeat:"./image/action_txt_nowrepeat.png",check:"./image/action_txt_nowcheck.png",perfect:"./image/action_txt_perfect.png",great:"./image/action_txt_great.png",good:"./image/action_txt_good.png",bad:"./image/action_txt_bad.png"},round1:function(){return this.createImg(this.roundPath[0])},round2:function(){return this.createImg(this.roundPath[1])},round3:function(){return this.createImg(this.roundPath[2])},emoDance:function(){return this.createImg(this.animPath.emoDance)},carefully:function(){return this.createImg(this.animPath.carefully)},repeat:function(){return this.createImg(this.animPath.repeat)},check:function(){return this.createImg(this.animPath.check)},perfect:function(){return this.createImg(this.animPath.perfect)},great:function(){return this.createImg(this.animPath.great)},good:function(){return this.createImg(this.animPath.good)},bad:function(){return this.createImg(this.animPath.bad)},createImg:function(e){return this.img.src=e,addClass(text,this.img),this.img},playAnim(e){switch(txtContainer.innerHTML="",txtContainer.appendChild(anim[e]()),console.log(e),e){case animName.great:config.soundPool(animName.great);break;case animName.bad:config.soundPool(animName.bad);break;case animName.perfect:config.soundPool(animName.perfect);break;case animName.good:config.soundPool(animName.good);break;default:config.soundPool("caption2")}}},animName={emoDance:"emoDance",carefully:"carefully",repeat:"repeat",check:"check",perfect:"perfect",great:"great",good:"good",bad:"bad"};let active="active",display="display",text="text",isClick=!1,playNow=document.querySelector(".play-now"),gameContainer=document.querySelector("#game-container"),shade=document.querySelector(".shade"),txtContainer=document.querySelector(".txt-parent"),box=document.querySelector(".box-container ul");const roundBox=["round1","round2","round3"];let currRoundNum=0,currRound=roundBox[currRoundNum];const ROUND1=6,ROUND2=8,ROUND3=10;let playStatus=!0;function delay(e=2e3){setTimeout((function(){anim.playAnim(currRound)}),0*e),setTimeout((function(){anim.playAnim(animName.emoDance)}),1*e),setTimeout((function(){anim.playAnim(animName.carefully)}),2*e),setTimeout((function(){config.generateAction()}),3*e)}function removeClass(e,n,t=500){setTimeout(()=>{n.classList.remove(e)},t)}function addClass(e,n){return n.classList.add(e),n}function playFrame(e,n){addClass(e,n),removeClass(e,n)}function initBox(){box.innerHTML="",creatLi().map(e=>{box.appendChild(e)})}function creatLi(){let lis=[];console.log(currRound.toUpperCase()),console.log(eval(currRound.toUpperCase()));for(let i=0;i<eval(currRound.toUpperCase());i++){let e=document.createElement("li"),n=document.createElement("img");n.src="./image/action_pic_question.png",e.appendChild(n),lis.push(e)}return lis}playNow.addEventListener("click",e=>{playStatus&&(config.soundPool("select"),config.playNow()),playStatus=!1}),window.startGame=function(){removeClass(display,gameContainer,0),addClass(display,shade),delay()},window.nowRepeat=function(){isClick=!0,anim.playAnim(animName.repeat)},initBox();let currCount=0;const action=[function(){let e=document.createElement("img");return e.src="./image/action_pic_lu.png",e},function(){let e=document.createElement("img");return e.src="./image/action_pic_lf.png",e},function(){let e=document.createElement("img");return e.src="./image/action_pic_rf.png",e},function(){let e=document.createElement("img");return e.src="./image/action_pic_ru.png",e}];let yesOrNo=[function(){let e=document.createElement("img");return e.src="./image/fault.png",e.className="check",config.soundPool("error1"),e},function(){let e=document.createElement("img");return e.src="./image/right.png",e.className="check",config.soundPool("yes1"),e}];function computeFraction(e){let n=e.filter((function(e){return 0==e})).length;console.log("computeFraction:errnun===>"+n),score(n)}window.checkUserAction=function(e){console.log(e);let n=e.split("_");console.log(n);let t=n.length,o=0,r=setInterval((function(){if(o<t){document.querySelectorAll(".box-container>ul>li")[o].appendChild(yesOrNo[n[o]]()),o++}else clearInterval(r),o=0,computeFraction(n)}),1e3)};let errNums=[];const SCORE_PERFECT=0,SCORE_GREAT=1,SCORE_GOOD=2;function creatStar(e,n){const t=document.createElement("img");let o="";return 0===n?o="l":1===n?o="m":2===n&&(o="r"),t.src=`./image/action_star_${o}_${e}.png`,t}function gameOver(){errNums.sort();let e=errNums.filter(e=>0==e).length;const n=document.querySelector(".game-over-star");n.innerHTML="",errNums.map((function(e){return 0===e?1:2})).forEach((function(e,t){let o=creatStar(e,t);n.appendChild(o)})),addClass(display,gameContainer),removeClass(display,document.querySelector(".game-over"),0),config.mood(e)}function nextRound(){currRound=roundBox[++currRoundNum],console.log("currRound:"+currRound),currRoundNum>=roundBox.length?gameOver():(delay(),initBox())}function score(e){e===SCORE_PERFECT?(anim.playAnim(animName.perfect),config.expression(animName.perfect)):e===SCORE_GREAT?(anim.playAnim(animName.great),config.expression(animName.great)):e===SCORE_GOOD?(anim.playAnim(animName.good),config.expression(animName.good)):(anim.playAnim(animName.bad),config.expression(animName.bad)),errNums.push(e),setTimeout((function(){nextRound()}),4e3)}let ele=document.getElementsByClassName("left"),check=document.querySelector(".footer-btn-img"),userClick=[];[...ele].map((value,index)=>{value.addEventListener("click",e=>{if(isClick&&currCount<eval(currRound.toUpperCase())){playFrame(active,value),config.soundPool("select");let lis=document.querySelectorAll(".box-container>ul>li");lis[currCount].innerHTML="",lis[currCount].appendChild(action[index]()),userClick.push(index+1),currCount++,userClick.length===eval(currRound.toUpperCase())&&(isClick=!1,isCheck=!0,currCount=0,console.log(userClick))}})});let isCheck=!1,btnActive="btn-active";check.addEventListener("click",(function(){!isClick&&userClick.length===eval(currRound.toUpperCase())&&isCheck&&(playFrame(btnActive,check),anim.playAnim(animName.check),config.soundPool("select"),setTimeout((function(){config.checkUserAction(userClick),userClick=[],isCheck=!1}),1500))}))}]);