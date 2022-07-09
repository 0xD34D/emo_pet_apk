package com.living.emo.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class WifiSettingFragment_ViewBinding implements Unbinder {
    private WifiSettingFragment target;

    public WifiSettingFragment_ViewBinding(WifiSettingFragment wifiSettingFragment, View view) {
        this.target = wifiSettingFragment;
        wifiSettingFragment.wifiCon = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.setting_wifi_container, "field 'wifiCon'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        WifiSettingFragment wifiSettingFragment = this.target;
        if (wifiSettingFragment != null) {
            this.target = null;
            wifiSettingFragment.wifiCon = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
