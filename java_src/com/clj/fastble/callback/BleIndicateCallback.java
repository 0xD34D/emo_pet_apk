package com.clj.fastble.callback;

import com.clj.fastble.exception.BleException;
/* loaded from: classes.dex */
public abstract class BleIndicateCallback extends BleBaseCallback {
    public abstract void onCharacteristicChanged(byte[] bArr);

    public abstract void onIndicateFailure(BleException bleException);

    public abstract void onIndicateSuccess();
}
