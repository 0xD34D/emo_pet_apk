package com.living.emo.activity;

import android.app.ProgressDialog;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.MemoryActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.MemoryBean;
import com.living.emo.bean.MemoryMusicBean;
import com.living.emo.event.MessageEvent;
import com.living.emo.presenter.PlayMusicPresenters;
import com.living.emo.util.CommandUtil;
import com.living.emo.util.IntUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.SoundUtil;
import com.livingai.emopet.R;
import java.util.Arrays;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class MemoryActivity extends BaseActivity {
    private static final int HANDLE_TIME_OUT = 6000;
    private PlayMusicPresenters mAudio;
    private BleDevice mBleDevice;
    private ProgressDialog mDialog;
    private String mFinalStr;
    private SoundUtil mSound;
    private WebView mWebView;
    private static final String TAG = "zxl::" + MemoryActivity.class.getSimpleName();
    private static int[] MEMORY_BAD = {R.integer.negative_1, R.integer.negative_2, R.integer.negative_3, R.integer.negative_4, R.integer.negative_5};
    private static int[] MEMORY_GOOD_AND_GREAT = {R.integer.positive_1, R.integer.positive_1, R.integer.positive_3, R.integer.positive_4};
    private static int[] MEMORY_PERFECT = {R.integer.positive_5};
    private Handler mHandler = new Handler();
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.MemoryActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (MemoryActivity.this.mDialog != null) {
                MemoryActivity.this.mDialog.dismiss();
            }
            MemoryActivity memoryActivity = MemoryActivity.this;
            memoryActivity.showToast(memoryActivity.getResources().getString(R.string.emo_is_not_ready));
            MemoryActivity.this.finish();
        }
    };
    private boolean isGenAction = true;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m64e(TAG, "onCreate: oncreate");
        setContentView(R.layout.activity_memory);
        initBle();
        initViews();
        initWebView();
        initProgressDialog();
        this.mHandler.postDelayed(this.task, 6000L);
        initData();
    }

    private void initData() {
        this.mSound = SoundUtil.getInstance();
        this.mAudio = new PlayMusicPresenters(this);
    }

    private void initBle() {
        EventBus.getDefault().register(this);
        BleDevice bleDevice = BleBean.getInstance().getBleDevice();
        this.mBleDevice = bleDevice;
        write(bleDevice, CommandUtil.enterApp(CommandUtil.CMD_ORDER_DATA[6]));
    }

    private void initProgressDialog() {
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.mDialog = progressDialog;
        progressDialog.setMessage(getString(R.string.waiting));
        this.mDialog.setCancelable(false);
        this.mDialog.show();
    }

    private void initViews() {
        WebView webView = (WebView) findViewById(R.id.memory_webView);
        this.mWebView = webView;
        webView.clearCache(true);
        this.mWebView.clearHistory();
        this.mWebView.clearMatches();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!this.mAudio.isPlaying()) {
            this.mAudio.play();
        }
        this.mBleDevice = BleBean.getInstance().getBleDevice();
    }

    private void initWebView() {
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        WebSettings settings = this.mWebView.getSettings();
        addJavascriptInterface();
        settings.setDomStorageEnabled(true);
        settings.setCacheMode(-1);
        settings.setAppCachePath(getCacheDir().getAbsolutePath());
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAppCacheEnabled(true);
        this.mWebView.setWebChromeClient(new WebChromeClient());
        this.mWebView.setWebViewClient(new WebViewClient());
        this.mWebView.loadUrl("file:///android_asset/action/index.html");
    }

    private void addJavascriptInterface() {
        this.mWebView.addJavascriptInterface(new TellNative(), "TellNative");
    }

    /* renamed from: com.living.emo.activity.MemoryActivity$2 */
    /* loaded from: classes.dex */
    class C14952 implements MemoryBean.MemoryResponse {
        @Override // com.living.emo.bean.MemoryBean.MemoryResponse
        public void danceError() {
        }

        @Override // com.living.emo.bean.MemoryBean.MemoryResponse
        public void error() {
        }

        C14952() {
        }

        @Override // com.living.emo.bean.MemoryBean.MemoryResponse
        public void gameReady() {
            MemoryActivity.this.mHandler.removeCallbacks(MemoryActivity.this.task);
            MemoryActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$MemoryActivity$2$kyANJIXVDcPMh-A6G0KU55uD5RM
                @Override // java.lang.Runnable
                public final void run() {
                    MemoryActivity.C14952.this.lambda$gameReady$0$MemoryActivity$2();
                }
            }, 1000L);
        }

        public /* synthetic */ void lambda$gameReady$0$MemoryActivity$2() {
            if (MemoryActivity.this.mDialog != null) {
                MemoryActivity.this.mDialog.dismiss();
            }
            MemoryActivity.this.mAudio.setLoop(true).setVol(0.4f).setResources(new MemoryMusicBean("musics/emo_dance_beat_song.mp3"));
            MemoryActivity.this.mAudio.play();
        }

        @Override // com.living.emo.bean.MemoryBean.MemoryResponse
        public void dance() {
            if (MemoryActivity.this.isGenAction) {
                MemoryActivity.this.mWebView.loadUrl("javascript:nowRepeat()");
                MemoryActivity.this.isGenAction = false;
            }
            MemoryActivity.this.mAudio.setVol(0.4f);
        }

        @Override // com.living.emo.bean.MemoryBean.MemoryResponse
        public void startGame() {
            LogUtil.m64e(MemoryActivity.TAG, "startGame: 11111111111111");
            MemoryActivity.this.mWebView.loadUrl("javascript:startGame()");
        }

        @Override // com.living.emo.bean.MemoryBean.MemoryResponse
        public void gameOver() {
            if (!MemoryActivity.this.isFinishing()) {
                MemoryActivity.this.finish();
                if (MemoryActivity.this.mWebView != null) {
                    MemoryActivity.this.mWebView.destroy();
                    MemoryActivity.this.mWebView = null;
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent messageEvent) {
        MemoryBean.MemoryNotify(messageEvent.getData(), new C14952());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TellNative {
        private int currRound;
        public int[] currSeeds;
        private int[] mRes;
        private int[] roundBox;

        private TellNative() {
            this.roundBox = new int[]{6, 8, 10};
            this.currRound = 0;
            this.currSeeds = null;
        }

        @JavascriptInterface
        public void generateAction() {
            MemoryActivity.this.isGenAction = true;
            MemoryActivity.this.mAudio.setVol(0.8f);
            int i = this.roundBox[this.currRound];
            int[] iArr = new int[i];
            for (int i2 = 0; i2 < i; i2++) {
                iArr[i2] = (int) Math.floor((Math.random() * 4.0d) + 1.0d);
            }
            this.currSeeds = iArr;
            LogUtil.m64e(MemoryActivity.TAG, Arrays.toString(this.currSeeds));
            MemoryActivity memoryActivity = MemoryActivity.this;
            memoryActivity.write(memoryActivity.mBleDevice, CommandUtil.memoryDance(this.currSeeds));
            this.currRound++;
        }

        @JavascriptInterface
        public void checkUserAction(int[] iArr) {
            MemoryActivity.this.mAudio.setVol(0.8f);
            MemoryActivity memoryActivity = MemoryActivity.this;
            memoryActivity.write(memoryActivity.mBleDevice, CommandUtil.memoryDance(this.currSeeds));
            this.mRes = new int[this.currSeeds.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                int[] iArr2 = this.currSeeds;
                int i3 = 1;
                if (i2 >= iArr2.length) {
                    break;
                }
                int[] iArr3 = this.mRes;
                if (iArr2[i2] != iArr[i2]) {
                    i3 = 0;
                }
                iArr3[i2] = i3;
                i2++;
            }
            String str = "";
            while (true) {
                int[] iArr4 = this.mRes;
                if (i < iArr4.length) {
                    if (iArr4.length - 1 == i) {
                        str = str + this.mRes[i];
                    } else {
                        str = str + this.mRes[i] + "_";
                    }
                    i++;
                } else {
                    MemoryActivity.this.mFinalStr = str;
                    MemoryActivity.this.runOnUiThread(new Runnable() { // from class: com.living.emo.activity.MemoryActivity.TellNative.1
                        @Override // java.lang.Runnable
                        public void run() {
                            WebView webView = MemoryActivity.this.mWebView;
                            webView.loadUrl("javascript:checkUserAction('" + MemoryActivity.this.mFinalStr + "')");
                        }
                    });
                    return;
                }
            }
        }

        @JavascriptInterface
        public void playNow() {
            MemoryActivity memoryActivity = MemoryActivity.this;
            memoryActivity.write(memoryActivity.mBleDevice, CommandUtil.startGame());
            LogUtil.m65d(MemoryActivity.TAG, ": play now game");
        }

        @JavascriptInterface
        public void mood(int i) {
            int integer = MemoryActivity.this.getResources().getInteger(R.integer.mood_wronged);
            if (i == 0) {
                integer = MemoryActivity.this.getResources().getInteger(R.integer.mood_wronged);
            } else if (i == 1) {
                integer = MemoryActivity.this.getResources().getInteger(R.integer.mood_sad);
            } else if (i == 2) {
                integer = MemoryActivity.this.getResources().getInteger(R.integer.mood_happy);
            } else if (i == 3) {
                integer = MemoryActivity.this.getResources().getInteger(R.integer.mood_excited);
            }
            if (i == 3) {
                MemoryActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$MemoryActivity$TellNative$O7cpJLAoSlffvhS-WJCS2zFto_0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MemoryActivity.TellNative.this.lambda$mood$0$MemoryActivity$TellNative();
                    }
                }, 300L);
            }
            int[] intTOInArray = IntUtil.intTOInArray(integer);
            String str = MemoryActivity.TAG;
            LogUtil.m64e(str, "mood: ==>" + Arrays.toString(intTOInArray));
            MemoryActivity memoryActivity = MemoryActivity.this;
            memoryActivity.write(memoryActivity.mBleDevice, CommandUtil.playAnim(intTOInArray[0], intTOInArray[1]));
        }

        public /* synthetic */ void lambda$mood$0$MemoryActivity$TellNative() {
            MemoryActivity memoryActivity = MemoryActivity.this;
            memoryActivity.write(memoryActivity.mBleDevice, CommandUtil.achiev(CommandUtil.CMD_GAME_NUMBER[5]));
        }

        @JavascriptInterface
        public void expression(String str) {
            LogUtil.m64e(MemoryActivity.TAG, "express" + str);
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -678838259:
                    if (str.equals("perfect")) {
                        c = 0;
                        break;
                    }
                    break;
                case 97285:
                    if (str.equals("bad")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3178685:
                    if (str.equals("good")) {
                        c = 2;
                        break;
                    }
                    break;
                case 98619021:
                    if (str.equals("great")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    int[] intTOInArray = IntUtil.intTOInArray(MemoryActivity.this.getResources().getInteger(MemoryActivity.MEMORY_PERFECT[0]));
                    LogUtil.m64e(MemoryActivity.TAG, "perfect: " + Arrays.toString(intTOInArray));
                    MemoryActivity memoryActivity = MemoryActivity.this;
                    memoryActivity.write(memoryActivity.mBleDevice, CommandUtil.playAnim(intTOInArray[0], intTOInArray[1]));
                    return;
                case 1:
                    int[] intTOInArray2 = IntUtil.intTOInArray(MemoryActivity.this.getResources().getInteger(MemoryActivity.MEMORY_BAD[(int) Math.floor(Math.random() * 5.0d)]));
                    LogUtil.m64e(MemoryActivity.TAG, "bad: " + Arrays.toString(intTOInArray2));
                    MemoryActivity memoryActivity2 = MemoryActivity.this;
                    memoryActivity2.write(memoryActivity2.mBleDevice, CommandUtil.playAnim(intTOInArray2[0], intTOInArray2[1]));
                    return;
                case 2:
                case 3:
                    int[] intTOInArray3 = IntUtil.intTOInArray(MemoryActivity.this.getResources().getInteger(MemoryActivity.MEMORY_GOOD_AND_GREAT[(int) Math.floor(Math.random() * 4.0d)]));
                    LogUtil.m64e(MemoryActivity.TAG, "good: " + Arrays.toString(intTOInArray3));
                    MemoryActivity memoryActivity3 = MemoryActivity.this;
                    memoryActivity3.write(memoryActivity3.mBleDevice, CommandUtil.playAnim(intTOInArray3[0], intTOInArray3[1]));
                    return;
                default:
                    return;
            }
        }

        @JavascriptInterface
        public void gameOver() {
            MemoryActivity.this.finish();
            MemoryActivity.this.runOnUiThread(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$MemoryActivity$TellNative$JmS__s_srNJJwLrcO2SFp5BmUUs
                @Override // java.lang.Runnable
                public final void run() {
                    MemoryActivity.TellNative.this.lambda$gameOver$1$MemoryActivity$TellNative();
                }
            });
        }

        public /* synthetic */ void lambda$gameOver$1$MemoryActivity$TellNative() {
            if (MemoryActivity.this.mWebView != null) {
                MemoryActivity.this.mWebView.destroy();
                MemoryActivity.this.mWebView = null;
            }
        }

        @JavascriptInterface
        public void soundPool(String str) {
            MemoryActivity.this.mSound.play(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        write(this.mBleDevice, CommandUtil.outApp());
        if (this.mAudio.isPlaying()) {
            this.mAudio.pause();
        }
        if (!isFinishing()) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.mAudio.isPlaying()) {
            this.mAudio.pause();
            this.mAudio.release();
        }
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
