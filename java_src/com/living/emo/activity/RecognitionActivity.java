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
import com.living.emo.fragment.RecognitionFragment;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class RecognitionActivity extends AbstractBaseActivity {
    private static final int HANDLE_TIME_OUT = 6000;
    public static State currState = State.NONE;
    private BleDevice mBleDevice;
    private Handler mHandler;
    private RecognitionFragment mRecognitionFragment;
    private String target = "";
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.RecognitionActivity.1
        @Override // java.lang.Runnable
        public void run() {
            WaitDialogView.dismiss();
            RecognitionActivity recognitionActivity = RecognitionActivity.this;
            recognitionActivity.showToast(recognitionActivity.getResources().getString(R.string.emo_is_not_ready));
            RecognitionActivity.this.goToActivity(InteractActivity.class);
        }
    };

    /* loaded from: classes.dex */
    public enum State {
        NONE,
        IN,
        OUT,
        SYN,
        ADD,
        RESCAN,
        RENAME,
        DEL
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    protected int setTopBg() {
        return R.drawable.rec_txt_recognition;
    }

    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        WaitDialogView.show(this, getString(R.string.waiting));
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        currState = State.IN;
        write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.RecognitionIn()));
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(this.task, 6000L);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.target = (String) extras.get("from_activity");
            LogUtil.m64e("TAG", "onCreate: " + this.target);
        }
    }

    private void initFragment() {
        if (this.mRecognitionFragment == null) {
            this.mRecognitionFragment = new RecognitionFragment();
        }
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(this.mFrameLayout.getId(), this.mRecognitionFragment);
        beginTransaction.commit();
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    public void goBack() {
        write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.RecognitionOut()));
        WaitDialogView.show(this, "Wait for emo to exit...");
        currState = State.OUT;
    }

    public void goToActivity(Class cls) {
        if (this.target.equals("")) {
            startActivity(new Intent(this, cls));
        } else {
            startActivity(new Intent(this, MainActivity.class));
        }
        finish();
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    public void initView() {
        super.initView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:ToolPhotoActivity", "emo->app ble json data:" + json);
        ResultResponse objectFromData = ResultResponse.objectFromData(json);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getType().equals(Constants.BLE_RECOGNITION_RSP)) {
            int result = objectFromData.getData().getResult();
            if (currState == State.IN && result == 1) {
                initFragment();
                this.mHandler.removeCallbacks(this.task);
                currState = State.NONE;
            }
            if (currState == State.OUT && result == 1) {
                goToActivity(InteractActivity.class);
                finish();
                currState = State.NONE;
            }
            if (result == 10) {
                goToActivity(InteractActivity.class);
                finish();
                currState = State.NONE;
            }
            WaitDialogView.dismiss();
        }
    }

    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBus.getDefault().unregister(this);
        WaitDialogView.dismiss();
        super.onDestroy();
    }
}
