package com.living.emo.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class CitySettingFragment_ViewBinding implements Unbinder {
    private CitySettingFragment target;

    public CitySettingFragment_ViewBinding(CitySettingFragment citySettingFragment, View view) {
        this.target = citySettingFragment;
        citySettingFragment.mCityContainer = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.setting_city_container, "field 'mCityContainer'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        CitySettingFragment citySettingFragment = this.target;
        if (citySettingFragment != null) {
            this.target = null;
            citySettingFragment.mCityContainer = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
