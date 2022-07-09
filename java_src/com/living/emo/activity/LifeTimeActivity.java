package com.living.emo.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import androidx.fragment.app.FragmentTransaction;
import com.clj.fastble.data.BleDevice;
import com.living.emo.MainActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.fragment.LiftTimeFragment;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class LifeTimeActivity extends AbstractBaseActivity {
    private BleDevice mBleDevice;
    private Handler mHandler = new Handler();
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.LifeTimeActivity.1
        @Override // java.lang.Runnable
        public void run() {
            LifeTimeActivity.this.goToMain();
        }
    };
    private State currState = State.NONE;

    /* loaded from: classes.dex */
    public enum State {
        IN,
        OUT,
        NONE
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    protected int setTopBg() {
        return R.drawable.txt_lifetime;
    }

    public void goToMain() {
        WaitDialogView.dismiss();
        startActivity(new Intent(this, MainActivity.class));
        showToast(getString(R.string.emo_is_not_ready_or_130));
        finish();
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    public void goBack() {
        this.currState = State.OUT;
        write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.animRequest("out")));
        WaitDialogView.show(this, getString(R.string.waiting_for_emo));
    }

    private void initInteractFragment() {
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(this.mFrameLayout.getId(), new LiftTimeFragment());
        beginTransaction.commit();
    }

    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mRoot.setBackgroundResource(R.drawable.life_bg);
        initInteractFragment();
        EventBus.getDefault().register(this);
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.currState = State.IN;
        write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.animRequest("in")));
        WaitDialogView.show(this, getString(R.string.waiting));
        this.mHandler.postDelayed(this.task, 6000L);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onJsonEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:LifeTimeActivity", "emo->app ble json data:" + json);
        ResultResponse objectFromData = ResultResponse.objectFromData(json);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getType().equals(Constants.BLE_ANIM_REP)) {
            this.mHandler.removeCallbacks(this.task);
            int result = objectFromData.getData().getResult();
            if (result == 0) {
                goToMain();
            } else if (result == 1) {
                int i = C14892.$SwitchMap$com$living$emo$activity$LifeTimeActivity$State[this.currState.ordinal()];
                if (i == 1) {
                    WaitDialogView.dismiss();
                    this.currState = State.NONE;
                } else if (i == 2) {
                    WaitDialogView.dismiss();
                    startActivity(new Intent(this, MainActivity.class));
                    finish();
                    this.currState = State.NONE;
                }
            } else if (result == 10) {
                startActivity(new Intent(this, MainActivity.class));
                finish();
            }
        }
    }

    /* renamed from: com.living.emo.activity.LifeTimeActivity$2 */
    /* loaded from: classes.dex */
    static /* synthetic */ class C14892 {
        static final /* synthetic */ int[] $SwitchMap$com$living$emo$activity$LifeTimeActivity$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$living$emo$activity$LifeTimeActivity$State = iArr;
            try {
                iArr[State.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$living$emo$activity$LifeTimeActivity$State[State.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mHandler.removeCallbacks(this.task);
        WaitDialogView.dismiss();
    }

    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
