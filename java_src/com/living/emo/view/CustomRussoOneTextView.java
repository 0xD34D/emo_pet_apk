package com.living.emo.view;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes.dex */
public class CustomRussoOneTextView extends AppCompatTextView {
    public CustomRussoOneTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView
    public void setTypeface(Typeface typeface) {
        super.setTypeface(Typeface.createFromAsset(getContext().getAssets(), "fonts/RussoOne.ttf"));
    }
}
