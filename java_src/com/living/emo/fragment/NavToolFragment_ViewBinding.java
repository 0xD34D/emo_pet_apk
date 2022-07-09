package com.living.emo.fragment;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RadioGroup;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class NavToolFragment_ViewBinding implements Unbinder {
    private NavToolFragment target;

    public NavToolFragment_ViewBinding(NavToolFragment navToolFragment, View view) {
        this.target = navToolFragment;
        navToolFragment.mRadioGroup = (RadioGroup) Utils.findRequiredViewAsType(view, R.id.nav_radio_group, "field 'mRadioGroup'", RadioGroup.class);
        navToolFragment.mFrameLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.nav_fragment, "field 'mFrameLayout'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        NavToolFragment navToolFragment = this.target;
        if (navToolFragment != null) {
            this.target = null;
            navToolFragment.mRadioGroup = null;
            navToolFragment.mFrameLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
