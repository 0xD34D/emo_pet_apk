package com.living.emo;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.http.SslError;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.clj.fastble.BleManager;
import com.clj.fastble.data.BleDevice;
import com.google.gson.Gson;
import com.hankcs.algorithm.AhoCorasickDoubleArrayTrie;
import com.living.emo.MainActivity;
import com.living.emo.activity.BannerActivity;
import com.living.emo.activity.BaseActivity;
import com.living.emo.activity.ConnectActivity;
import com.living.emo.activity.CustomizationActivity;
import com.living.emo.activity.InteractActivity;
import com.living.emo.activity.LifeTimeActivity;
import com.living.emo.activity.NotificationsActivity;
import com.living.emo.activity.RecognitionActivity;
import com.living.emo.activity.SettingActivity;
import com.living.emo.activity.UtilitiesActivity;
import com.living.emo.adapter.StatusAdapter;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.EmoUpdate;
import com.living.emo.bean.Notice;
import com.living.emo.bean.StatusBean;
import com.living.emo.bean.domain.Version;
import com.living.emo.blebean.config.PersonalityConfig;
import com.living.emo.blebean.parse.BlePersonalityResponseParse;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.parse.BleVersionResponseParse;
import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.blebean.response.VersionResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.event.MessageEvent;
import com.living.emo.interfaces.IResultContrlView;
import com.living.emo.interfaces.IVersionContrlView;
import com.living.emo.model.Constants;
import com.living.emo.presenter.domain.NoticesPresenterImpl;
import com.living.emo.presenter.domain.VersionPresenterImpl;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.CommandUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MusicPlayerUtil;
import com.living.emo.util.NoticeCacheContent;
import com.living.emo.util.NoticeSharedPreferences;
import com.living.emo.util.NoticesBean;
import com.living.emo.view.RecognitionNameView;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.TreeMap;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import p005cn.bingoogolapple.badgeview.BGABadgeLinearLayout;
/* loaded from: classes.dex */
public class MainActivity extends BaseActivity implements View.OnClickListener, IVersionContrlView {
    private static final String TAG = "MainActivity";
    private AhoCorasickDoubleArrayTrie<String> mAct;
    private HashMap<String, StatusBean> mAlertData;
    private ImageView mBackIv;
    private BleDevice mBleDevice;
    private ImageButton mBtnGameIb;
    private ImageView mBtnGameIv;
    private ImageButton mBtnInteractIb;
    private ImageView mBtnInteractIv;
    private ImageButton mBtnLifeTimeIb;
    private ImageView mBtnLifeTimeIv;
    private ImageButton mBtnUtilitiesIb;
    private ImageView mBtnUtilitiesIv;
    private LinearLayout mCommunity;
    private ImageView mCustom;
    private LinearLayout mDocView;
    private String mEmoName;
    private ImageView mHomeMusicIv;
    private ImageView mHomeSetIv;
    private ImageView mIconCustomize;
    private ImageView mIconEdit;
    private TextView mIconEditText;
    private ImageView mIconRecognition;
    private ImageView mImgElectricity;
    private NoticeSharedPreferences mNoticeSharedPreferences;
    private BGABadgeLinearLayout mNotifications;
    private ProgressBar mPg1;
    private RecognitionNameView mRecognitionNameView;
    private StatusAdapter mStatusAdapter;
    private ImageView mTopTxtIv;
    private Vibrator mVibrator;
    private WebView mWebView;
    private TextView mWebViewClose;
    private RelativeLayout mWebViewCon;
    private ImageView mWebViewLeft;
    private ImageView mWebViewRefresh;
    private ImageView mWebViewRight;
    private boolean needClearHistory = false;
    private Handler mHandler = new Handler();
    private Runnable task = new Runnable() { // from class: com.living.emo.-$$Lambda$MainActivity$4Nq5tpafePrAaEwjabhRQDj8mXE
        @Override // java.lang.Runnable
        public final void run() {
            MainActivity.this.lambda$new$0$MainActivity();
        }
    };
    private Runnable taskSetting = new Runnable() { // from class: com.living.emo.-$$Lambda$MainActivity$unR3MwNCZtrw0NCFW-aIH4diDPE
        @Override // java.lang.Runnable
        public final void run() {
            MainActivity.this.lambda$new$1$MainActivity();
        }
    };
    private State currState = State.NONE;
    private boolean isgo = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum State {
        NONE,
        IN,
        OUT,
        UPDATE
    }

    public /* synthetic */ void lambda$new$0$MainActivity() {
        WaitDialogView.dismiss();
        showToast("Request timed out. Please make sure EMO is upgraded to 1.4.0 and above.");
    }

    public /* synthetic */ void lambda$new$1$MainActivity() {
        WaitDialogView.dismiss();
        showToast(getString(R.string.emo_is_not_ready));
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        initNotice();
        EventBus.getDefault().register(this);
        this.mVibrator = (Vibrator) getApplication().getSystemService("vibrator");
        this.mNoticeSharedPreferences = NoticeSharedPreferences.getInstance(this);
        initDatas();
        initViews();
        initEvents();
        initPresenter();
        NoticesBean instance = NoticesBean.getInstance();
        if (instance.empty()) {
            return;
        }
        if (!instance.isMainNew()) {
            this.mNotifications.hiddenBadge();
        } else if (!this.mNotifications.isShowBadge()) {
            LogUtil.m64e(TAG, "onCreate: fffffffff");
            this.mNotifications.showTextBadge("NEW");
        }
    }

    private void initNotice() {
        final NoticesBean instance = NoticesBean.getInstance();
        if (instance.empty()) {
            try {
                NoticesPresenterImpl.getInstance().setOnIResultContrlView(new IResultContrlView<Notice>() { // from class: com.living.emo.MainActivity.1
                    public void success(Notice notice) {
                        if (notice.getVersion() == MainActivity.this.mNoticeSharedPreferences.getVersion()) {
                            String data = MainActivity.this.mNoticeSharedPreferences.getData();
                            instance.setNotice((Notice) new Gson().fromJson(data, (Class<Object>) Notice.class));
                            if (!instance.isMainNew()) {
                                MainActivity.this.mNotifications.hiddenBadge();
                            } else if (!MainActivity.this.mNotifications.isShowBadge()) {
                                MainActivity.this.mNotifications.showTextBadge("NEW");
                            }
                        } else {
                            NoticeCacheContent.getInstance().clear();
                            MainActivity.this.mNoticeSharedPreferences.setVersion(notice.getVersion());
                            MainActivity.this.mNoticeSharedPreferences.setData(notice);
                            instance.setNotice(notice);
                            MainActivity.this.mNotifications.showTextBadge("NEW");
                        }
                    }

                    @Override // com.living.emo.interfaces.IResultContrlView
                    public void failed(Exception exc) {
                        LogUtil.m64e(MainActivity.TAG, "failed: " + exc.getMessage());
                        if (!MainActivity.this.mNoticeSharedPreferences.getData().equals("")) {
                            Notice notice = (Notice) new Gson().fromJson(MainActivity.this.mNoticeSharedPreferences.getData(), (Class<Object>) Notice.class);
                            if (notice.getErrcode() != 1) {
                                instance.setNotice(notice);
                                if (!instance.isMainNew()) {
                                    MainActivity.this.mNotifications.hiddenBadge();
                                } else if (!MainActivity.this.mNotifications.isShowBadge()) {
                                    MainActivity.this.mNotifications.showTextBadge("NEW");
                                }
                            }
                        }
                    }
                });
                NoticesPresenterImpl.getInstance().NoticesInfo();
            } catch (Throwable th) {
                LogUtil.m64e(TAG, "initNotice: " + th.getMessage());
            }
        }
    }

    private void initPresenter() {
        VersionPresenterImpl versionPresenterImpl = new VersionPresenterImpl();
        versionPresenterImpl.registerControlView((IVersionContrlView) this);
        if (EmoUpdate.getInstance().getServerVersionName().equals("")) {
            versionPresenterImpl.getVersionInfo();
        }
    }

    private void initDatas() {
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        write(this.mBleDevice, BleRequestUtil.versionAndPersonality());
        this.mAlertData = StatusBean.getData();
        TreeMap treeMap = new TreeMap();
        String[] stringArray = getResources().getStringArray(R.array.sensitive);
        for (String str : stringArray) {
            treeMap.put(str, str);
        }
        AhoCorasickDoubleArrayTrie<String> ahoCorasickDoubleArrayTrie = new AhoCorasickDoubleArrayTrie<>();
        this.mAct = ahoCorasickDoubleArrayTrie;
        ahoCorasickDoubleArrayTrie.build(treeMap);
    }

    public boolean shadowSensitive(String str) {
        StringBuffer stringBuffer = new StringBuffer(str.toLowerCase());
        for (AhoCorasickDoubleArrayTrie.Hit<String> hit : this.mAct.parseText(stringBuffer)) {
            for (int i = hit.begin; i < hit.end; i++) {
                stringBuffer.deleteCharAt(i);
                stringBuffer.insert(i, "*");
            }
        }
        PrintStream printStream = System.out;
        printStream.println("stringBuffer:" + stringBuffer.toString());
        return stringBuffer.indexOf("*") != -1;
    }

    private void askName() {
        RecognitionNameView recognitionNameView = new RecognitionNameView();
        this.mRecognitionNameView = recognitionNameView;
        recognitionNameView.setTitle("Please give your EMO a last name");
        this.mRecognitionNameView.setDialogClickListener(new RecognitionNameView.onDialogClickListener() { // from class: com.living.emo.MainActivity.2
            @Override // com.living.emo.view.RecognitionNameView.onDialogClickListener
            public void onCancelClick(Dialog dialog) {
                System.out.println("onCancelClick:");
                dialog.dismiss();
                MainActivity mainActivity = MainActivity.this;
                WaitDialogView.show(mainActivity, mainActivity.getString(R.string.waiting_for_emo));
                MainActivity mainActivity2 = MainActivity.this;
                mainActivity2.write(mainActivity2.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.EditInfoName("out")));
                MainActivity.this.currState = State.OUT;
            }

            @Override // com.living.emo.view.RecognitionNameView.onDialogClickListener
            public void onOkClick(Dialog dialog, String str) {
                System.out.println("onOkClick:");
                RecognitionActivity.currState = RecognitionActivity.State.ADD;
                if (str.length() > 20) {
                    MainActivity.this.showToast("The name cannot exceed 20 bytes");
                } else if (!Pattern.matches("^[a-zA-Z ]+$", str)) {
                    MainActivity.this.showToast("names can only be letters and spaces");
                } else if (MainActivity.this.shadowSensitive(str)) {
                    MainActivity.this.showToast("Sorry, you cannot enter such a name.");
                } else {
                    MainActivity.this.mEmoName = str;
                    WaitDialogView.show(MainActivity.this, "Waiting for EMO...");
                    String EditInfoName = BleJsonUtil.EditInfoName(str);
                    MainActivity mainActivity = MainActivity.this;
                    mainActivity.write(mainActivity.mBleDevice, ByteUtil.strToByteArray(EditInfoName));
                    MainActivity.this.currState = State.UPDATE;
                    dialog.dismiss();
                }
            }
        });
        this.mRecognitionNameView.show(getSupportFragmentManager(), "editName");
    }

    private void initEvents() {
        this.mBtnInteractIb.setOnClickListener(this);
        this.mBtnLifeTimeIb.setOnClickListener(this);
        this.mBtnUtilitiesIb.setOnClickListener(this);
        this.mBtnGameIb.setOnClickListener(this);
        this.mBackIv.setOnClickListener(this);
        this.mHomeSetIv.setOnClickListener(this);
        this.mNotifications.setOnClickListener(this);
        playBackgroundMusicEvent(this.mHomeMusicIv);
        this.mDocView.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$gi1Om5UtxSGT1ORqaP89PdYfFYM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$initEvents$2$MainActivity(view);
            }
        });
        this.mCommunity.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$WbJjR32A23wJhwBPBFOm01-DWDc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$initEvents$3$MainActivity(view);
            }
        });
        this.mIconCustomize.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$GSUej6bIo0pVLB97cQfN4MAVrwc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$initEvents$4$MainActivity(view);
            }
        });
        this.mIconRecognition.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$nX7FbkFDuyzXVbSpc6Vw_wC4q2c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$initEvents$5$MainActivity(view);
            }
        });
        this.mIconEdit.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$0CzH3DJTG5Wpg_iWCy5k01cmNh8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$initEvents$6$MainActivity(view);
            }
        });
        this.mWebViewLeft.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$9xYsVNdK4iXkgJNGoI1t1ouZrME
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$initEvents$7$MainActivity(view);
            }
        });
        this.mWebViewRight.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$DXKtFhfn1IfKZGXoaKxxZGjDAl4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$initEvents$8$MainActivity(view);
            }
        });
        this.mWebViewRefresh.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$4rAud207DGUZW4WfWfDzwNx6F7I
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$initEvents$9$MainActivity(view);
            }
        });
        this.mWebViewClose.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$wIrgaPaqoTm7r1Wsezl8RT95rlA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.lambda$initEvents$10$MainActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvents$2$MainActivity(View view) {
        this.mWebViewCon.setVisibility(0);
        this.mWebView.loadUrl("https://living.ai/docs/emo/");
    }

    public /* synthetic */ void lambda$initEvents$3$MainActivity(View view) {
        this.mWebViewCon.setVisibility(0);
        this.mWebView.loadUrl("https://forums.living.ai/");
    }

    public /* synthetic */ void lambda$initEvents$4$MainActivity(View view) {
        if (!checkWifiIsEnable()) {
            Toast.makeText(this, "Please make sure that your mobile device and EMO have been connected to the same network.", 1).show();
            return;
        }
        this.mWebView.destroy();
        this.mWebView = null;
        goToActivity(CustomizationActivity.class);
    }

    public /* synthetic */ void lambda$initEvents$5$MainActivity(View view) {
        this.mWebView.destroy();
        this.mWebView = null;
        goToActivity(RecognitionActivity.class);
    }

    public /* synthetic */ void lambda$initEvents$6$MainActivity(View view) {
        this.currState = State.IN;
        WaitDialogView.show(this, getString(R.string.waiting));
        write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.EditInfoName("in")));
        this.mHandler.postDelayed(this.task, 5000L);
    }

    public /* synthetic */ void lambda$initEvents$7$MainActivity(View view) {
        LogUtil.m65d(TAG, "initEvents: mWebViewLeft");
        if (this.mWebView.canGoBack()) {
            this.mVibrator.vibrate(new long[]{10, 50, 10, 50}, -1);
            this.mWebView.goBack();
        }
    }

    public /* synthetic */ void lambda$initEvents$8$MainActivity(View view) {
        LogUtil.m65d(TAG, "initEvents: mWebViewRight");
        if (this.mWebView.canGoForward()) {
            this.mVibrator.vibrate(new long[]{10, 50, 10, 50}, -1);
            this.mWebView.goForward();
        }
    }

    public /* synthetic */ void lambda$initEvents$9$MainActivity(View view) {
        this.mVibrator.vibrate(new long[]{10, 50, 10, 50}, -1);
        this.mWebView.reload();
    }

    public /* synthetic */ void lambda$initEvents$10$MainActivity(View view) {
        this.mVibrator.vibrate(new long[]{10, 50, 10, 50}, -1);
        this.mWebViewCon.setVisibility(8);
        this.mWebView.loadUrl("");
        this.needClearHistory = true;
    }

    private boolean checkWifiIsEnable() {
        WifiManager wifiManager = (WifiManager) getApplicationContext().getSystemService("wifi");
        return wifiManager != null && wifiManager.isWifiEnabled();
    }

    private void initViews() {
        ImageView imageView = (ImageView) findViewById(R.id.top_txt_iv);
        this.mTopTxtIv = imageView;
        imageView.setBackgroundResource(R.drawable.txt_home);
        this.mHomeMusicIv = (ImageView) findViewById(R.id.home_music_iv);
        this.mHomeSetIv = (ImageView) findViewById(R.id.home_set_iv);
        this.mBtnInteractIv = (ImageView) findViewById(R.id.btn_interact_iv);
        this.mBtnLifeTimeIv = (ImageView) findViewById(R.id.btn_life_time_iv);
        this.mBtnUtilitiesIv = (ImageView) findViewById(R.id.btn_utilities_iv);
        this.mBtnGameIv = (ImageView) findViewById(R.id.btn_game_iv);
        this.mBtnInteractIb = (ImageButton) findViewById(R.id.btn_interact_ib);
        this.mBtnLifeTimeIb = (ImageButton) findViewById(R.id.btn_life_time_ib);
        this.mBtnUtilitiesIb = (ImageButton) findViewById(R.id.btn_utilities_ib);
        this.mBackIv = (ImageView) findViewById(R.id.home_back_iv);
        this.mBtnGameIb = (ImageButton) findViewById(R.id.btn_game_ib);
        this.mImgElectricity = (ImageView) findViewById(R.id.home_electricity);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.hoem_recy);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(1);
        recyclerView.setLayoutManager(linearLayoutManager);
        StatusAdapter statusAdapter = new StatusAdapter();
        this.mStatusAdapter = statusAdapter;
        recyclerView.setAdapter(statusAdapter);
        MusicPlayerUtil instance = MusicPlayerUtil.getInstance(this);
        final TextView textView = (TextView) findViewById(R.id.home_music_text_tv);
        textView.setText(MusicPlayerUtil.getInstance(this).getName());
        instance.setOnChangeMusicName(new MusicPlayerUtil.OnChangeMusicName() { // from class: com.living.emo.MainActivity.3
            @Override // com.living.emo.util.MusicPlayerUtil.OnChangeMusicName
            public void onChangeMusicName(String str) {
                textView.setText(str);
            }
        });
        instance.init();
        instance.backgroundImage(this.mHomeMusicIv);
        this.mDocView = (LinearLayout) findViewById(R.id.main_doc);
        this.mNotifications = (BGABadgeLinearLayout) findViewById(R.id.main_notifications);
        this.mCommunity = (LinearLayout) findViewById(R.id.main_community);
        this.mCustom = (ImageView) findViewById(R.id.home_customization);
        this.mIconCustomize = (ImageView) findViewById(R.id.home_icon_customize);
        this.mIconEdit = (ImageView) findViewById(R.id.home_icon_edit);
        this.mIconRecognition = (ImageView) findViewById(R.id.home_icon_recognition);
        this.mIconEditText = (TextView) findViewById(R.id.home_icon_edit_text);
        this.mWebView = (WebView) findViewById(R.id.main_web_view);
        this.mPg1 = (ProgressBar) findViewById(R.id.progressBar1);
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setCacheMode(-1);
        settings.setAllowFileAccess(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setDefaultTextEncodingName("utf-8");
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        }
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.living.emo.MainActivity.4
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                LogUtil.m64e(MainActivity.TAG, "shouldOverrideUrlLoading: " + str);
                webView.loadUrl(str);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
                AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                builder.setMessage("SSL authentication failed. Do you want to continue accessing?");
                builder.setPositiveButton("continue", new DialogInterface.OnClickListener() { // from class: com.living.emo.MainActivity.4.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        sslErrorHandler.proceed();
                    }
                });
                builder.setNegativeButton("cancel", new DialogInterface.OnClickListener() { // from class: com.living.emo.MainActivity.4.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        sslErrorHandler.cancel();
                    }
                });
                builder.create().show();
            }

            @Override // android.webkit.WebViewClient
            public void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
                if (MainActivity.this.needClearHistory) {
                    MainActivity.this.mWebView.clearHistory();
                    MainActivity.this.needClearHistory = false;
                }
                super.doUpdateVisitedHistory(webView, str, z);
            }
        });
        this.mWebView.setWebChromeClient(new WebChromeClient() { // from class: com.living.emo.MainActivity.5
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                LogUtil.m65d(MainActivity.TAG, "onProgressChanged: " + i);
                if (i == 100) {
                    MainActivity.this.mPg1.setVisibility(8);
                    return;
                }
                MainActivity.this.mPg1.setVisibility(0);
                MainActivity.this.mPg1.setProgress(i);
            }
        });
        this.mWebViewCon = (RelativeLayout) findViewById(R.id.main_web_view_con);
        this.mWebViewLeft = (ImageView) findViewById(R.id.main_web_view_left);
        this.mWebViewRight = (ImageView) findViewById(R.id.main_web_view_right);
        this.mWebViewRefresh = (ImageView) findViewById(R.id.main_web_view_refresh);
        this.mWebViewClose = (TextView) findViewById(R.id.main_web_view_close);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_game_ib /* 2131296391 */:
                goToActivity(BannerActivity.class);
                return;
            case R.id.btn_interact_ib /* 2131296393 */:
                goToActivity(InteractActivity.class);
                return;
            case R.id.btn_life_time_ib /* 2131296395 */:
                goToActivity(LifeTimeActivity.class);
                return;
            case R.id.btn_utilities_ib /* 2131296397 */:
                goToActivity(UtilitiesActivity.class);
                return;
            case R.id.home_back_iv /* 2131296593 */:
                BleManager.getInstance().destroy();
                goToActivity(ConnectActivity.class);
                MusicPlayerUtil.getInstance(this).end();
                return;
            case R.id.home_set_iv /* 2131296603 */:
                EmoUpdate instance = EmoUpdate.getInstance();
                int emoVersion = instance.getEmoVersion();
                String emoVersionName = instance.getEmoVersionName();
                LogUtil.m64e(TAG, "onClick: versionName:" + emoVersionName);
                if (emoVersion < 21 || emoVersionName.equals("1.4.0") || emoVersionName.contains("1.4.0.p")) {
                    goToActivity(SettingActivity.class);
                    return;
                }
                WaitDialogView.show(this, getString(R.string.waiting));
                write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("in")));
                this.mHandler.postDelayed(this.taskSetting, 5000L);
                return;
            case R.id.main_notifications /* 2131296706 */:
                if (NoticesBean.getInstance().empty()) {
                    showToast("loading...");
                    return;
                } else {
                    goToActivity(NotificationsActivity.class);
                    return;
                }
            default:
                return;
        }
    }

    public void goToActivity(final Class cls) {
        if (this.isgo) {
            WebView webView = this.mWebView;
            if (webView != null) {
                webView.destroy();
                this.mWebView = null;
            }
            this.isgo = false;
            write(this.mBleDevice, CommandUtil.statusOnOff(CommandUtil.CMD_ORDER_DATA[0]));
            new Handler().postDelayed(new Runnable() { // from class: com.living.emo.-$$Lambda$MainActivity$HYOVdD7FM3coU2vnccN1y7-RqT8
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.lambda$goToActivity$11$MainActivity(cls);
                }
            }, 100L);
        }
    }

    public /* synthetic */ void lambda$goToActivity$11$MainActivity(Class cls) {
        write(this.mBleDevice, CommandUtil.syncAOnOff(CommandUtil.CMD_ORDER_DATA[0]));
        Intent intent = new Intent(this, cls);
        if (cls == RecognitionActivity.class) {
            Bundle bundle = new Bundle();
            bundle.putString("from_activity", "main_activity");
            intent.putExtras(bundle);
        }
        startActivity(intent);
        finish();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onJsonEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:MainActivity", "emo->app ble json data:" + json);
        BleVersionResponseParse.version(json, new C13866());
        BlePersonalityResponseParse.personality(json, new BlePersonalityResponseParse.Callback() { // from class: com.living.emo.MainActivity.7
            @Override // com.living.emo.blebean.parse.BlePersonalityResponseParse.Callback
            public void response(PersonalityConfig.DataBean.PersonalityBean personalityBean) {
                MainActivity.this.mIconEditText.setText(personalityBean.getName());
            }
        });
        BleResultParse.ota(json, new BleResultParse.Callback() { // from class: com.living.emo.MainActivity.8
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                Toast.makeText(MainActivity.this, "Request succeeded", 0).show();
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                Toast.makeText(MainActivity.this, "Request failed", 0).show();
            }
        });
        ResultResponse objectFromData = ResultResponse.objectFromData(json);
        if (objectFromData != null && objectFromData.getData() != null) {
            ResultResponse.DataBean data = objectFromData.getData();
            if (objectFromData.getType().equals(Constants.BLE_EDIT_INFO_NAME_REP)) {
                int result = data.getResult();
                this.mHandler.removeCallbacks(this.task);
                if (result == 1) {
                    WaitDialogView.dismiss();
                    int i = C13899.$SwitchMap$com$living$emo$MainActivity$State[this.currState.ordinal()];
                    if (i == 1) {
                        askName();
                    } else if (i == 2) {
                        this.currState = State.NONE;
                    } else if (i == 3) {
                        TextView textView = this.mIconEditText;
                        textView.setText("EMO " + this.mEmoName);
                        showToast("successful");
                    }
                    this.currState = State.NONE;
                } else if (result == 0) {
                    WaitDialogView.dismiss();
                    if (C13899.$SwitchMap$com$living$emo$MainActivity$State[this.currState.ordinal()] == 3) {
                        showToast("fail");
                    }
                } else if (result == 10) {
                    WaitDialogView.dismiss();
                    RecognitionNameView recognitionNameView = this.mRecognitionNameView;
                    if (recognitionNameView != null) {
                        recognitionNameView.dismiss();
                    }
                    this.currState = State.NONE;
                }
            }
            if (objectFromData.getType().equals(Constants.BLE_SETTING_RSP)) {
                int result2 = data.getResult();
                this.mHandler.removeCallbacks(this.taskSetting);
                if (result2 == 1) {
                    WaitDialogView.dismiss();
                    goToActivity(SettingActivity.class);
                    return;
                }
                WaitDialogView.dismiss();
                showToast(getString(R.string.emo_is_not_ready));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.living.emo.MainActivity$6 */
    /* loaded from: classes.dex */
    public class C13866 implements BleVersionResponseParse.Callback {
        C13866() {
            MainActivity.this = r1;
        }

        @Override // com.living.emo.blebean.parse.BleVersionResponseParse.Callback
        public void response(VersionResponse.DataBean.VersionBean versionBean) {
            EmoUpdate.getInstance().setEmoVersionName(versionBean.getName());
            EmoUpdate.getInstance().setEmoVersion(versionBean.getNumber());
            if (versionBean.getNumber() <= 15) {
                final Dialog dialog = new Dialog(MainActivity.this, R.style.CustomDialogTheme);
                View inflate = View.inflate(MainActivity.this, R.layout.dialog_update_emo, null);
                final ImageButton imageButton = (ImageButton) inflate.findViewById(R.id.dialog_set);
                ((ImageButton) inflate.findViewById(R.id.dialog_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$6$57EpJ2ZRAl-CtKQ1pMZ36EaFsuI
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        dialog.dismiss();
                    }
                });
                imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.-$$Lambda$MainActivity$6$kjXBCiRCyD0HEUAwEKDKTO8bZcY
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainActivity.C13866.this.lambda$response$1$MainActivity$6(imageButton, dialog, view);
                    }
                });
                dialog.setContentView(inflate);
                dialog.setCanceledOnTouchOutside(false);
                dialog.show();
            }
            MainActivity mainActivity = MainActivity.this;
            mainActivity.write(mainActivity.mBleDevice, CommandUtil.statusOnOff(CommandUtil.CMD_ORDER_DATA[1]));
            new Handler().postDelayed(new Runnable() { // from class: com.living.emo.-$$Lambda$MainActivity$6$8Zpp4gCJqutpmrpdidwk22gn9_A
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.C13866.this.lambda$response$2$MainActivity$6();
                }
            }, 100L);
        }

        public /* synthetic */ void lambda$response$1$MainActivity$6(ImageButton imageButton, Dialog dialog, View view) {
            imageButton.setEnabled(false);
            byte[] strToByteArray = ByteUtil.strToByteArray(BleJsonUtil.ota(16));
            MainActivity mainActivity = MainActivity.this;
            mainActivity.write(mainActivity.mBleDevice, strToByteArray);
            dialog.dismiss();
            imageButton.setEnabled(true);
        }

        public /* synthetic */ void lambda$response$2$MainActivity$6() {
            MainActivity mainActivity = MainActivity.this;
            mainActivity.write(mainActivity.mBleDevice, CommandUtil.syncAOnOff(CommandUtil.CMD_ORDER_DATA[1]));
        }
    }

    /* renamed from: com.living.emo.MainActivity$9 */
    /* loaded from: classes.dex */
    static /* synthetic */ class C13899 {
        static final /* synthetic */ int[] $SwitchMap$com$living$emo$MainActivity$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$com$living$emo$MainActivity$State = iArr;
            try {
                iArr[State.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$living$emo$MainActivity$State[State.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$living$emo$MainActivity$State[State.UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent messageEvent) {
        byte[] data = messageEvent.getData();
        if (data[3] == CommandUtil.CMD_CATEGORY[0] && data[4] == CommandUtil.CMD_ORDER[0]) {
            byte b = data[5];
            byte b2 = data[6];
            String str = String.valueOf((int) b) + String.valueOf((int) b2);
            LogUtil.m65d(TAG, "onMessageEvent2: " + str);
            StatusBean statusBean = this.mAlertData.get(String.valueOf(str));
            LogUtil.m65d(TAG, "onMessageEvent: " + statusBean);
            if (statusBean != null) {
                this.mStatusAdapter.setData(statusBean);
            }
        }
        if (data[3] == CommandUtil.CMD_CATEGORY[2] && data[4] == CommandUtil.CMD_ORDER[0]) {
            byte b3 = data[5];
            LogUtil.m64e(TAG, "Electricity:" + ((int) b3));
            if (b3 == 0) {
                this.mImgElectricity.setBackgroundResource(R.drawable.elc_0);
            } else if (b3 == 20) {
                this.mImgElectricity.setBackgroundResource(R.drawable.elc_1);
            } else if (b3 == 40) {
                this.mImgElectricity.setBackgroundResource(R.drawable.elc_2);
            } else if (b3 == 60) {
                this.mImgElectricity.setBackgroundResource(R.drawable.elc_3);
            } else if (b3 == 80) {
                this.mImgElectricity.setBackgroundResource(R.drawable.elc_4);
            } else if (b3 == 100) {
                this.mImgElectricity.setBackgroundResource(R.drawable.elc_5);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.onResume();
            this.mWebView.resumeTimers();
            this.mWebView.reload();
        }
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

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.isgo) {
            write(this.mBleDevice, CommandUtil.statusOnOff(CommandUtil.CMD_ORDER_DATA[0]));
            new Handler().postDelayed(new Runnable() { // from class: com.living.emo.-$$Lambda$MainActivity$8BcG0LfhjfecXE72b8juKCzD_IQ
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.lambda$onPause$12$MainActivity();
                }
            }, 50L);
            this.isgo = true;
        }
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.onPause();
            this.mWebView.pauseTimers();
        }
        WaitDialogView.dismiss();
    }

    public /* synthetic */ void lambda$onPause$12$MainActivity() {
        write(this.mBleDevice, CommandUtil.syncAOnOff(CommandUtil.CMD_ORDER_DATA[0]));
    }

    @Override // com.living.emo.interfaces.IVersionContrlView
    public void getVersionInfo(Version version) {
        if (version.getErrcode() != 404) {
            EmoUpdate.getInstance().setServerVersionName(version.getVersionName());
            EmoUpdate.getInstance().setServerVersion(version.getVersionNum());
            if (EmoUpdate.getInstance().isUpdate()) {
                showToast("There is a new firmware available for EMO, please install it in settings.");
                return;
            }
            return;
        }
        LogUtil.m62v(TAG, "getVersionInfo:服务端没有任何版本信息");
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.loadDataWithBaseURL(null, "", "text/html", "utf-8", null);
            this.mWebView.clearHistory();
            ((ViewGroup) this.mWebView.getParent()).removeView(this.mWebView);
        }
        EventBus.getDefault().unregister(this);
    }
}
