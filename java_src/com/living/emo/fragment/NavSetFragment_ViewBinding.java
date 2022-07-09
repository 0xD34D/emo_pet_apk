package com.living.emo.fragment;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class NavSetFragment_ViewBinding implements Unbinder {
    private NavSetFragment target;

    public NavSetFragment_ViewBinding(NavSetFragment navSetFragment, View view) {
        this.target = navSetFragment;
        navSetFragment.mFrameLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.nav_fragment, "field 'mFrameLayout'", FrameLayout.class);
        navSetFragment.mRadioGroup = (RadioGroup) Utils.findRequiredViewAsType(view, R.id.nav_radio_group, "field 'mRadioGroup'", RadioGroup.class);
        navSetFragment.mPreference = (RadioButton) Utils.findRequiredViewAsType(view, R.id.setting_preference_radio, "field 'mPreference'", RadioButton.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        NavSetFragment navSetFragment = this.target;
        if (navSetFragment != null) {
            this.target = null;
            navSetFragment.mFrameLayout = null;
            navSetFragment.mRadioGroup = null;
            navSetFragment.mPreference = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
