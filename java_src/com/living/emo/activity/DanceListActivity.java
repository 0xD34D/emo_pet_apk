package com.living.emo.activity;

import android.content.Intent;
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
import android.widget.TextView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.MainActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.parse.BleDanceListResponseParse;
import com.living.emo.blebean.parse.BleResultNumParse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MusicPlayerUtil;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class DanceListActivity extends BaseActivity {
    private ImageView mBack;
    private BleDevice mBleDevice;
    private String[] mDanceArray;
    private Handler mHandler;
    private ImageView mHomeMusicIv;
    private ImageView mHomeSet;
    private ImageView mTopTxtIv;
    private WebView mWebView;
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.DanceListActivity.2
        @Override // java.lang.Runnable
        public void run() {
            DanceListActivity.this.showToast("Failed to sync data");
            DanceListActivity.this.goToMain();
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_dance_list);
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        EventBus.getDefault().register(this);
        initView();
        initWebView();
        initEvent();
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

    private void initEvent() {
        this.mBack.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$DanceListActivity$8Kurz9veItyVm8SHNosKxd0zFWk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DanceListActivity.this.lambda$initEvent$0$DanceListActivity(view);
            }
        });
        playBackgroundMusicEvent(this.mHomeMusicIv);
    }

    public /* synthetic */ void lambda$initEvent$0$DanceListActivity(View view) {
        startActivity(new Intent(this, LifeTimeActivity.class));
        finish();
    }

    private void initView() {
        this.mWebView = (WebView) findViewById(R.id.ld_webview);
        ImageView imageView = (ImageView) findViewById(R.id.top_txt_iv);
        this.mTopTxtIv = imageView;
        imageView.setBackgroundResource(R.drawable.ld_txt_dancelist);
        this.mHomeMusicIv = (ImageView) findViewById(R.id.home_music_iv);
        ImageView imageView2 = (ImageView) findViewById(R.id.home_set_iv);
        this.mHomeSet = imageView2;
        imageView2.setVisibility(8);
        this.mBack = (ImageView) findViewById(R.id.ld_back_iv);
        MusicPlayerUtil instance = MusicPlayerUtil.getInstance(this);
        final TextView textView = (TextView) findViewById(R.id.home_music_text_tv);
        textView.setText(MusicPlayerUtil.getInstance(this).getName());
        instance.setOnChangeMusicName(new MusicPlayerUtil.OnChangeMusicName() { // from class: com.living.emo.activity.DanceListActivity.1
            @Override // com.living.emo.util.MusicPlayerUtil.OnChangeMusicName
            public void onChangeMusicName(String str) {
                textView.setText(str);
            }
        });
        instance.init();
        instance.backgroundImage(this.mHomeMusicIv);
    }

    private void initWebView() {
        this.mDanceArray = getResources().getStringArray(R.array.dances_list);
        this.mWebView.clearCache(true);
        this.mWebView.clearHistory();
        this.mWebView.clearMatches();
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
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
        this.mWebView.loadUrl("file:///android_asset/danceList/index.html");
        WaitDialogView.show(this, "Syncing Dances list from EMO...");
        write(this.mBleDevice, BleRequestUtil.danceList());
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(this.task, 5000L);
    }

    private void addJavascriptInterface() {
        this.mWebView.addJavascriptInterface(new TellNative(), "TellNative");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TellNative {
        private TellNative() {
        }

        @JavascriptInterface
        public void play(int i) {
            LogUtil.m65d("hello", "play: " + DanceListActivity.this.mDanceArray[i]);
            try {
                String str = DanceListActivity.this.mDanceArray[i];
                DanceListActivity danceListActivity = DanceListActivity.this;
                danceListActivity.write(danceListActivity.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.animRequest("play", str)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @JavascriptInterface
        public void stop(int i) {
            LogUtil.m65d("hello", "stop: " + DanceListActivity.this.mDanceArray[i]);
            try {
                String str = DanceListActivity.this.mDanceArray[i];
                DanceListActivity danceListActivity = DanceListActivity.this;
                danceListActivity.write(danceListActivity.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.animRequest("stop", str)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @JavascriptInterface
        public void later() {
            DanceListActivity danceListActivity = DanceListActivity.this;
            danceListActivity.showToast(danceListActivity.getString(R.string.many_operations));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        WaitDialogView.dismiss();
        this.mHandler.removeCallbacks(this.task);
        EventBus.getDefault().unregister(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToMain() {
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onJsonEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m65d("hello", "onJsonEvent: " + json);
        BleDanceListResponseParse.danceLists(json, new BleDanceListResponseParse.Callback() { // from class: com.living.emo.activity.DanceListActivity.3
            @Override // com.living.emo.blebean.parse.BleDanceListResponseParse.Callback
            public void response(int i) {
                DanceListActivity.this.mHandler.removeCallbacks(DanceListActivity.this.task);
                WaitDialogView.dismiss();
                if (i <= 0) {
                    DanceListActivity.this.showToast("Failed to sync data");
                    DanceListActivity.this.goToMain();
                }
                WebView webView = DanceListActivity.this.mWebView;
                webView.loadUrl("javascript:unlocked('" + i + "')");
            }
        });
        BleResultNumParse.animRequest(json, new BleResultNumParse.Callback() { // from class: com.living.emo.activity.DanceListActivity.4
            @Override // com.living.emo.blebean.parse.BleResultNumParse.Callback
            public void result(int i) {
                LogUtil.m65d("hello", "result: " + i);
                if (i == 2) {
                    DanceListActivity.this.mWebView.loadUrl("javascript:complete()");
                } else if (i == 10) {
                    DanceListActivity.this.goToMain();
                }
            }
        });
    }
}
