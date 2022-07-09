package com.living.emo.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.living.emo.MainActivity;
import com.living.emo.fragment.InteractFragment;
import com.livingai.emopet.R;
import p006io.github.inflationx.viewpump.ViewPumpContextWrapper;
/* loaded from: classes.dex */
public class InteractActivity extends AbstractBaseActivity {
    @Override // com.living.emo.activity.AbstractBaseActivity
    protected int setTopBg() {
        return R.drawable.int_txt_interact;
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    public void goBack() {
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initInteractFragment();
    }

    private void initInteractFragment() {
        InteractFragment interactFragment = new InteractFragment();
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(this.mFrameLayout.getId(), interactFragment);
        beginTransaction.commit();
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(ViewPumpContextWrapper.wrap(context));
    }
}
