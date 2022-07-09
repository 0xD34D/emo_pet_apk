package com.living.emo.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import androidx.core.app.ActivityCompat;
import com.clj.fastble.data.BleDevice;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.TextBean;
import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class ToolPhotoActivity extends AbstractBaseActivity {
    private static final int HANDLE_TIME_OUT = 6000;
    private static String[] PERMISSIONS_STORAGE = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    private static final int REQUEST_EXTERNAL_STORAGE = 1;
    private BleDevice mBleDevice;
    private Handler mHandler;
    private boolean isend = false;
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.ToolPhotoActivity.1
        @Override // java.lang.Runnable
        public void run() {
            WaitDialogView.dismiss();
            ToolPhotoActivity toolPhotoActivity = ToolPhotoActivity.this;
            toolPhotoActivity.showToast(toolPhotoActivity.getResources().getString(R.string.emo_is_not_ready));
            ToolPhotoActivity.this.goToActivity(UtilitiesActivity.class);
        }
    };
    private boolean isOut = false;

    @Override // com.living.emo.activity.AbstractBaseActivity
    protected int setTopBg() {
        return R.drawable.txt_photo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        this.mRadio.clear();
        this.mRadio.put("info", Integer.valueOf((int) R.drawable.selector_btn_info));
        this.mRadio.put("photo", Integer.valueOf((int) R.drawable.selector_btn_photo));
        initFragment(TextBean.getPhotoData());
        BleDevice bleDevice = BleBean.getInstance().getBleDevice();
        this.mBleDevice = bleDevice;
        write(bleDevice, ByteUtil.strToByteArray(BleJsonUtil.Photo("in")));
        WaitDialogView.show(this, getString(R.string.waiting));
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(this.task, 6000L);
    }

    public static void verifyStoragePermissions(Activity activity) {
        try {
            if (ActivityCompat.checkSelfPermission(activity, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                ActivityCompat.requestPermissions(activity, PERMISSIONS_STORAGE, 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.living.emo.activity.AbstractBaseActivity
    public void goBack() {
        write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Photo("out")));
        this.isOut = true;
        WaitDialogView.show(this, "Wait for emo to exit...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToActivity(Class cls) {
        startActivity(new Intent(this, cls));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.AbstractBaseActivity
    public void initView() {
        super.initView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:ToolPhotoActivity", "emo->app ble json data:" + json);
        ResultResponse objectFromData = ResultResponse.objectFromData(json);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getType().equals(Constants.BLE_PHOTO_RSP)) {
            if (objectFromData.getData().getResult() == 1) {
                if (!this.isend) {
                    this.mHandler.removeCallbacks(this.task);
                    WaitDialogView.dismiss();
                    verifyStoragePermissions(this);
                    this.isend = true;
                }
                if (this.isOut) {
                    WaitDialogView.dismiss();
                    goToActivity(UtilitiesActivity.class);
                    finish();
                    this.isOut = false;
                }
            } else if (objectFromData.getData().getResult() == 10) {
                WaitDialogView.dismiss();
                startActivity(new Intent(this, UtilitiesActivity.class));
                finish();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        WaitDialogView.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        EventBus.getDefault().unregister(this);
        if (!isFinishing()) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.AbstractBaseActivity, com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.isend = false;
    }
}
