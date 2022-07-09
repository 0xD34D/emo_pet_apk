package com.living.emo.activity;

import android.content.Intent;
import android.os.Bundle;
import com.clj.fastble.data.BleDevice;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.TextBean;
import com.living.emo.viewModel.LightViewModel;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class ToolLightActivity extends AbstractBaseActivity {
    private static final String TAG = "zxl::" + ToolLightActivity.class.getSimpleName();
    private BleDevice mBleDevice;
    private LightViewModel mLightViewModel;

    @Override // com.living.emo.activity.AbstractBaseActivity
    protected int setTopBg() {
        return R.drawable.txt_light;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mRadio.clear();
        this.mRadio.put("info", Integer.valueOf((int) R.drawable.selector_btn_info));
        this.mRadio.put("light", Integer.valueOf((int) R.drawable.selector_btn_light));
        initFragment(TextBean.getLight());
        initBle();
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    public void goBack() {
        goToActivity(UtilitiesActivity.class);
        finish();
    }

    private void goToActivity(Class cls) {
        startActivity(new Intent(this, cls));
        finish();
    }

    private void initBle() {
        this.mBleDevice = BleBean.getInstance().getBleDevice();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.AbstractBaseActivity
    public void initView() {
        super.initView();
    }
}
