package com.living.emo.activity;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentTransaction;
import com.living.emo.MainActivity;
import com.living.emo.fragment.NotificationsFragment;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class NotificationsActivity extends AbstractBaseActivity {
    @Override // com.living.emo.activity.AbstractBaseActivity
    protected int setTopBg() {
        return R.drawable.txt_notifications;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mRoot.setBackgroundResource(R.drawable.notfications_bg);
        initInteractFragment();
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    public void goBack() {
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

    private void initInteractFragment() {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(this.mFrameLayout.getId(), new NotificationsFragment());
        beginTransaction.commit();
    }
}
