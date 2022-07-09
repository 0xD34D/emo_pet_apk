package com.living.emo.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class TimezoneFragment_ViewBinding implements Unbinder {
    private TimezoneFragment target;

    public TimezoneFragment_ViewBinding(TimezoneFragment timezoneFragment, View view) {
        this.target = timezoneFragment;
        timezoneFragment.mTimezoneContainer = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.setting_timezone_container, "field 'mTimezoneContainer'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TimezoneFragment timezoneFragment = this.target;
        if (timezoneFragment != null) {
            this.target = null;
            timezoneFragment.mTimezoneContainer = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
