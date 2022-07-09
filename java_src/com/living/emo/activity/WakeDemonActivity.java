package com.living.emo.activity;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.WakeDemonActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.WakeDemonBean;
import com.living.emo.event.MessageEvent;
import com.living.emo.util.AudioUtil;
import com.living.emo.util.CommandUtil;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class WakeDemonActivity extends BaseActivity {
    private static final int HANDLE_TIME_OUT = 10000;
    private AudioUtil mAudioUtil;
    private BleDevice mBleDevice;
    private ImageView mCloseIv;
    private ProgressDialog mDialog;
    private RelativeLayout mDuringContainer;
    private Handler mHandler;
    private ImageView mMusicIv;
    private RelativeLayout mOverContainer;
    private ImageView mOverNow;
    private ImageView mPalyNow;
    private RelativeLayout mPlayContainer;
    private boolean isPlaying = true;
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.WakeDemonActivity.1
        @Override // java.lang.Runnable
        public void run() {
            WakeDemonActivity wakeDemonActivity = WakeDemonActivity.this;
            wakeDemonActivity.write(wakeDemonActivity.mBleDevice, CommandUtil.outApp());
            WakeDemonActivity wakeDemonActivity2 = WakeDemonActivity.this;
            wakeDemonActivity2.showToast(wakeDemonActivity2.getResources().getString(R.string.emo_is_not_ready));
            if (WakeDemonActivity.this.mDialog != null) {
                WakeDemonActivity.this.mDialog.dismiss();
            }
            WakeDemonActivity.this.finish();
        }
    };

    private void ready() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_wake_demon);
        EventBus.getDefault().register(this);
        initView();
        initEvent();
        initProgressDialog();
        BleDevice bleDevice = BleBean.getInstance().getBleDevice();
        this.mBleDevice = bleDevice;
        write(bleDevice, CommandUtil.enterApp(3));
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

    private void initEvent() {
        this.mPalyNow.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.WakeDemonActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WakeDemonActivity.this.mPalyNow.setEnabled(false);
                WakeDemonActivity wakeDemonActivity = WakeDemonActivity.this;
                wakeDemonActivity.write(wakeDemonActivity.mBleDevice, CommandUtil.startGame());
            }
        });
        this.mOverNow.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.WakeDemonActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WakeDemonActivity.this.mOverNow.setEnabled(false);
                WakeDemonActivity.this.mAudioUtil.stopPlay();
                WakeDemonActivity.this.finish();
            }
        });
        this.mCloseIv.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.WakeDemonActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WakeDemonActivity.this.mCloseIv.setEnabled(false);
                WakeDemonActivity.this.mAudioUtil.stopPlay();
                WakeDemonActivity.this.finish();
            }
        });
    }

    /* renamed from: com.living.emo.activity.WakeDemonActivity$5 */
    /* loaded from: classes.dex */
    class C15245 implements WakeDemonBean.WakeDemonResponse {
        @Override // com.living.emo.bean.WakeDemonBean.WakeDemonResponse
        public void error() {
        }

        C15245() {
        }

        @Override // com.living.emo.bean.WakeDemonBean.WakeDemonResponse
        public void gameReady() {
            WakeDemonActivity.this.mHandler.removeCallbacks(WakeDemonActivity.this.task);
            WakeDemonActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$WakeDemonActivity$5$0rp_gTZuoRWuQwSunS2G3CiJbjE
                @Override // java.lang.Runnable
                public final void run() {
                    WakeDemonActivity.C15245.this.lambda$gameReady$0$WakeDemonActivity$5();
                }
            }, 1000L);
        }

        public /* synthetic */ void lambda$gameReady$0$WakeDemonActivity$5() {
            if (WakeDemonActivity.this.mDialog != null) {
                WakeDemonActivity.this.mDialog.dismiss();
            }
            WakeDemonActivity.this.mAudioUtil.play(WakeDemonActivity.this, R.raw.emo_sleep_music_loop);
        }

        @Override // com.living.emo.bean.WakeDemonBean.WakeDemonResponse
        public void startGame() {
            WakeDemonActivity.this.mPlayContainer.setVisibility(8);
            WakeDemonActivity.this.mDuringContainer.setVisibility(0);
            WakeDemonActivity.this.mOverContainer.setVisibility(8);
        }

        @Override // com.living.emo.bean.WakeDemonBean.WakeDemonResponse
        public void gameOver() {
            WakeDemonActivity.this.mPlayContainer.setVisibility(8);
            WakeDemonActivity.this.mDuringContainer.setVisibility(8);
            WakeDemonActivity.this.mOverContainer.setVisibility(0);
            WakeDemonActivity.this.mAudioUtil.stopPlay();
            WakeDemonActivity.this.mAudioUtil.play(WakeDemonActivity.this, R.raw.angry_emo_loop);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent messageEvent) {
        WakeDemonBean.ludoNotify(messageEvent.getData(), new C15245());
    }

    private void error() {
        finish();
    }

    private void initView() {
        this.mAudioUtil = AudioUtil.INSTANCE;
        this.mPlayContainer = (RelativeLayout) findViewById(R.id.wake_play_container);
        this.mDuringContainer = (RelativeLayout) findViewById(R.id.wake_during_container);
        this.mOverContainer = (RelativeLayout) findViewById(R.id.wake_over_container);
        this.mPalyNow = (ImageView) findViewById(R.id.wake_play_now);
        this.mOverNow = (ImageView) findViewById(R.id.wake_game_over_iv);
        this.mCloseIv = (ImageView) findViewById(R.id.wake_close_iv);
        this.mPlayContainer.setVisibility(0);
        this.mDuringContainer.setVisibility(8);
        this.mOverContainer.setVisibility(8);
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
        AudioUtil audioUtil = this.mAudioUtil;
        if (audioUtil != null) {
            audioUtil.stopPlay();
            this.mAudioUtil = null;
        }
        if (this.mDialog != null) {
            this.mDialog = null;
        }
        EventBus.getDefault().unregister(this);
    }
}
