package com.youth.banner.adapter;

import android.view.ViewGroup;
/* loaded from: classes.dex */
public interface IViewHolder<T, VH> {
    void onBindView(VH vh, T t, int i, int i2);

    VH onCreateHolder(ViewGroup viewGroup, int i);
}
