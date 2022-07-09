package com.clj.fastble.data;
/* loaded from: classes.dex */
public enum BleScanState {
    STATE_IDLE(-1),
    STATE_SCANNING(1);
    
    private int code;

    BleScanState(int i) {
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }
}
