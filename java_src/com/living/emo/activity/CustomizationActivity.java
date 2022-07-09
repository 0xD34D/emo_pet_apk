package com.living.emo.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.provider.MediaStore;
import android.util.Base64;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.clj.fastble.data.BleDevice;
import com.living.emo.MainActivity;
import com.living.emo.MyWebChromeClient;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.ImageBean;
import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.interfaces.OpenFileChooserCallBack;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.CustomTcpServer;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MusicPlayerUtil;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class CustomizationActivity extends BaseActivity implements OpenFileChooserCallBack {
    private static final int HANDLE_TIME_OUT = 6000;
    private static final int REQUEST_CODE_PICK_IMAGE = 4369;
    private ValueCallback<Uri[]> filePathCallback;
    private ImageView mBack;
    private BleDevice mBleDevice;
    private Handler mHandler;
    private ImageView mHomeMusicIv;
    private ImageView mHomeSet;
    private WebSettings mSettings;
    private ImageView mTopTxtIv;
    private ValueCallback<Uri> mUploadMessage;
    private WebView mWebView;
    WifiManager mWifiManager;
    private Uri photoUri;
    private CustomTcpServer mCustomTcpServer = null;
    private boolean isClose = false;
    private State currState = State.NONE;
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.CustomizationActivity.3
        @Override // java.lang.Runnable
        public void run() {
            WaitDialogView.dismiss();
            CustomizationActivity customizationActivity = CustomizationActivity.this;
            customizationActivity.showToast(customizationActivity.getResources().getString(R.string.emo_is_not_ready));
            CustomizationActivity.this.startActivity(new Intent(CustomizationActivity.this, MainActivity.class));
            CustomizationActivity.this.finish();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum State {
        IN,
        OUT,
        SET_EYES,
        CLEAR_EYE,
        NONE
    }

    @Override // com.living.emo.interfaces.OpenFileChooserCallBack
    public void openFileChooserCallBack(ValueCallback<Uri> valueCallback, String str) {
        LogUtil.m64e("Tag", "openFileChooserCallBack");
        this.mUploadMessage = valueCallback;
        showOptions();
    }

    @Override // com.living.emo.interfaces.OpenFileChooserCallBack
    public void openFileChooser5CallBack(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        LogUtil.m64e("Tag", "openFileChooser5CallBack");
        this.filePathCallback = valueCallback;
        showOptions();
    }

    private void showOptions() {
        LogUtil.m64e("TAG", "showOptions: ");
        CustomizationActivityPermissionsDispatcher.photoPermissionCheckWithPermissionCheck(this);
    }

    public void photoPermissionCheck() {
        LogUtil.m64e("zxl", "photoPermissionCheck");
        gotoPhoto();
    }

    public void showDeniedForCamera() {
        LogUtil.m64e("zxl", "showDeniedForCamera");
        new AlertDialog.Builder(this).setTitle(getString(R.string.custom_permission_request)).setMessage(R.string.custom_permission_tips).setPositiveButton(getString(R.string.continues), new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.CustomizationActivity.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                CustomizationActivity.this.startActivityForResult(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", CustomizationActivity.this.getPackageName(), null)), 2);
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.CustomizationActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        }).show();
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_customization);
        BleDevice bleDevice = BleBean.getInstance().getBleDevice();
        this.mBleDevice = bleDevice;
        write(bleDevice, ByteUtil.strToByteArray(BleJsonUtil.customize("in")));
        this.currState = State.IN;
        initView();
        initEvent();
        checkWifiIsOpen();
        EventBus.getDefault().register(this);
        CustomTcpServer customTcpServer = new CustomTcpServer();
        this.mCustomTcpServer = customTcpServer;
        customTcpServer.setServerNotifyMessageListener(new CustomTcpServer.ServerNotifyMessageListener() { // from class: com.living.emo.activity.-$$Lambda$CustomizationActivity$4PC4wgmYnwFOYgCOx-h7I0GC1Tg
            @Override // com.living.emo.util.CustomTcpServer.ServerNotifyMessageListener
            public final void onTimeOut() {
                CustomizationActivity.this.lambda$onCreate$0$CustomizationActivity();
            }
        });
        this.mCustomTcpServer.starServer(9090);
        LogUtil.m64e("TAG", "ip:" + getIp() + ":9090");
        WaitDialogView.show(this, getString(R.string.waiting));
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(this.task, 6000L);
    }

    public /* synthetic */ void lambda$onCreate$0$CustomizationActivity() {
        showToast("Setting failed,please try again");
        WaitDialogView.dismiss();
        this.currState = State.NONE;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m64e("TAG", "onMessageEvent: " + json);
        ResultResponse objectFromData = ResultResponse.objectFromData(json);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getType().equals(Constants.BLE_CUSTOMIZE_REP)) {
            LogUtil.m64e("TAG", "resultResponse.getData().getResult() onMessageEvent: " + objectFromData.getData().getResult());
            switch (objectFromData.getData().getResult()) {
                case 0:
                    int i = C14525.$SwitchMap$com$living$emo$activity$CustomizationActivity$State[this.currState.ordinal()];
                    if (i == 1) {
                        this.currState = State.NONE;
                        return;
                    } else if (i == 2) {
                        startActivity(new Intent(this, MainActivity.class));
                        finish();
                        this.currState = State.NONE;
                        return;
                    } else if (i == 3 || i == 4) {
                        showToast(getString(R.string.custom_setting_failed));
                        WaitDialogView.dismiss();
                        this.currState = State.NONE;
                        return;
                    } else {
                        return;
                    }
                case 1:
                    int i2 = C14525.$SwitchMap$com$living$emo$activity$CustomizationActivity$State[this.currState.ordinal()];
                    if (i2 == 1) {
                        this.mHandler.removeCallbacks(this.task);
                        this.mHandler.postDelayed($$Lambda$2j3CHImIe3MI5fFgY9dgdXpJv_8.INSTANCE, 1000L);
                        this.currState = State.NONE;
                        return;
                    } else if (i2 == 2) {
                        startActivity(new Intent(this, MainActivity.class));
                        finish();
                        this.currState = State.NONE;
                        WaitDialogView.dismiss();
                        return;
                    } else if (i2 == 3 || i2 == 4) {
                        LogUtil.m64e("TAG", "onMessageEvent:  eyes set");
                        showToast(getString(R.string.custom_Setting_Succeeded));
                        WaitDialogView.dismiss();
                        this.currState = State.NONE;
                        return;
                    } else {
                        return;
                    }
                case 2:
                    showToast(getString(R.string.custom_connect_failed_server));
                    WaitDialogView.dismiss();
                    this.currState = State.NONE;
                    return;
                case 3:
                    WaitDialogView.dismiss();
                    showToast(getString(R.string.custom_failed_receive_stickers));
                    this.currState = State.NONE;
                    return;
                case 4:
                    WaitDialogView.dismiss();
                    showToast(getString(R.string.custom_failed_connect_wifi));
                    this.currState = State.NONE;
                    return;
                case 5:
                    WaitDialogView.dismiss();
                    showToast(getString(R.string.custom_set_empty));
                    this.currState = State.NONE;
                    return;
                case 6:
                case 7:
                default:
                    return;
                case 8:
                    WaitDialogView.dismiss();
                    showToast(getString(R.string.custom_failed_eye_color));
                    this.currState = State.NONE;
                    return;
                case 9:
                    WaitDialogView.dismiss();
                    showToast(getString(R.string.custom_failed_set_stcikers));
                    this.currState = State.NONE;
                    return;
                case 10:
                    this.isClose = true;
                    CustomTcpServer customTcpServer = this.mCustomTcpServer;
                    if (customTcpServer != null) {
                        customTcpServer.stopServer();
                    }
                    showToast(getString(R.string.custom_interruped));
                    WaitDialogView.dismiss();
                    this.currState = State.NONE;
                    startActivity(new Intent(this, MainActivity.class));
                    finish();
                    return;
            }
        }
    }

    /* renamed from: com.living.emo.activity.CustomizationActivity$5 */
    /* loaded from: classes.dex */
    static /* synthetic */ class C14525 {
        static final /* synthetic */ int[] $SwitchMap$com$living$emo$activity$CustomizationActivity$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$living$emo$activity$CustomizationActivity$State = iArr;
            try {
                iArr[State.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$living$emo$activity$CustomizationActivity$State[State.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$living$emo$activity$CustomizationActivity$State[State.CLEAR_EYE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$living$emo$activity$CustomizationActivity$State[State.SET_EYES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        MusicPlayerUtil instance = MusicPlayerUtil.getInstance(this);
        int userIsPause = instance.getUserIsPause();
        if (userIsPause == 2) {
            instance.userPause();
        } else if (userIsPause == 1) {
            instance.userPlay();
        } else if (!instance.isPlaying()) {
            instance.play();
        }
        instance.backgroundImage(this.mHomeMusicIv);
    }

    private void initOther() {
        MusicPlayerUtil instance = MusicPlayerUtil.getInstance(this);
        final TextView textView = (TextView) findViewById(R.id.home_music_text_tv);
        textView.setText(MusicPlayerUtil.getInstance(this).getName());
        instance.setOnChangeMusicName(new MusicPlayerUtil.OnChangeMusicName() { // from class: com.living.emo.activity.CustomizationActivity.4
            @Override // com.living.emo.util.MusicPlayerUtil.OnChangeMusicName
            public void onChangeMusicName(String str) {
                textView.setText(str);
            }
        });
        instance.init();
        instance.backgroundImage(this.mHomeMusicIv);
        playBackgroundMusicEvent(this.mHomeMusicIv);
    }

    private void initEvent() {
        this.mBack.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$CustomizationActivity$bGBUkHO7vrQ3EEQcZ_ry4IfZ3AY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CustomizationActivity.this.lambda$initEvent$1$CustomizationActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$1$CustomizationActivity(View view) {
        if (!this.isClose) {
            WaitDialogView.show(this, "processing");
            this.currState = State.OUT;
            this.isClose = true;
            write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.customize("out")));
            this.mCustomTcpServer.stopServer();
            this.mCustomTcpServer = null;
        }
    }

    private void gotoPhoto() {
        Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.addFlags(2);
        intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
        startActivityForResult(intent, REQUEST_CODE_PICK_IMAGE);
    }

    private boolean checkWifiIsOpen() {
        WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
        this.mWifiManager = wifiManager;
        return wifiManager.isWifiEnabled();
    }

    private void initView() {
        ImageView imageView = (ImageView) findViewById(R.id.top_txt_iv);
        this.mTopTxtIv = imageView;
        imageView.setBackgroundResource(R.drawable.txt_customization);
        this.mWebView = (WebView) findViewById(R.id.webview);
        this.mHomeMusicIv = (ImageView) findViewById(R.id.home_music_iv);
        ImageView imageView2 = (ImageView) findViewById(R.id.home_set_iv);
        this.mHomeSet = imageView2;
        imageView2.setVisibility(8);
        this.mBack = (ImageView) findViewById(R.id.home_back_iv);
        this.mWebView.clearCache(true);
        this.mWebView.clearHistory();
        this.mWebView.clearMatches();
        this.mSettings = this.mWebView.getSettings();
        addJavascriptInterface();
        this.mSettings.setDomStorageEnabled(true);
        this.mSettings.setCacheMode(-1);
        String absolutePath = getCacheDir().getAbsolutePath();
        this.mSettings.setAllowUniversalAccessFromFileURLs(true);
        this.mSettings.setAppCachePath(absolutePath);
        this.mSettings.setJavaScriptEnabled(true);
        this.mSettings.setAppCacheEnabled(true);
        this.mWebView.setWebViewClient(new WebViewClient());
        this.mWebView.setWebChromeClient(new MyWebChromeClient(this));
        this.mWebView.loadUrl("file:///android_asset/custom/index.html");
        initOther();
    }

    private void addJavascriptInterface() {
        this.mWebView.addJavascriptInterface(new TellNative(), "TellNative");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        CustomizationActivityPermissionsDispatcher.onRequestPermissionsResult(this, i, iArr);
    }

    /* loaded from: classes.dex */
    public class TellNative {
        private TellNative() {
            CustomizationActivity.this = r1;
        }

        @JavascriptInterface
        public void generatedImage(String str, int i, String str2) {
            if (CustomizationActivity.this.currState == State.NONE) {
                CustomizationActivity.this.currState = State.SET_EYES;
                WaitDialogView.show(CustomizationActivity.this, "processing");
                String[] split = str.split(",");
                LogUtil.m64e("TAG", "dsf:" + Arrays.toString(split));
                byte[] decode = Base64.decode(split[1], 0);
                LogUtil.m64e("TAG", Arrays.toString(decode));
                ImageBean.getInstance().setName("sticker.png");
                ImageBean.getInstance().setImageRaw(decode);
                LogUtil.m64e("TAG", "bs4:" + decode.length);
                LogUtil.m64e("TAG", "dddd:" + decode.length);
                LogUtil.m64e("TAG", "web data:" + i + ",color:" + str2);
                String customize = BleJsonUtil.customize(CustomizationActivity.this.hex2RGB("#4b00ff"), i, CustomizationActivity.this.getIp(), 9090, "sticker.png", decode.length);
                CustomizationActivity customizationActivity = CustomizationActivity.this;
                customizationActivity.write(customizationActivity.mBleDevice, ByteUtil.strToByteArray(customize));
            }
        }

        @JavascriptInterface
        public void resetImage() {
            if (CustomizationActivity.this.currState == State.NONE) {
                CustomizationActivity.this.currState = State.CLEAR_EYE;
                WaitDialogView.show(CustomizationActivity.this, "processing");
                CustomizationActivity customizationActivity = CustomizationActivity.this;
                customizationActivity.write(customizationActivity.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.customize("clear_eye")));
            }
        }
    }

    public List<Integer> hex2RGB(String str) {
        if (str == null || "".equals(str) || str.length() != 7) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(str.substring(1, 3), 16));
        arrayList.add(Integer.valueOf(str.substring(3, 5), 16));
        arrayList.add(Integer.valueOf(str.substring(5, 7), 16));
        return arrayList;
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        if (!this.isClose) {
            LogUtil.m64e("TAG", "onDestroy: out");
            write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.customize("out")));
        }
        CustomTcpServer customTcpServer = this.mCustomTcpServer;
        if (customTcpServer != null) {
            customTcpServer.stopServer();
        }
        WaitDialogView.dismiss();
    }

    public String getIp() {
        WifiInfo connectionInfo = this.mWifiManager.getConnectionInfo();
        LogUtil.m65d("TAG", "getIp: " + connectionInfo.toString());
        int ipAddress = connectionInfo.getIpAddress();
        LogUtil.m65d("TAG", "getIp: ipAddress" + ipAddress);
        String intToIp = intToIp(ipAddress);
        LogUtil.m65d("TAG", "getIp: " + intToIp);
        return intToIp;
    }

    private String intToIp(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri uri;
        super.onActivityResult(i, i2, intent);
        LogUtil.m64e("TAG", "onActivityResult: requestCode:" + i + "resultCode:" + i2);
        if (i == 2) {
            LogUtil.m64e("TAG", "onActivityResult: requestCode:" + i);
            gotoPhoto();
        }
        if (i == REQUEST_CODE_PICK_IMAGE) {
            ValueCallback<Uri> valueCallback = this.mUploadMessage;
            if (valueCallback != null || this.filePathCallback != null) {
                if (i2 == 0) {
                    if (valueCallback != null) {
                        valueCallback.onReceiveValue(null);
                        this.mUploadMessage = null;
                    }
                    ValueCallback<Uri[]> valueCallback2 = this.filePathCallback;
                    if (valueCallback2 != null) {
                        valueCallback2.onReceiveValue(null);
                        this.filePathCallback = null;
                    }
                } else if (i2 == -1) {
                    Uri data = (intent == null || intent.getData() == null) ? null : intent.getData();
                    LogUtil.m64e("TAG", "onActivityResult: result" + data);
                    if (data == null && (uri = this.photoUri) != null) {
                        data = uri;
                    }
                    Uri[] uriArr = {data};
                    ValueCallback<Uri> valueCallback3 = this.mUploadMessage;
                    if (valueCallback3 != null) {
                        valueCallback3.onReceiveValue(data);
                        this.mUploadMessage = null;
                    }
                    ValueCallback<Uri[]> valueCallback4 = this.filePathCallback;
                    if (valueCallback4 != null) {
                        valueCallback4.onReceiveValue(uriArr);
                        this.mUploadMessage = null;
                    }
                }
            }
        }
    }
}
