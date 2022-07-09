package com.living.emo.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import androidx.fragment.app.FragmentTransaction;
import com.clj.fastble.data.BleDevice;
import com.living.emo.MainActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.EmoUpdate;
import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.fragment.NavSetFragment;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.view.WaitDialogView;
import com.living.emo.viewModel.CityViewModel;
import com.living.emo.viewModel.WifiViewModel;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class SettingActivity extends AbstractBaseActivity {
    private static final String TAG = "zxl" + SettingActivity.class.getSimpleName();
    private BleDevice mBleDevice;
    private CityViewModel mCityViewModel;
    private WifiViewModel mModel;
    private NavSetFragment mNavSetFragment;
    private Handler mHandler = new Handler();
    private int out = 0;
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.-$$Lambda$SettingActivity$uozlBJgvQBe3fkzYoYHivggyb9w
        @Override // java.lang.Runnable
        public final void run() {
            SettingActivity.this.lambda$new$0$SettingActivity();
        }
    };

    private void initPreferences() {
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    protected int setTopBg() {
        return R.drawable.txt_setting;
    }

    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mSet.setEnabled(false);
        initPreferences();
        EventBus.getDefault().register(this);
        initFragments();
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    public void initView() {
        super.initView();
        this.mSet.setVisibility(8);
    }

    public /* synthetic */ void lambda$new$0$SettingActivity() {
        WaitDialogView.dismiss();
        goToActivity(MainActivity.class);
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    public void goBack() {
        EmoUpdate instance = EmoUpdate.getInstance();
        int emoVersion = instance.getEmoVersion();
        String emoVersionName = instance.getEmoVersionName();
        if (emoVersion < 21 || emoVersionName.equals("1.4.0") || emoVersionName.contains("1.4.0.p")) {
            goToActivity(MainActivity.class);
            return;
        }
        WaitDialogView.show(this, getString(R.string.waiting));
        write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("out")));
        this.out = 1;
        this.mHandler.postDelayed(this.task, 10000L);
    }

    private void goToActivity(Class cls) {
        startActivity(new Intent(this, cls));
        finish();
    }

    private void initFragments() {
        if (this.mNavSetFragment == null) {
            this.mNavSetFragment = new NavSetFragment();
        }
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(this.mFrameLayout.getId(), this.mNavSetFragment);
        beginTransaction.commit();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        ResultResponse objectFromData = ResultResponse.objectFromData(jsonEvent.getJson());
        if (objectFromData != null && objectFromData.getData() != null) {
            ResultResponse.DataBean data = objectFromData.getData();
            if (objectFromData.getType().equals(Constants.BLE_SETTING_RSP)) {
                int result = data.getResult();
                this.mHandler.removeCallbacks(this.task);
                if (result == 1) {
                    if (this.out > 0) {
                        WaitDialogView.dismiss();
                        goToActivity(MainActivity.class);
                    }
                } else if (result == 10) {
                    goToActivity(MainActivity.class);
                } else {
                    WaitDialogView.dismiss();
                }
            }
        }
    }

    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        WaitDialogView.dismiss();
    }
}
