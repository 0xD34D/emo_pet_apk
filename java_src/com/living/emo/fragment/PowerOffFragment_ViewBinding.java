package com.living.emo.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class PowerOffFragment_ViewBinding implements Unbinder {
    private PowerOffFragment target;

    public PowerOffFragment_ViewBinding(PowerOffFragment powerOffFragment, View view) {
        this.target = powerOffFragment;
        powerOffFragment.mRelativeLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.setting_poweroff_con, "field 'mRelativeLayout'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        PowerOffFragment powerOffFragment = this.target;
        if (powerOffFragment != null) {
            this.target = null;
            powerOffFragment.mRelativeLayout = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
