package com.living.emo.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class WakeDialog extends RelativeLayout {
    public WakeDialog(Context context) {
        this(context, null);
    }

    public WakeDialog(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WakeDialog(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(getContext()).inflate(R.layout.custom_wake_alert, (ViewGroup) null, false);
    }
}
