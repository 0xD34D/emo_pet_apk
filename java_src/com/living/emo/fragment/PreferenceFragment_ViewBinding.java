package com.living.emo.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class PreferenceFragment_ViewBinding implements Unbinder {
    private PreferenceFragment target;

    public PreferenceFragment_ViewBinding(PreferenceFragment preferenceFragment, View view) {
        this.target = preferenceFragment;
        preferenceFragment.mPreferenceContainer = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.setting_preference_container, "field 'mPreferenceContainer'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PreferenceFragment preferenceFragment = this.target;
        if (preferenceFragment != null) {
            this.target = null;
            preferenceFragment.mPreferenceContainer = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
