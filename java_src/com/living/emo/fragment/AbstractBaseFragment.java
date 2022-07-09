package com.living.emo.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import butterknife.Unbinder;
/* loaded from: classes.dex */
public abstract class AbstractBaseFragment extends Fragment {
    private Unbinder mBind;

    void initData() {
    }

    protected void initEvent() {
    }

    void initFragment() {
    }

    protected void initProgress() {
    }

    void initView() {
    }

    protected abstract int loadRootViewResId();

    protected void loadStateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
    }

    public void release() {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View loadRootView = loadRootView(layoutInflater, viewGroup, bundle);
        this.mBind = ButterKnife.bind(this, loadRootView);
        loadStateView(layoutInflater, viewGroup);
        initView();
        initData();
        initFragment();
        initEvent();
        initProgress();
        return loadRootView;
    }

    private View loadRootView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(loadRootViewResId(), viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Unbinder unbinder = this.mBind;
        if (unbinder != null) {
            unbinder.unbind();
        }
        release();
    }
}
