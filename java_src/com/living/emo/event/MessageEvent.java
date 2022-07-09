package com.living.emo.event;
/* loaded from: classes.dex */
public class MessageEvent {
    private byte[] data;

    public MessageEvent(byte[] bArr) {
        this.data = bArr;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }
}
