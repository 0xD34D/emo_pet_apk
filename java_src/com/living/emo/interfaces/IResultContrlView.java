package com.living.emo.interfaces;
/* loaded from: classes.dex */
public interface IResultContrlView<M> {
    void failed(Exception exc);

    void success(M m);
}
