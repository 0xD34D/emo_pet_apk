package com.living.emo.activity;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.caesar.musicspectrumbarlibrary.MusicSpectrumBar;
import com.clj.fastble.data.BleDevice;
import com.jaygoo.widget.OnRangeChangedListener;
import com.jaygoo.widget.RangeSeekBar;
import com.jaygoo.widget.VerticalRangeSeekBar;
import com.living.emo.adapter.DiscBtnGroupAdapter;
import com.living.emo.animation.ImageButtonAnimation;
import com.living.emo.bean.AmusementBean;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.MusicBean;
import com.living.emo.bean.MusicInfo;
import com.living.emo.event.MessageEvent;
import com.living.emo.interfaces.IMusicsControlViewCallback;
import com.living.emo.interfaces.IPlayerControlPresenter;
import com.living.emo.interfaces.IPlayerControlView;
import com.living.emo.observer.VolumeChangeObserver;
import com.living.emo.presenter.DiscControlPresenter;
import com.living.emo.presenter.MusicsPresenters;
import com.living.emo.presenter.SoundsPresenter;
import com.living.emo.presenter.TouchPresenter;
import com.living.emo.util.CommandUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.view.DiscWindow;
import com.livingai.emopet.R;
import com.youth.banner.util.BannerUtils;
import java.text.DecimalFormat;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class DiscActivity extends BaseActivity implements View.OnClickListener, VolumeChangeObserver.VolumeChangeListener {
    private static final float DISC_VOLUME_DEFAULT = 0.5f;
    private static final String TAG = "zxl::" + DiscActivity.class.getSimpleName();
    private Handler handler;
    private boolean isMusic1;
    private boolean isMusic2;
    private BleDevice mBleDevice;
    private RecyclerView mBtnGroup;
    private ProgressDialog mDialog;
    private DiscWindow mDiscLWindow;
    private DiscWindow mDiscRWindow;
    private ImageButton mLAddIb;
    private TextView mLBpm;
    private ImageView mLDish;
    private ImageButtonAnimation mLDishAnim;
    private MusicSpectrumBar mLMusicBar;
    private TextView mLMusicTime;
    private TextView mLMusicTitle;
    private DiscControlPresenter mLPlayControl;
    private ImageButton mLPlayIb;
    private VerticalRangeSeekBar mLSpeed;
    private TouchPresenter mLTouch;
    private ImageButton mRAddIb;
    private TextView mRBpm;
    private ImageView mRDish;
    private ImageButtonAnimation mRDishAnim;
    private MusicSpectrumBar mRMusicBar;
    private TextView mRMusicTime;
    private TextView mRMusicTitle;
    private DiscControlPresenter mRPlayControl;
    private ImageButton mRPlayIb;
    private VerticalRangeSeekBar mRSpeed;
    private TouchPresenter mRTouch;
    private ScheduledFuture<?> mScheduledFuture;
    private SoundsPresenter mSoundPool;
    private int mVol;
    private VerticalRangeSeekBar mVolume;
    private List<MusicBean.DataBean> mMusicList = null;
    private boolean isLeftUserTouch = false;
    private boolean isRightUserTouch = false;
    private VolumeChangeObserver mVolumeChangeObserver = null;
    private boolean isPlaying = false;
    private boolean isProcessing = false;
    private boolean isTask = false;
    private boolean isDance = false;
    private ScheduledFuture<?> playingScheduledFuture = null;
    private Runnable delayed = new Runnable() { // from class: com.living.emo.activity.DiscActivity.1
        @Override // java.lang.Runnable
        public void run() {
            DiscActivity.this.mDialog.dismiss();
            DiscActivity.this.finish();
            DiscActivity discActivity = DiscActivity.this;
            discActivity.showToast(discActivity.getResources().getString(R.string.emo_is_not_ready));
            DiscActivity discActivity2 = DiscActivity.this;
            discActivity2.write(discActivity2.mBleDevice, CommandUtil.outApp());
        }
    };
    private ScheduledExecutorService executorService = Executors.newScheduledThreadPool(3);
    private Runnable play = new Runnable() { // from class: com.living.emo.activity.DiscActivity.3
        @Override // java.lang.Runnable
        public void run() {
            if ((DiscActivity.this.isMusic1 || DiscActivity.this.isMusic2) && DiscActivity.this.mVol > 0) {
                LogUtil.m64e(DiscActivity.TAG, "play:run: play");
                if (!DiscActivity.this.isProcessing) {
                    DiscActivity discActivity = DiscActivity.this;
                    discActivity.write(discActivity.mBleDevice, CommandUtil.dazzling(1, DiscActivity.this.getBpmValue()));
                    DiscActivity.this.isProcessing = true;
                }
            }
        }
    };
    private Runnable stop = new Runnable() { // from class: com.living.emo.activity.DiscActivity.4
        @Override // java.lang.Runnable
        public void run() {
            if ((!DiscActivity.this.isMusic1 && !DiscActivity.this.isMusic2) || DiscActivity.this.mVol <= 0) {
                String str = DiscActivity.TAG;
                LogUtil.m64e(str, "run: stop" + DiscActivity.this.stop);
                if (DiscActivity.this.isProcessing) {
                    DiscActivity discActivity = DiscActivity.this;
                    discActivity.write(discActivity.mBleDevice, CommandUtil.stay());
                    DiscActivity.this.isProcessing = false;
                }
            }
        }
    };
    private Runnable playing = new Runnable() { // from class: com.living.emo.activity.DiscActivity.5
        @Override // java.lang.Runnable
        public void run() {
            if ((DiscActivity.this.isMusic1 || DiscActivity.this.isMusic2) && DiscActivity.this.mVol > 0) {
                LogUtil.m64e(DiscActivity.TAG, "playing:run: playing ");
                if (DiscActivity.this.isDance) {
                    DiscActivity discActivity = DiscActivity.this;
                    discActivity.write(discActivity.mBleDevice, CommandUtil.dance(1, DiscActivity.this.getBpmValue()));
                    DiscActivity.this.isDance = false;
                    return;
                }
                DiscActivity discActivity2 = DiscActivity.this;
                discActivity2.write(discActivity2.mBleDevice, CommandUtil.legShaking(1, DiscActivity.this.getBpmValue()));
                DiscActivity.this.isDance = true;
            }
        }
    };
    private IPlayerControlView mLPlayView = new IPlayerControlView() { // from class: com.living.emo.activity.DiscActivity.12
        @Override // com.living.emo.interfaces.IPlayerControlView
        public void playOnChangeSate(int i) {
            DiscActivity discActivity = DiscActivity.this;
            discActivity.setPlayBg(i, discActivity.mLPlayIb, new int[]{R.drawable.disc_red_pause, R.drawable.disc_red_play}, DiscActivity.this.mLDishAnim, DiscActivity.this.mLDish);
        }

        @Override // com.living.emo.interfaces.IPlayerControlView
        public void onChangeSeekBar(final String str, final int i) {
            DiscActivity.this.runOnUiThread(new Runnable() { // from class: com.living.emo.activity.DiscActivity.12.1
                @Override // java.lang.Runnable
                public void run() {
                    DiscActivity.this.mLMusicTime.setText(str);
                    if (!DiscActivity.this.isLeftUserTouch) {
                        DiscActivity.this.mLMusicBar.setCurrent(i);
                    }
                }
            });
        }

        @Override // com.living.emo.interfaces.IPlayerControlView
        public void musicInfo(MusicInfo musicInfo) {
            DiscActivity.this.mLMusicTitle.setText(musicInfo.getName());
            DiscActivity.this.mLMusicTime.setText(musicInfo.getTime());
        }
    };
    private IPlayerControlView mRPlayView = new IPlayerControlView() { // from class: com.living.emo.activity.DiscActivity.13
        @Override // com.living.emo.interfaces.IPlayerControlView
        public void playOnChangeSate(int i) {
            DiscActivity discActivity = DiscActivity.this;
            discActivity.setPlayBg(i, discActivity.mRPlayIb, new int[]{R.drawable.disc_blue_pause, R.drawable.disc_blue_play}, DiscActivity.this.mRDishAnim, DiscActivity.this.mRDish);
        }

        @Override // com.living.emo.interfaces.IPlayerControlView
        public void onChangeSeekBar(final String str, final int i) {
            DiscActivity.this.runOnUiThread(new Runnable() { // from class: com.living.emo.activity.DiscActivity.13.1
                @Override // java.lang.Runnable
                public void run() {
                    DiscActivity.this.mRMusicTime.setText(str);
                    if (!DiscActivity.this.isRightUserTouch) {
                        DiscActivity.this.mRMusicBar.setCurrent(i);
                    }
                }
            });
        }

        @Override // com.living.emo.interfaces.IPlayerControlView
        public void musicInfo(MusicInfo musicInfo) {
            DiscActivity.this.mRMusicTitle.setText(musicInfo.getName());
            DiscActivity.this.mRMusicTime.setText(musicInfo.getTime());
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_disc);
        EventBus.getDefault().register(this);
        this.handler = new Handler();
        initReceiver();
        initBle();
        initData();
        initView();
        initWindow();
        initEvent();
        initAnim();
        initTouchEvent();
        initPlayMusic();
        initSoundPool();
        initTimer();
        initProgressDialog();
    }

    private void initBle() {
        BleDevice bleDevice = BleBean.getInstance().getBleDevice();
        this.mBleDevice = bleDevice;
        write(bleDevice, CommandUtil.enterApp(7));
    }

    private void initProgressDialog() {
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.mDialog = progressDialog;
        progressDialog.setMessage(getString(R.string.waiting));
        this.mDialog.setCancelable(false);
        this.mDialog.show();
        this.handler.postDelayed(this.delayed, 5000L);
    }

    public int getBpmValue() {
        float speed = this.mLPlayControl.getSpeed();
        speed = this.mRPlayControl.getSpeed();
        float volume = this.mLPlayControl.getVolume();
        float volume2 = this.mRPlayControl.getVolume();
        String str = TAG;
        LogUtil.m64e(str, "getBpmValue:volume1 " + volume);
        LogUtil.m64e(str, "getBpmValue:volume2 " + volume2);
        if (!this.mLPlayControl.isPlaying() || !this.mRPlayControl.isPlaying() ? !this.mLPlayControl.isPlaying() : volume <= volume2) {
        }
        StringBuilder sb = new StringBuilder();
        sb.append("getBpmValue: ");
        float f = speed * 128.0f;
        sb.append(f);
        LogUtil.m64e(str, sb.toString());
        return (int) f;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent messageEvent) {
        AmusementBean.AmusementNotify(messageEvent.getData(), new AmusementBean.AmusementResponse() { // from class: com.living.emo.activity.DiscActivity.2
            @Override // com.living.emo.bean.AmusementBean.AmusementResponse
            public void dance() {
            }

            @Override // com.living.emo.bean.AmusementBean.AmusementResponse
            public void dazzling() {
            }

            @Override // com.living.emo.bean.AmusementBean.AmusementResponse
            public void error() {
            }

            @Override // com.living.emo.bean.AmusementBean.AmusementResponse
            public void legShaking() {
            }

            @Override // com.living.emo.bean.AmusementBean.AmusementResponse
            public void stay() {
            }

            @Override // com.living.emo.bean.AmusementBean.AmusementResponse
            public void gameReady() {
                DiscActivity.this.handler.postDelayed(new Runnable() { // from class: com.living.emo.activity.DiscActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        DiscActivity.this.mDialog.dismiss();
                        DiscActivity.this.handler.removeCallbacks(DiscActivity.this.delayed);
                        if (DiscActivity.this.mLPlayControl != null && DiscActivity.this.mMusicList != null) {
                            DiscActivity.this.mLPlayControl.setData((MusicBean.DataBean) DiscActivity.this.mMusicList.get(0));
                            DiscActivity.this.playOrPause(DiscActivity.this.mLPlayControl, DiscActivity.this.mLDishAnim, DiscActivity.this.mLDish);
                        }
                    }
                }, 1000L);
            }

            @Override // com.living.emo.bean.AmusementBean.AmusementResponse
            public void GameOver() {
                LogUtil.m64e("jks", "this is back");
                if (!DiscActivity.this.isFinishing()) {
                    DiscActivity.this.finish();
                    DiscActivity.this.closeThread();
                }
            }
        });
    }

    private void initTimer() {
        this.mScheduledFuture = this.executorService.scheduleAtFixedRate(new TimerInterval(), 0L, 100L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TimerInterval implements Runnable {
        private TimerInterval() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!(DiscActivity.this.mLPlayControl == null || DiscActivity.this.mRPlayControl == null)) {
                DiscActivity discActivity = DiscActivity.this;
                discActivity.isMusic1 = discActivity.mLPlayControl.isPlaying();
                DiscActivity discActivity2 = DiscActivity.this;
                discActivity2.isMusic2 = discActivity2.mRPlayControl.isPlaying();
            }
            String str = DiscActivity.TAG;
            LogUtil.m65d(str, "TimerInterval:run: RunnableisMusic1: " + DiscActivity.this.isMusic1 + "   isMusic2:    " + DiscActivity.this.isMusic2 + "    mVol: " + DiscActivity.this.mVol);
            if ((DiscActivity.this.isMusic1 || DiscActivity.this.isMusic2) && DiscActivity.this.mVol > 0) {
                if (!DiscActivity.this.isPlaying) {
                    DiscActivity.this.handler.postDelayed(DiscActivity.this.play, 5000L);
                    DiscActivity.this.isPlaying = true;
                }
            } else if (((!DiscActivity.this.isMusic1 && !DiscActivity.this.isMusic2) || DiscActivity.this.mVol <= 0) && DiscActivity.this.isPlaying) {
                DiscActivity.this.handler.removeCallbacks(DiscActivity.this.play);
                DiscActivity.this.handler.postDelayed(DiscActivity.this.stop, 5000L);
                DiscActivity.this.isPlaying = false;
            }
            if (DiscActivity.this.isProcessing) {
                if (!DiscActivity.this.isTask) {
                    String str2 = DiscActivity.TAG;
                    LogUtil.m65d(str2, "run:isTask " + DiscActivity.this.isTask);
                    DiscActivity discActivity3 = DiscActivity.this;
                    discActivity3.playingScheduledFuture = discActivity3.executorService.scheduleAtFixedRate(DiscActivity.this.playing, 10L, 20L, TimeUnit.SECONDS);
                    DiscActivity.this.isTask = true;
                }
            } else if (DiscActivity.this.isTask) {
                if (DiscActivity.this.playingScheduledFuture != null) {
                    String str3 = DiscActivity.TAG;
                    LogUtil.m65d(str3, "run:isTask " + DiscActivity.this.isTask);
                    DiscActivity.this.playingScheduledFuture.cancel(false);
                }
                DiscActivity.this.isTask = false;
            }
        }
    }

    private void initReceiver() {
        if (this.mVolumeChangeObserver == null) {
            VolumeChangeObserver volumeChangeObserver = new VolumeChangeObserver();
            this.mVolumeChangeObserver = volumeChangeObserver;
            volumeChangeObserver.registerReceiver();
            this.mVolumeChangeObserver.setVolumeChangeListener(this);
            this.mVol = this.mVolumeChangeObserver.getCurrentVolume();
        }
    }

    private void initSoundPool() {
        if (this.mSoundPool == null) {
            this.mSoundPool = SoundsPresenter.getInstance();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void touchPress(IPlayerControlPresenter iPlayerControlPresenter, ImageButtonAnimation imageButtonAnimation, ImageView imageView) {
        if (iPlayerControlPresenter == null) {
            return;
        }
        if (iPlayerControlPresenter.isData()) {
            if (iPlayerControlPresenter.isPlaying()) {
                iPlayerControlPresenter.pause();
            }
            cancel(imageButtonAnimation, imageView);
            return;
        }
        showToast(getResources().getString(R.string.choose_a_song));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void touchUpLift(IPlayerControlPresenter iPlayerControlPresenter, ImageButtonAnimation imageButtonAnimation, ImageView imageView, boolean z) {
        String str = TAG;
        LogUtil.m64e(str, "touchUpLift:" + z);
        if (iPlayerControlPresenter != null && iPlayerControlPresenter.isData() && z) {
            iPlayerControlPresenter.play();
            start(imageButtonAnimation, imageView);
        }
    }

    private void initTouchEvent() {
        if (this.mLTouch == null) {
            this.mLTouch = new TouchPresenter();
            this.mLDish.postDelayed(new Runnable() { // from class: com.living.emo.activity.DiscActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    int[] iArr = new int[2];
                    DiscActivity.this.mLDish.getLocationOnScreen(iArr);
                    int width = DiscActivity.this.mLDish.getWidth();
                    int height = DiscActivity.this.mLDish.getHeight();
                    if (iArr[0] != 0 && iArr[1] != 0) {
                        DiscActivity.this.mLTouch.setCenterPoint(iArr[0] + (width / 2), iArr[1] + (height / 2));
                        String str = DiscActivity.TAG;
                        LogUtil.m65d(str, "-------locations[0] :" + iArr[0] + "-----------width:" + width);
                        String str2 = DiscActivity.TAG;
                        LogUtil.m65d(str2, "-------locations[1] :" + iArr[1] + "-----------height:" + height);
                    }
                }
            }, 100L);
            this.mLTouch.setTouchListener(new TouchPresenter.TouchListener() { // from class: com.living.emo.activity.DiscActivity.7
                private boolean mIsPlaying;

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onTouchDownAcion() {
                    this.mIsPlaying = DiscActivity.this.mLPlayControl.isPlaying();
                    DiscActivity discActivity = DiscActivity.this;
                    discActivity.touchPress(discActivity.mLPlayControl, DiscActivity.this.mLDishAnim, DiscActivity.this.mLDish);
                }

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onTouchUpAcion() {
                    DiscActivity discActivity = DiscActivity.this;
                    discActivity.touchUpLift(discActivity.mLPlayControl, DiscActivity.this.mLDishAnim, DiscActivity.this.mLDish, this.mIsPlaying);
                }

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onPlaySound() {
                    DiscActivity.this.mSoundPool.play(11);
                }
            });
        }
        if (this.mRTouch == null) {
            this.mRTouch = new TouchPresenter();
            this.mLDish.postDelayed(new Runnable() { // from class: com.living.emo.activity.DiscActivity.8
                @Override // java.lang.Runnable
                public void run() {
                    int[] iArr = new int[2];
                    DiscActivity.this.mRDish.getLocationOnScreen(iArr);
                    int width = DiscActivity.this.mRDish.getWidth();
                    int height = DiscActivity.this.mRDish.getHeight();
                    if (iArr[0] != 0 && iArr[1] != 0) {
                        DiscActivity.this.mRTouch.setCenterPoint(iArr[0] + (width / 2), iArr[1] + (height / 2));
                        String str = DiscActivity.TAG;
                        LogUtil.m65d(str, "-------locations[0] :" + iArr[0] + "-----------width:" + width);
                        String str2 = DiscActivity.TAG;
                        LogUtil.m65d(str2, "-------locations[1] :" + iArr[1] + "-----------height:" + height);
                    }
                }
            }, 100L);
            this.mRTouch.setTouchListener(new TouchPresenter.TouchListener() { // from class: com.living.emo.activity.DiscActivity.9
                private boolean mIsPlaying;

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onTouchDownAcion() {
                    this.mIsPlaying = DiscActivity.this.mRPlayControl.isPlaying();
                    DiscActivity discActivity = DiscActivity.this;
                    discActivity.touchPress(discActivity.mRPlayControl, DiscActivity.this.mRDishAnim, DiscActivity.this.mRDish);
                }

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onTouchUpAcion() {
                    DiscActivity discActivity = DiscActivity.this;
                    discActivity.touchUpLift(discActivity.mRPlayControl, DiscActivity.this.mRDishAnim, DiscActivity.this.mRDish, this.mIsPlaying);
                }

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onPlaySound() {
                    DiscActivity.this.mSoundPool.play(3);
                }
            });
        }
        this.mLDish.setOnTouchListener(new View.OnTouchListener() { // from class: com.living.emo.activity.DiscActivity.10
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (DiscActivity.this.mLTouch == null) {
                    return true;
                }
                DiscActivity.this.mLTouch.onTouch(DiscActivity.this.mLDish, motionEvent);
                return true;
            }
        });
        this.mRDish.setOnTouchListener(new View.OnTouchListener() { // from class: com.living.emo.activity.DiscActivity.11
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (DiscActivity.this.mRTouch == null) {
                    return true;
                }
                DiscActivity.this.mRTouch.onTouch(DiscActivity.this.mRDish, motionEvent);
                return true;
            }
        });
    }

    private void initAnim() {
        ImageButtonAnimation imageButtonAnimation = new ImageButtonAnimation();
        this.mLDishAnim = imageButtonAnimation;
        imageButtonAnimation.setView(this.mLDish).init();
        ImageButtonAnimation imageButtonAnimation2 = new ImageButtonAnimation();
        this.mRDishAnim = imageButtonAnimation2;
        imageButtonAnimation2.setView(this.mRDish).init();
    }

    private void initPlayMusic() {
        DiscControlPresenter discControlPresenter = new DiscControlPresenter(this);
        this.mLPlayControl = discControlPresenter;
        discControlPresenter.registerControlView(this.mLPlayView);
        DiscControlPresenter discControlPresenter2 = new DiscControlPresenter(this);
        this.mRPlayControl = discControlPresenter2;
        discControlPresenter2.registerControlView(this.mRPlayView);
    }

    private void initData() {
        MusicsPresenters instance = MusicsPresenters.getInstance();
        instance.registerControlView(new IMusicsControlViewCallback() { // from class: com.living.emo.activity.-$$Lambda$DiscActivity$QCb7EMqsoE1aDo3hbTs-iloyvTE
            @Override // com.living.emo.interfaces.IMusicsControlViewCallback
            public final void onMusicListLoad(List list) {
                DiscActivity.this.lambda$initData$0$DiscActivity(list);
            }
        });
        instance.getMusicList();
    }

    public /* synthetic */ void lambda$initData$0$DiscActivity(List list) {
        this.mMusicList = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlayBg(int i, ImageButton imageButton, int[] iArr, ImageButtonAnimation imageButtonAnimation, ImageView imageView) {
        if (i == 1) {
            imageButton.setBackgroundResource(iArr[0]);
        } else if (i == 2) {
            imageButton.setBackgroundResource(iArr[1]);
        } else if (i == 3) {
            imageButtonAnimation.end();
            imageView.setRotation(0.0f);
            imageButtonAnimation.setRos(0).setValues();
            imageButton.setBackgroundResource(iArr[1]);
        }
    }

    private void initWindow() {
        DiscWindow discWindow = new DiscWindow();
        this.mDiscLWindow = discWindow;
        discWindow.setPlayerItemListener(new DiscWindow.PlayerItemListener() { // from class: com.living.emo.activity.-$$Lambda$DiscActivity$wKfDOlJCXJh_Pl7bu1IRsKjezaE
            @Override // com.living.emo.view.DiscWindow.PlayerItemListener
            public final void onPlayerItem(MusicBean.DataBean dataBean) {
                DiscActivity.this.lambda$initWindow$1$DiscActivity(dataBean);
            }
        });
        DiscWindow discWindow2 = new DiscWindow();
        this.mDiscRWindow = discWindow2;
        discWindow2.setPlayerItemListener(new DiscWindow.PlayerItemListener() { // from class: com.living.emo.activity.-$$Lambda$DiscActivity$wzHbyLDgWZrHurJ2cbFrR3Ok5bY
            @Override // com.living.emo.view.DiscWindow.PlayerItemListener
            public final void onPlayerItem(MusicBean.DataBean dataBean) {
                DiscActivity.this.lambda$initWindow$2$DiscActivity(dataBean);
            }
        });
    }

    public /* synthetic */ void lambda$initWindow$1$DiscActivity(MusicBean.DataBean dataBean) {
        this.mLPlayControl.setData(dataBean);
        this.mDiscLWindow.dismiss();
    }

    public /* synthetic */ void lambda$initWindow$2$DiscActivity(MusicBean.DataBean dataBean) {
        this.mRPlayControl.setData(dataBean);
        this.mDiscRWindow.dismiss();
    }

    private void initEvent() {
        this.mLAddIb.setOnClickListener(this);
        this.mRAddIb.setOnClickListener(this);
        this.mLPlayIb.setOnClickListener(this);
        this.mRPlayIb.setOnClickListener(this);
        this.mVolume.setOnRangeChangedListener(new OnRangeChangedListener() { // from class: com.living.emo.activity.DiscActivity.14
            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStartTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStopTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onRangeChanged(RangeSeekBar rangeSeekBar, float f, float f2, boolean z) {
                if (z) {
                    float progress = rangeSeekBar.getLeftSeekBar().getProgress();
                    if (DiscActivity.this.mLPlayControl.isPlaying() && DiscActivity.this.mRPlayControl.isPlaying()) {
                        float f3 = 1.0f - progress;
                        if (progress > f3) {
                            DiscActivity.this.mSoundPool.setVolume(progress);
                        } else {
                            DiscActivity.this.mSoundPool.setVolume(f3);
                        }
                    } else if (DiscActivity.this.mLPlayControl.isPlaying()) {
                        DiscActivity.this.mSoundPool.setVolume(DiscActivity.this.mLPlayControl.getVolume());
                    } else {
                        DiscActivity.this.mSoundPool.setVolume(DiscActivity.this.mRPlayControl.getVolume());
                    }
                    DiscActivity.this.mLPlayControl.setVolume(progress);
                    DiscActivity.this.mRPlayControl.setVolume(1.0f - progress);
                }
            }
        });
        this.mLSpeed.setOnRangeChangedListener(new OnRangeChangedListener() { // from class: com.living.emo.activity.DiscActivity.15
            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStartTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStopTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onRangeChanged(RangeSeekBar rangeSeekBar, float f, float f2, boolean z) {
                if (z) {
                    float progress = rangeSeekBar.getLeftSeekBar().getProgress();
                    DiscActivity.this.mLPlayControl.speed(progress);
                    DiscActivity discActivity = DiscActivity.this;
                    discActivity.setBpmAndEdit(progress, discActivity.mLBpm);
                }
            }
        });
        this.mRSpeed.setOnRangeChangedListener(new OnRangeChangedListener() { // from class: com.living.emo.activity.DiscActivity.16
            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStartTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStopTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onRangeChanged(RangeSeekBar rangeSeekBar, float f, float f2, boolean z) {
                if (z) {
                    float progress = rangeSeekBar.getLeftSeekBar().getProgress();
                    DiscActivity.this.mRPlayControl.speed(progress);
                    DiscActivity discActivity = DiscActivity.this;
                    discActivity.setBpmAndEdit(progress, discActivity.mRBpm);
                }
            }
        });
        this.mLMusicBar.setOnSeekBarChangeListener(new MusicSpectrumBar.OnSeekChangeListener() { // from class: com.living.emo.activity.DiscActivity.17
            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onProgressChanged(int i, boolean z) {
            }

            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onStartTrackingTouch() {
                DiscActivity.this.isLeftUserTouch = true;
            }

            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onStopTrackingTouch(int i) {
                String str = DiscActivity.TAG;
                LogUtil.m64e(str, "onStopTrackingTouch: " + i);
                if (DiscActivity.this.mLPlayControl != null) {
                    DiscActivity.this.mLPlayControl.seekTo(i);
                }
                DiscActivity.this.isLeftUserTouch = false;
            }
        });
        this.mRMusicBar.setOnSeekBarChangeListener(new MusicSpectrumBar.OnSeekChangeListener() { // from class: com.living.emo.activity.DiscActivity.18
            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onProgressChanged(int i, boolean z) {
            }

            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onStartTrackingTouch() {
                DiscActivity.this.isRightUserTouch = true;
            }

            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onStopTrackingTouch(int i) {
                String str = DiscActivity.TAG;
                LogUtil.m64e(str, "onStopTrackingTouch: " + i);
                if (DiscActivity.this.mRPlayControl != null) {
                    DiscActivity.this.mRPlayControl.seekTo(i);
                }
                DiscActivity.this.isRightUserTouch = false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBpmAndEdit(float f, TextView textView) {
        textView.setText(new DecimalFormat("0.0").format(f * 128.0f));
    }

    private void initView() {
        this.mLAddIb = (ImageButton) findViewById(R.id.disc_l_add_ib);
        this.mRAddIb = (ImageButton) findViewById(R.id.disc_r_add_ib);
        this.mLPlayIb = (ImageButton) findViewById(R.id.disc_l_play_ib);
        this.mRPlayIb = (ImageButton) findViewById(R.id.disc_r_play_ib);
        this.mLDish = (ImageView) findViewById(R.id.disc_l_dish);
        this.mRDish = (ImageView) findViewById(R.id.disc_r_dish);
        VerticalRangeSeekBar verticalRangeSeekBar = (VerticalRangeSeekBar) findViewById(R.id.disc_volume);
        this.mVolume = verticalRangeSeekBar;
        verticalRangeSeekBar.setProgress(0.5f);
        this.mLSpeed = (VerticalRangeSeekBar) findViewById(R.id.disc_l_speed);
        this.mRSpeed = (VerticalRangeSeekBar) findViewById(R.id.disc_r_speed);
        this.mLSpeed.setProgress(1.0f);
        this.mRSpeed.setProgress(1.0f);
        this.mLMusicTitle = (TextView) findViewById(R.id.disc_l_music_title);
        this.mLMusicTime = (TextView) findViewById(R.id.disc_l_music_time);
        this.mRMusicTitle = (TextView) findViewById(R.id.disc_r_music_title);
        this.mRMusicTime = (TextView) findViewById(R.id.disc_r_music_time);
        this.mLMusicBar = (MusicSpectrumBar) findViewById(R.id.disc_l_Music_bar);
        this.mRMusicBar = (MusicSpectrumBar) findViewById(R.id.disc_r_Music_bar);
        TextView textView = (TextView) findViewById(R.id.disc_l_bpm_tv);
        this.mLBpm = textView;
        textView.setText(String.valueOf(128));
        TextView textView2 = (TextView) findViewById(R.id.disc_r_bpm_tv);
        this.mRBpm = textView2;
        textView2.setText(String.valueOf(128));
        this.mBtnGroup = (RecyclerView) findViewById(R.id.disc_btn_group);
        this.mBtnGroup.setLayoutManager(new GridLayoutManager(this, 5) { // from class: com.living.emo.activity.DiscActivity.19
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean canScrollVertically() {
                return false;
            }
        });
        DiscBtnGroupAdapter discBtnGroupAdapter = new DiscBtnGroupAdapter();
        this.mBtnGroup.setAdapter(discBtnGroupAdapter);
        discBtnGroupAdapter.setOnclickListener(new DiscBtnGroupAdapter.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$DiscActivity$CKsb3goZzqHUMjV9WOxrrr60oGs
            @Override // com.living.emo.adapter.DiscBtnGroupAdapter.OnClickListener
            public final void onClick(View view, int i) {
                DiscActivity.this.lambda$initView$3$DiscActivity(view, i);
            }
        });
        final ImageView imageView = (ImageView) findViewById(R.id.disc_back);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.DiscActivity.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                imageView.setEnabled(false);
                DiscActivity discActivity = DiscActivity.this;
                discActivity.write(discActivity.mBleDevice, CommandUtil.outApp());
                DiscActivity.this.finish();
                DiscActivity.this.closeThread();
            }
        });
    }

    public /* synthetic */ void lambda$initView$3$DiscActivity(View view, int i) {
        this.mSoundPool.play(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeThread() {
        ScheduledFuture<?> scheduledFuture = this.mScheduledFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.mScheduledFuture = null;
        }
        ScheduledFuture<?> scheduledFuture2 = this.playingScheduledFuture;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
            this.playingScheduledFuture = null;
        }
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(this.play);
        }
    }

    private void start(ImageButtonAnimation imageButtonAnimation, ImageView imageView) {
        if (imageButtonAnimation != null) {
            imageButtonAnimation.setRos((int) imageView.getRotation());
            imageButtonAnimation.start();
        }
    }

    private void cancel(ImageButtonAnimation imageButtonAnimation, ImageView imageView) {
        if (imageButtonAnimation != null) {
            imageButtonAnimation.setRos((int) imageView.getRotation());
            imageButtonAnimation.cancel();
        }
    }

    public void playOrPause(DiscControlPresenter discControlPresenter, ImageButtonAnimation imageButtonAnimation, ImageView imageView) {
        if (!discControlPresenter.isData()) {
            showToast(getResources().getString(R.string.choose_a_song));
        } else if (!discControlPresenter.isPlaying()) {
            discControlPresenter.play();
            start(imageButtonAnimation, imageView);
        } else {
            discControlPresenter.pause();
            cancel(imageButtonAnimation, imageView);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.disc_l_add_ib /* 2131296500 */:
                this.mDiscLWindow.setMusicList(this.mMusicList);
                this.mDiscLWindow.showAsDropDown(view, (int) BannerUtils.dp2px(-270.0f), 0, 5);
                return;
            case R.id.disc_l_play_ib /* 2131296505 */:
                String str = TAG;
                LogUtil.m64e(str, "onClick: " + this.mLPlayControl.isData());
                playOrPause(this.mLPlayControl, this.mLDishAnim, this.mLDish);
                return;
            case R.id.disc_r_add_ib /* 2131296508 */:
                this.mDiscRWindow.setMusicList(this.mMusicList);
                this.mDiscRWindow.showAsDropDown(view, (int) BannerUtils.dp2px(-270.0f), 0, 5);
                return;
            case R.id.disc_r_play_ib /* 2131296513 */:
                playOrPause(this.mRPlayControl, this.mRDishAnim, this.mRDish);
                return;
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.mLPlayControl.isPlaying()) {
            this.mLPlayControl.pause();
            cancel(this.mLDishAnim, this.mLDish);
        }
        if (this.mRPlayControl.isPlaying()) {
            this.mRPlayControl.pause();
            cancel(this.mRDishAnim, this.mRDish);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        finish();
        ScheduledFuture<?> scheduledFuture = this.mScheduledFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        ScheduledFuture<?> scheduledFuture2 = this.playingScheduledFuture;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mVolumeChangeObserver.unRegisterReceiver();
        DiscControlPresenter discControlPresenter = this.mLPlayControl;
        if (discControlPresenter != null) {
            discControlPresenter.unRegisterControlView();
        }
        DiscControlPresenter discControlPresenter2 = this.mRPlayControl;
        if (discControlPresenter2 != null) {
            discControlPresenter2.unRegisterControlView();
        }
        EventBus.getDefault().unregister(this);
    }

    @Override // com.living.emo.observer.VolumeChangeObserver.VolumeChangeListener
    public void onVolumeChanged(int i) {
        this.mVol = i;
    }
}
