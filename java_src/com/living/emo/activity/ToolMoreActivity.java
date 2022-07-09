package com.living.emo.activity;

import android.content.Intent;
import android.os.Bundle;
import com.living.emo.bean.TextBean;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class ToolMoreActivity extends AbstractBaseActivity {
    @Override // com.living.emo.activity.AbstractBaseActivity
    protected int setTopBg() {
        return R.drawable.txt_more;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mRadio.clear();
        this.mRadio.put("info", Integer.valueOf((int) R.drawable.selector_btn_info));
        initFragment(TextBean.getMoreData());
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.AbstractBaseActivity
    public void initView() {
        super.initView();
    }
}
