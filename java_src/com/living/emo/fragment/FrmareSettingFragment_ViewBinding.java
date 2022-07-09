package com.living.emo.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class FrmareSettingFragment_ViewBinding implements Unbinder {
    private FrmareSettingFragment target;

    public FrmareSettingFragment_ViewBinding(FrmareSettingFragment frmareSettingFragment, View view) {
        this.target = frmareSettingFragment;
        frmareSettingFragment.mFirmwareContainer = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.setting_firmware_container, "field 'mFirmwareContainer'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        FrmareSettingFragment frmareSettingFragment = this.target;
        if (frmareSettingFragment != null) {
            this.target = null;
            frmareSettingFragment.mFirmwareContainer = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
