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
import android.widget.ImageButton;
import android.widget.ImageView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.LudoGameActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.LudoGameBean;
import com.living.emo.event.MessageEvent;
import com.living.emo.util.AudioUtil;
import com.living.emo.util.CommandUtil;
import com.living.emo.util.IntUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.LudoSoundPoolUtil;
import com.livingai.emopet.R;
import java.util.Random;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class LudoGameActivity extends BaseActivity {
    private static final int HANDLE_TIME_OUT = 10000;
    private AudioUtil mAudio;
    private ImageButton mBack;
    private BleDevice mBleDevice;
    private ProgressDialog mDialog;
    private Handler mHandler;
    private LudoSoundPoolUtil mLudoSoundPool;
    private int mNum;
    private ImageView mPlay;
    private WebView mWebView;
    private static final String TAG = "zxl::" + LudoGameActivity.class.getSimpleName();
    private static final int[] NUMBER_ONE = {R.integer.dice_one_1, R.integer.dice_one_2};
    private static final int[] NUMBER_TWO = {R.integer.dice_two_1, R.integer.dice_two_2};
    private static final int[] NUMBER_THREE = {R.integer.dice_three_1, R.integer.dice_three_2};
    private static final int[] NUMBER_FOUR = {R.integer.dice_four_1, R.integer.dice_four_2};
    private static final int[] NUMBER_FIVE = {R.integer.dice_five_1, R.integer.dice_five_2};
    private static final int[] NUMBER_SIX = {R.integer.dice_six_1, R.integer.dice_six_2};
    private boolean isDice = false;
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.LudoGameActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (LudoGameActivity.this.mDialog != null) {
                LudoGameActivity.this.mDialog.dismiss();
            }
            LudoGameActivity ludoGameActivity = LudoGameActivity.this;
            ludoGameActivity.showToast(ludoGameActivity.getResources().getString(R.string.emo_is_not_ready));
            LudoGameActivity.this.finish();
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ludo_game);
        EventBus.getDefault().register(this);
        this.mLudoSoundPool = LudoSoundPoolUtil.getInstance();
        BleDevice bleDevice = BleBean.getInstance().getBleDevice();
        this.mBleDevice = bleDevice;
        write(bleDevice, CommandUtil.enterApp(1));
        initViews();
        initWebView();
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mAudio.play(this, R.raw.modern_ludo_emo);
        this.mPlay.setBackgroundResource(R.drawable.btn_music_on);
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
        this.mWebView.loadUrl("file:///android_asset/ludo/index.html");
    }

    private void addJavascriptInterface() {
        this.mWebView.addJavascriptInterface(new TellNative(), "TellNative");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TellNative {
        private final String TAG;

        private TellNative() {
            this.TAG = "zxl" + TellNative.class.getSimpleName();
        }

        @JavascriptInterface
        public void tellEMO(String str) {
            LogUtil.m64e("tellEMO", str);
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1624670882:
                    if (str.equals("emowins")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1407259064:
                    if (str.equals("attack")) {
                        c = 1;
                        break;
                    }
                    break;
                case -107232139:
                    if (str.equals("cantmove")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3273774:
                    if (str.equals("jump")) {
                        c = 3;
                        break;
                    }
                    break;
                case 94935104:
                    if (str.equals("cross")) {
                        c = 4;
                        break;
                    }
                    break;
                case 537803051:
                    if (str.equals("rolladice")) {
                        c = 5;
                        break;
                    }
                    break;
                case 538740967:
                    if (str.equals("attacked")) {
                        c = 6;
                        break;
                    }
                    break;
                case 595632625:
                    if (str.equals("sbaccomplished")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1164834711:
                    if (str.equals("emoloses")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 1589023266:
                    if (str.equals("accomplished")) {
                        c = '\t';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    emowins();
                    return;
                case 1:
                    attack();
                    return;
                case 2:
                    cantmove();
                    return;
                case 3:
                    jump();
                    return;
                case 4:
                    cross();
                    return;
                case 5:
                    rolladice();
                    return;
                case 6:
                    attacked();
                    return;
                case 7:
                    sbaccomplished();
                    return;
                case '\b':
                    emoloses();
                    return;
                case '\t':
                    accomplished();
                    return;
                default:
                    return;
            }
        }

        private void sbaccomplished() {
            sendConfig(new int[]{R.integer.negative_1, R.integer.negative_3, R.integer.negative_4});
        }

        private void attacked() {
            sendConfig(new int[]{R.integer.negative_5, R.integer.negative_2});
        }

        private void attack() {
            sendConfig(new int[]{R.integer.positive_3, R.integer.mood_happy});
        }

        private void cross() {
            sendConfig(new int[]{R.integer.positive_2, R.integer.positive_5});
        }

        private void accomplished() {
            sendConfig(new int[]{R.integer.positive_1, R.integer.positive_2, R.integer.positive_3});
        }

        private void jump() {
            sendConfig(new int[]{R.integer.positive_4, R.integer.positive_3});
        }

        private void cantmove() {
            sendConfig(new int[]{R.integer.negative_3, R.integer.negative_4, R.integer.negative_5});
        }

        private void rolladice() {
            int i;
            int floor = (int) Math.floor(Math.random() * 6);
            LudoGameActivity.this.mNum = new int[]{1, 2, 3, 4, 5, 6}[floor];
            switch (LudoGameActivity.this.mNum) {
                case 1:
                    i = LudoGameActivity.NUMBER_ONE[(int) Math.floor(Math.random() * 2.0d)];
                    break;
                case 2:
                    i = LudoGameActivity.NUMBER_TWO[(int) Math.floor(Math.random() * 2.0d)];
                    break;
                case 3:
                    i = LudoGameActivity.NUMBER_THREE[(int) Math.floor(Math.random() * 2.0d)];
                    break;
                case 4:
                    i = LudoGameActivity.NUMBER_FOUR[(int) Math.floor(Math.random() * 2.0d)];
                    break;
                case 5:
                    i = LudoGameActivity.NUMBER_FIVE[(int) Math.floor(Math.random() * 2.0d)];
                    break;
                case 6:
                    i = LudoGameActivity.NUMBER_SIX[(int) Math.floor(Math.random() * 2.0d)];
                    break;
                default:
                    i = 0;
                    break;
            }
            int integer = LudoGameActivity.this.getResources().getInteger(i);
            if (!LudoGameActivity.this.isDice) {
                final int[] intTOInArray = IntUtil.intTOInArray(integer);
                LudoGameActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$LudoGameActivity$TellNative$5Q2lDSb4XIxgvMmHarCeGPv_xWQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        LudoGameActivity.TellNative.this.lambda$rolladice$0$LudoGameActivity$TellNative(intTOInArray);
                    }
                }, 1000L);
                LudoGameActivity.this.isDice = true;
            }
        }

        public /* synthetic */ void lambda$rolladice$0$LudoGameActivity$TellNative(int[] iArr) {
            LudoGameActivity ludoGameActivity = LudoGameActivity.this;
            ludoGameActivity.write(ludoGameActivity.mBleDevice, CommandUtil.playAnim(iArr[0], iArr[1]));
        }

        private void sendConfig(int[] iArr) {
            int integer = LudoGameActivity.this.getResources().getInteger(iArr[new Random().nextInt(iArr.length)]);
            LudoGameActivity ludoGameActivity = LudoGameActivity.this;
            ludoGameActivity.write(ludoGameActivity.mBleDevice, CommandUtil.playAnimNoReply(IntUtil.intTOInArray(integer)));
        }

        private void emoloses() {
            sendConfig(new int[]{R.integer.mood_sad, R.integer.mood_wronged, R.integer.mood_autistic, R.integer.mood_upset});
        }

        private void emowins() {
            LudoGameActivity ludoGameActivity = LudoGameActivity.this;
            ludoGameActivity.write(ludoGameActivity.mBleDevice, CommandUtil.achiev(CommandUtil.CMD_GAME_NUMBER[0]));
            LudoGameActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$LudoGameActivity$TellNative$oL4cU3XYvI2_RCXsMt_dToLphcs
                @Override // java.lang.Runnable
                public final void run() {
                    LudoGameActivity.TellNative.this.lambda$emowins$1$LudoGameActivity$TellNative();
                }
            }, 500L);
        }

        public /* synthetic */ void lambda$emowins$1$LudoGameActivity$TellNative() {
            LudoGameActivity ludoGameActivity = LudoGameActivity.this;
            ludoGameActivity.write(ludoGameActivity.mBleDevice, CommandUtil.playAnim(IntUtil.intTOInArray(LudoGameActivity.this.getResources().getInteger(R.integer.mood_excited))));
        }

        @JavascriptInterface
        public void playSound(String str) {
            if (str != null) {
                LogUtil.m65d(this.TAG, str);
                LudoGameActivity.this.mLudoSoundPool.play(str);
            }
        }

        @JavascriptInterface
        public void startGameCMD() {
            LogUtil.m65d(this.TAG, "startGameCMD");
            LudoGameActivity ludoGameActivity = LudoGameActivity.this;
            ludoGameActivity.write(ludoGameActivity.mBleDevice, CommandUtil.startGame());
        }

        @JavascriptInterface
        public void gameOverCMD() {
            Handler handler = LudoGameActivity.this.mHandler;
            final LudoGameActivity ludoGameActivity = LudoGameActivity.this;
            handler.postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$dgC-YjdrZiJHmO8g7ldxnl5TI7Q
                @Override // java.lang.Runnable
                public final void run() {
                    LudoGameActivity.this.finish();
                }
            }, 1000L);
        }
    }

    /* renamed from: com.living.emo.activity.LudoGameActivity$2 */
    /* loaded from: classes.dex */
    class C14912 implements LudoGameBean.LudoGameResponse {
        C14912() {
        }

        @Override // com.living.emo.bean.LudoGameBean.LudoGameResponse
        public void gameReady() {
            LudoGameActivity.this.mHandler.removeCallbacks(LudoGameActivity.this.task);
            LudoGameActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$LudoGameActivity$2$KLubr-mfvLsMXIIsbhb46o_uGP8
                @Override // java.lang.Runnable
                public final void run() {
                    LudoGameActivity.C14912.this.lambda$gameReady$0$LudoGameActivity$2();
                }
            }, 1000L);
        }

        public /* synthetic */ void lambda$gameReady$0$LudoGameActivity$2() {
            if (LudoGameActivity.this.mDialog != null) {
                LudoGameActivity.this.mDialog.dismiss();
            }
        }

        @Override // com.living.emo.bean.LudoGameBean.LudoGameResponse
        public void animError() {
            LudoGameActivity.this.showToast("emo If you have something to do, you should drive in first！");
            LudoGameActivity.this.finish();
        }

        @Override // com.living.emo.bean.LudoGameBean.LudoGameResponse
        public void animSuccess() {
            if (LudoGameActivity.this.isDice) {
                LogUtil.m64e("animSuccess", "animSuccess: 开始执行回调");
                WebView webView = LudoGameActivity.this.mWebView;
                webView.loadUrl("javascript:listenToEMO('dicenum" + LudoGameActivity.this.mNum + "')");
                LudoGameActivity.this.isDice = false;
            }
        }

        @Override // com.living.emo.bean.LudoGameBean.LudoGameResponse
        public void startGame() {
            LudoGameActivity.this.mWebView.loadUrl("javascript:startGame()");
        }

        @Override // com.living.emo.bean.LudoGameBean.LudoGameResponse
        public void error() {
            LudoGameActivity.this.finish();
        }

        @Override // com.living.emo.bean.LudoGameBean.LudoGameResponse
        public void gameOver() {
            if (!LudoGameActivity.this.isFinishing()) {
                LudoGameActivity.this.finish();
                if (LudoGameActivity.this.mWebView != null) {
                    LudoGameActivity.this.mWebView.destroy();
                    LudoGameActivity.this.mWebView = null;
                }
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent messageEvent) {
        LudoGameBean.ludoNotify(messageEvent.getData(), new C14912());
    }

    private void initViews() {
        WebView webView = (WebView) findViewById(R.id.web_view);
        this.mWebView = webView;
        webView.clearCache(true);
        this.mWebView.clearHistory();
        this.mWebView.clearMatches();
        this.mBack = (ImageButton) findViewById(R.id.btn_back);
        this.mPlay = (ImageView) findViewById(R.id.audio_is_play);
        this.mAudio = AudioUtil.INSTANCE;
        this.mBack.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.LudoGameActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LudoGameActivity.this.mBack.setEnabled(false);
                LogUtil.m64e("onclick:", "this is tuichu");
                if (LudoGameActivity.this.mWebView != null) {
                    LudoGameActivity.this.mWebView.destroy();
                    LudoGameActivity.this.mWebView = null;
                }
                LudoGameActivity.this.finish();
            }
        });
        this.mPlay.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.LudoGameActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!LudoGameActivity.this.mAudio.isPlaying()) {
                    LudoGameActivity.this.mAudio.play(LudoGameActivity.this, R.raw.modern_ludo_emo);
                    LudoGameActivity.this.mPlay.setBackgroundResource(R.drawable.btn_music_on);
                    return;
                }
                LudoGameActivity.this.mAudio.stopPlay();
                LudoGameActivity.this.mPlay.setBackgroundResource(R.drawable.btn_music_off);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        write(this.mBleDevice, CommandUtil.outApp());
        this.mAudio.stopPlay();
        this.mPlay.setBackgroundResource(R.drawable.btn_music_off);
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
