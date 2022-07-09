package com.squareup.wire;
/* loaded from: classes.dex */
public final class Wire {
    public static <T> T get(T t, T t2) {
        return t != null ? t : t2;
    }

    private Wire() {
    }
}
