(function () {
    window.config = {
        playSound(d) {
            window.TellNative.playSound(d);
        },
        startGameCMD() {
            window.TellNative.startGameCMD();
        },
        gameOverCMD() {
            window.TellNative.gameOverCMD();
        },
        tellEMO(a) {
            window.starTime = new Date().getTime()
            window.interval = 1500;
            window.TellNative.tellEMO(a);
        },
    }
})()