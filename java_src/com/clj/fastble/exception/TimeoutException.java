package com.clj.fastble.exception;
/* loaded from: classes.dex */
public class TimeoutException extends BleException {
    public TimeoutException() {
        super(100, "Timeout Exception Occurred!");
    }
}
