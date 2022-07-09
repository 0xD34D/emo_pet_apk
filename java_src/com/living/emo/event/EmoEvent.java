package com.living.emo.event;

import com.living.emo.util.ByteUtil;
/* loaded from: classes.dex */
public class EmoEvent {
    private byte[] data;
    private int eight;
    private int eventNumbering;
    private int four;
    private int seven;

    public void setSeven(int i) {
        this.seven = i;
    }

    public void setEight(int i) {
        this.eight = i;
    }

    public int getSeven() {
        return this.seven;
    }

    public int getEight() {
        return this.eight;
    }

    public EmoEvent(byte[] bArr) {
        this.data = bArr;
        this.four = ByteUtil.unsigned(bArr[4]);
        this.eventNumbering = ByteUtil.unsigned(bArr[5]) + (bArr[6] == 0 ? 0 : ByteUtil.unsigned(bArr[6]) * 256);
        this.seven = bArr[7];
        this.eight = bArr[8];
    }

    public int getFour() {
        return this.four;
    }

    public int getEventNumbering() {
        return this.eventNumbering;
    }

    public byte[] getData() {
        return this.data;
    }
}
