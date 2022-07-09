package com.living.emo.activity;

import android.app.ProgressDialog;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.DrumActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.DrumGameBean;
import com.living.emo.event.MessageEvent;
import com.living.emo.util.CommandUtil;
import com.living.emo.util.IntUtil;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Random;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class DrumActivity extends BaseActivity {
    private static final int HANDLE_TIME_OUT = 10000;
    private ImageView mBack;
    private BleDevice mBleDevice;
    private ProgressDialog mDialog;
    private Handler mHandler;
    private WebView mWebView;
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.DrumActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (DrumActivity.this.mDialog != null) {
                DrumActivity.this.mDialog.dismiss();
            }
            DrumActivity drumActivity = DrumActivity.this;
            drumActivity.showToast(drumActivity.getResources().getString(R.string.emo_is_not_ready));
            DrumActivity.this.exitActivity();
        }
    };
    private static final String TAG = "zxl::" + DrumActivity.class.getSimpleName();
    private static String[] PERMISSIONS_STORAGE = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"};

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_drum);
        EventBus.getDefault().register(this);
        initViews();
        initWebView();
        initEvents();
        checkPermissions();
        BleDevice bleDevice = BleBean.getInstance().getBleDevice();
        this.mBleDevice = bleDevice;
        write(bleDevice, CommandUtil.enterApp(CommandUtil.CMD_ORDER_DATA[2]));
        initProgressDialog();
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(this.task, 10000L);
    }

    private void initProgressDialog() {
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.mDialog = progressDialog;
        progressDialog.setMessage(getString(R.string.waiting));
        this.mDialog.setCancelable(false);
        this.mDialog.show();
    }

    private void initEvents() {
        this.mBack.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$DrumActivity$YSJ95b-GpdoFqSaVSh5WHNLw-Zw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DrumActivity.this.lambda$initEvents$0$DrumActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvents$0$DrumActivity(View view) {
        this.mBack.setEnabled(false);
        exitActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitActivity() {
        finish();
        if (this.mWebView != null) {
            runOnUiThread(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$DrumActivity$D3br4tur3thoDsB1kZ14vrLVqWM
                @Override // java.lang.Runnable
                public final void run() {
                    DrumActivity.this.lambda$exitActivity$1$DrumActivity();
                }
            });
        }
    }

    public /* synthetic */ void lambda$exitActivity$1$DrumActivity() {
        this.mWebView.destroy();
        this.mWebView = null;
    }

    private void checkPermissions() {
        int checkSelfPermission = ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE");
        int checkSelfPermission2 = ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE");
        int checkSelfPermission3 = ContextCompat.checkSelfPermission(this, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        if (checkSelfPermission2 != 0) {
            ActivityCompat.requestPermissions(this, PERMISSIONS_STORAGE, 2);
        }
        if (checkSelfPermission != 0) {
            ActivityCompat.requestPermissions(this, PERMISSIONS_STORAGE, 2);
        }
        if (checkSelfPermission3 != 0) {
            ActivityCompat.requestPermissions(this, PERMISSIONS_STORAGE, 2);
        }
    }

    private void initWebView() {
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        try {
            Method method = this.mWebView.getSettings().getClass().getMethod("setAllowUniversalAccessFromFileURLs", Boolean.TYPE);
            if (method != null) {
                method.invoke(this.mWebView.getSettings(), true);
            }
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
        }
        addJavascriptInterface();
        WebSettings settings = this.mWebView.getSettings();
        settings.setDomStorageEnabled(true);
        settings.setCacheMode(-1);
        settings.setAppCachePath(getCacheDir().getAbsolutePath());
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAppCacheEnabled(true);
        this.mWebView.setWebChromeClient(new WebChromeClient());
        this.mWebView.setWebViewClient(new WebViewClient());
        this.mWebView.loadUrl("file:///android_asset/dist/chose.html");
    }

    private void addJavascriptInterface() {
        this.mWebView.addJavascriptInterface(new TellNative(), "TellNative");
    }

    private void initViews() {
        this.mWebView = (WebView) findViewById(R.id.drum_web);
        this.mBack = (ImageView) findViewById(R.id.drum_back);
    }

    /* loaded from: classes.dex */
    public class TellNative {
        public TellNative() {
        }

        @JavascriptInterface
        public void startGame() {
            DrumActivity drumActivity = DrumActivity.this;
            drumActivity.write(drumActivity.mBleDevice, CommandUtil.startGame());
            LogUtil.m65d(DrumActivity.TAG, "startGame:startGame ");
        }

        @JavascriptInterface
        public void gameOver() {
            DrumActivity.this.exitActivity();
            LogUtil.m65d(DrumActivity.TAG, "gameOver:gameOver ");
        }

        @JavascriptInterface
        public void gameResult(int i) {
            int i2;
            LogUtil.m65d("tag", "getresult:" + i);
            Random random = new Random();
            if (i == 0) {
                i2 = DrumActivity.this.getResources().getInteger(new int[]{R.integer.mood_sad, R.integer.mood_wronged, R.integer.mood_autistic, R.integer.mood_upset}[random.nextInt(4)]);
            } else if (i == 1) {
                i2 = DrumActivity.this.getResources().getInteger(new int[]{R.integer.negative_2, R.integer.negative_3}[random.nextInt(2)]);
            } else if (i == 2) {
                i2 = DrumActivity.this.getResources().getInteger(new int[]{R.integer.positive_1, R.integer.positive_2, R.integer.positive_3, R.integer.positive_4, R.integer.positive_5}[random.nextInt(5)]);
            } else if (i != 3) {
                i2 = 0;
            } else {
                i2 = DrumActivity.this.getResources().getInteger(new int[]{R.integer.mood_happy, R.integer.mood_excited}[random.nextInt(2)]);
            }
            String str = DrumActivity.TAG;
            LogUtil.m65d(str, "gameResult: " + i2);
            DrumActivity drumActivity = DrumActivity.this;
            drumActivity.write(drumActivity.mBleDevice, CommandUtil.playAnim(IntUtil.intTOInArray(i2)));
        }

        @JavascriptInterface
        public void gameBehest(int i, int i2) {
            String str = DrumActivity.TAG;
            LogUtil.m65d(str, "cmd:" + i + "   bpm:" + i2);
            switch (i) {
                case 1:
                    DrumActivity drumActivity = DrumActivity.this;
                    drumActivity.write(drumActivity.mBleDevice, CommandUtil.dazzling(1, i2));
                    LogUtil.m64e(DrumActivity.TAG, "execCmd:eyes ");
                    return;
                case 2:
                    DrumActivity drumActivity2 = DrumActivity.this;
                    drumActivity2.write(drumActivity2.mBleDevice, CommandUtil.legShaking(1, i2));
                    LogUtil.m64e(DrumActivity.TAG, "execCmd:leg ");
                    return;
                case 3:
                    DrumActivity drumActivity3 = DrumActivity.this;
                    drumActivity3.write(drumActivity3.mBleDevice, CommandUtil.dance(1, i2));
                    LogUtil.m64e(DrumActivity.TAG, "execCmd:dance ");
                    return;
                case 4:
                    DrumActivity drumActivity4 = DrumActivity.this;
                    drumActivity4.write(drumActivity4.mBleDevice, CommandUtil.stay());
                    LogUtil.m64e(DrumActivity.TAG, "execCmd:stay ");
                    return;
                case 5:
                    int[] intTOInArray = IntUtil.intTOInArray(DrumActivity.this.getResources().getInteger(R.integer.dance_miss));
                    DrumActivity drumActivity5 = DrumActivity.this;
                    drumActivity5.write(drumActivity5.mBleDevice, CommandUtil.playAnim(intTOInArray[0], intTOInArray[1]));
                    LogUtil.m64e(DrumActivity.TAG, "execCmd:miss ");
                    return;
                case 6:
                    DrumActivity drumActivity6 = DrumActivity.this;
                    drumActivity6.write(drumActivity6.mBleDevice, CommandUtil.achiev(CommandUtil.CMD_GAME_NUMBER[1]));
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: com.living.emo.activity.DrumActivity$2 */
    /* loaded from: classes.dex */
    class C14812 implements DrumGameBean.DrumGameResponse {
        @Override // com.living.emo.bean.DrumGameBean.DrumGameResponse
        public void animError() {
        }

        @Override // com.living.emo.bean.DrumGameBean.DrumGameResponse
        public void animSuccess() {
        }

        @Override // com.living.emo.bean.DrumGameBean.DrumGameResponse
        public void dance() {
        }

        @Override // com.living.emo.bean.DrumGameBean.DrumGameResponse
        public void dazzling() {
        }

        @Override // com.living.emo.bean.DrumGameBean.DrumGameResponse
        public void error() {
        }

        @Override // com.living.emo.bean.DrumGameBean.DrumGameResponse
        public void legShaking() {
        }

        @Override // com.living.emo.bean.DrumGameBean.DrumGameResponse
        public void startGame() {
        }

        C14812() {
        }

        @Override // com.living.emo.bean.DrumGameBean.DrumGameResponse
        public void gameReady() {
            DrumActivity.this.mHandler.removeCallbacks(DrumActivity.this.task);
            DrumActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$DrumActivity$2$TZ1TIp-a9IqQ9Ni9ppS15u9l3Jg
                @Override // java.lang.Runnable
                public final void run() {
                    DrumActivity.C14812.this.lambda$gameReady$0$DrumActivity$2();
                }
            }, 1000L);
        }

        public /* synthetic */ void lambda$gameReady$0$DrumActivity$2() {
            if (DrumActivity.this.mDialog != null) {
                DrumActivity.this.mDialog.dismiss();
            }
        }

        @Override // com.living.emo.bean.DrumGameBean.DrumGameResponse
        public void gameOver() {
            if (!DrumActivity.this.isFinishing()) {
                DrumActivity.this.finish();
                if (DrumActivity.this.mWebView != null) {
                    DrumActivity.this.mWebView.destroy();
                    DrumActivity.this.mWebView = null;
                }
            }
            LogUtil.m64e(DrumActivity.TAG, "gameOver:exitActivity ");
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent messageEvent) {
        DrumGameBean.drumNotify(messageEvent.getData(), new C14812());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        write(this.mBleDevice, CommandUtil.outApp());
        if (!isFinishing()) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.destroy();
        }
        if (this.mDialog != null) {
            this.mDialog = null;
        }
        EventBus.getDefault().unregister(this);
    }
}
