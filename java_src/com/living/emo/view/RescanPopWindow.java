package com.living.emo.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import com.living.emo.MyApplication;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class RescanPopWindow extends PopupWindow {
    private static final String TAG = "RescanPopWindow";
    private final View mPreview;

    public RescanPopWindow() {
        super(-1, -1);
        View inflate = LayoutInflater.from(MyApplication.getContext()).inflate(R.layout.pop_rescan_view, (ViewGroup) null, false);
        this.mPreview = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-1);
        setSoftInputMode(16);
        setClippingEnabled(false);
        setOutsideTouchable(true);
    }
}
