;(function () {
    window.config = {
        playNow() {
            window.TellNative.playNow();
        },
        generateAction() {
            window.TellNative.generateAction()
        },
        checkUserAction(userClick) {
            window.TellNative.checkUserAction(userClick)
        },
        mood(num) {
            window.TellNative.mood(num)
        },
        expression(act) {
            window.TellNative.expression(act)
        },
        soundPool(sound){
            window.TellNative.soundPool(sound)
        },
        gameOver(){
            window.TellNative.gameOver()
        }
    }
})()