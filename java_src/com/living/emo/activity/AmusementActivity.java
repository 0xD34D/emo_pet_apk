package com.living.emo.activity;

import android.animation.ValueAnimator;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.caesar.musicspectrumbarlibrary.MusicSpectrumBar;
import com.clj.fastble.data.BleDevice;
import com.jaygoo.widget.OnRangeChangedListener;
import com.jaygoo.widget.RangeSeekBar;
import com.jaygoo.widget.VerticalRangeSeekBar;
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
import com.living.emo.presenter.MusicsPresenters;
import com.living.emo.presenter.SoundsPresenter;
import com.living.emo.presenter.TouchPresenter;
import com.living.emo.service.MusicPlayerService1;
import com.living.emo.service.MusicPlayerService2;
import com.living.emo.util.CommandUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MathUtil;
import com.living.emo.view.LeftPopupWindow;
import com.living.emo.view.RightPopupWindow;
import com.livingai.emopet.R;
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
public class AmusementActivity extends BaseActivity implements View.OnClickListener, VolumeChangeObserver.VolumeChangeListener {
    private static final int MUSIC_VOLUME = 50;
    private static final int REQUEST_EXTERNAL_STORAGE = 1;
    private boolean isMusic1;
    private boolean isMusic2;
    private boolean isRightUserTouch;
    private BleDevice mBleDevice;
    private Button mBtNote1;
    private Button mBtNote10;
    private Button mBtNote11;
    private Button mBtNote12;
    private Button mBtNote2;
    private Button mBtNote3;
    private Button mBtNote4;
    private Button mBtNote5;
    private Button mBtNote6;
    private Button mBtNote7;
    private Button mBtNote8;
    private Button mBtNote9;
    private ImageButton mClose;
    private List<MusicBean.DataBean> mData;
    private float mDecimalVolume;
    private ProgressDialog mDialog;
    private ValueAnimator mEnterAnimation;
    private ImageButton mIvLeftMusic;
    private ImageButton mIvRightMusic;
    private LinearLayout mLeftAddMusicContainer;
    private ImageButtonAnimation mLeftAnim;
    private TextView mLeftBpm;
    private ImageView mLeftDish;
    private TextView mLeftEdit;
    private MusicSpectrumBar mLeftMusic;
    private LinearLayout mLeftMusicContainer;
    private TextView mLeftName;
    private LeftPopupWindow mLeftPopupWindow;
    private VerticalRangeSeekBar mLeftSeekBar;
    private ImageButton mLeftStart;
    private TextView mLeftTime;
    private TouchPresenter mLeftTouch;
    private MusicsPresenters mMusicsPresenters;
    private ValueAnimator mOuterAnimation;
    private LinearLayout mRightAddMusicContainer;
    private ImageButtonAnimation mRightAnim;
    private TextView mRightBpm;
    private ImageView mRightDish;
    private TextView mRightEdit;
    private MusicSpectrumBar mRightMusic;
    private LinearLayout mRightMusicContainer;
    private TextView mRightName;
    private RightPopupWindow mRightPopupWindow;
    private VerticalRangeSeekBar mRightSeekBar;
    private ImageButton mRightStart;
    private TextView mRightTime;
    private TouchPresenter mRightTouch;
    private VerticalRangeSeekBar mSeekBaretVolumeKey;
    private SoundsPresenter mSoundsPresenter;
    private TextView mTvLeftMusic;
    private TextView mTvrightMusic;
    private static final String TAG = "zxl::" + AmusementActivity.class.getName();
    private static String[] PERMISSIONS_STORAGE = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"};
    private int bpmValue = 128;
    private PlayerConnect1 mPlayerConnect1 = null;
    private IPlayerControlPresenter mPlayerControlPresenter1 = null;
    private VolumeChangeObserver mVolumeChangeObserver = null;
    private IMusicsControlViewCallback mMusicsControlViewCallback = new IMusicsControlViewCallback() { // from class: com.living.emo.activity.AmusementActivity.1
        @Override // com.living.emo.interfaces.IMusicsControlViewCallback
        public void onMusicListLoad(List<MusicBean.DataBean> list) {
            if (list != null) {
                AmusementActivity.this.mData = list;
            }
        }
    };
    private boolean isLeftUserTouch = false;
    private Handler handler = new Handler();
    private Runnable delayed = new Runnable() { // from class: com.living.emo.activity.AmusementActivity.3
        @Override // java.lang.Runnable
        public void run() {
            AmusementActivity.this.mDialog.dismiss();
            AmusementActivity.this.finish();
            AmusementActivity amusementActivity = AmusementActivity.this;
            amusementActivity.write(amusementActivity.mBleDevice, CommandUtil.outApp());
        }
    };
    private PlayerConnect2 mPlayerConnect2 = null;
    private IPlayerControlPresenter mPlayerControlPresenter2 = null;
    private IPlayerControlView mPlayerControlView1 = new IPlayerControlView() { // from class: com.living.emo.activity.AmusementActivity.4
        @Override // com.living.emo.interfaces.IPlayerControlView
        public void playOnChangeSate(int i) {
            if (i == 1) {
                AmusementActivity.this.mLeftStart.setImageResource(R.drawable.game_icon_pause);
            } else if (i == 2) {
                AmusementActivity.this.mLeftStart.setImageResource(R.drawable.game_icon_play);
            } else if (i == 3) {
                LogUtil.m65d(AmusementActivity.TAG, "MEDIA_STOP_STATE:3");
                if (AmusementActivity.this.mLeftAnim != null) {
                    AmusementActivity.this.mLeftAnim.end();
                    AmusementActivity.this.mLeftDish.setRotation(0.0f);
                    AmusementActivity.this.mLeftAnim.setRos(0).setValues();
                }
                AmusementActivity.this.mLeftStart.setImageResource(R.drawable.game_icon_play);
            }
        }

        @Override // com.living.emo.interfaces.IPlayerControlView
        public void onChangeSeekBar(final String str, final int i) {
            AmusementActivity.this.runOnUiThread(new Runnable() { // from class: com.living.emo.activity.AmusementActivity.4.1
                @Override // java.lang.Runnable
                public void run() {
                    AmusementActivity.this.mLeftTime.setText(str);
                    if (!AmusementActivity.this.isLeftUserTouch) {
                        AmusementActivity.this.mLeftMusic.setCurrent(i);
                    }
                }
            });
        }

        @Override // com.living.emo.interfaces.IPlayerControlView
        public void musicInfo(MusicInfo musicInfo) {
            AmusementActivity.this.mLeftName.setText(musicInfo.getName());
            AmusementActivity.this.mLeftTime.setText(musicInfo.getTime());
        }
    };
    private IPlayerControlView mPlayerControlView2 = new IPlayerControlView() { // from class: com.living.emo.activity.AmusementActivity.5
        @Override // com.living.emo.interfaces.IPlayerControlView
        public void playOnChangeSate(int i) {
            if (i == 1) {
                AmusementActivity.this.mRightStart.setImageResource(R.drawable.game_icon_pause);
            } else if (i == 2) {
                AmusementActivity.this.mRightStart.setImageResource(R.drawable.game_icon_play);
            } else if (i == 3) {
                LogUtil.m65d(AmusementActivity.TAG, "MEDIA_STOP_STATE:3r");
                if (AmusementActivity.this.mRightAnim != null) {
                    AmusementActivity.this.mRightAnim.end();
                    AmusementActivity.this.mRightDish.setRotation(0.0f);
                    AmusementActivity.this.mRightAnim.setRos(0).setValues();
                }
                AmusementActivity.this.mRightStart.setImageResource(R.drawable.game_icon_play);
            }
        }

        @Override // com.living.emo.interfaces.IPlayerControlView
        public void onChangeSeekBar(final String str, final int i) {
            AmusementActivity.this.runOnUiThread(new Runnable() { // from class: com.living.emo.activity.AmusementActivity.5.1
                @Override // java.lang.Runnable
                public void run() {
                    AmusementActivity.this.mRightTime.setText(str);
                    if (!AmusementActivity.this.isRightUserTouch) {
                        AmusementActivity.this.mRightMusic.setCurrent(i);
                    }
                }
            });
        }

        @Override // com.living.emo.interfaces.IPlayerControlView
        public void musicInfo(MusicInfo musicInfo) {
            if (musicInfo != null) {
                AmusementActivity.this.mRightName.setText(musicInfo.getName());
                AmusementActivity.this.mRightTime.setText(musicInfo.getTime());
            }
        }
    };
    private ScheduledExecutorService executorService = Executors.newScheduledThreadPool(3);
    private boolean isPlaying = false;
    private boolean isProcessing = false;
    private boolean isTask = false;
    private ScheduledFuture<?> playingScheduledFuture = null;
    private Runnable play = new Runnable() { // from class: com.living.emo.activity.AmusementActivity.6
        @Override // java.lang.Runnable
        public void run() {
            if ((AmusementActivity.this.isMusic1 || AmusementActivity.this.isMusic2) && AmusementActivity.this.mDecimalVolume > 0.0f && !AmusementActivity.this.isProcessing) {
                AmusementActivity amusementActivity = AmusementActivity.this;
                amusementActivity.write(amusementActivity.mBleDevice, CommandUtil.dazzling(1, AmusementActivity.this.getBpmValue()));
                AmusementActivity.this.isProcessing = true;
            }
        }
    };
    private Runnable stop = new Runnable() { // from class: com.living.emo.activity.AmusementActivity.7
        @Override // java.lang.Runnable
        public void run() {
            if ((!AmusementActivity.this.isMusic1 && !AmusementActivity.this.isMusic2) || AmusementActivity.this.mDecimalVolume <= 0.0f) {
                LogUtil.m64e(AmusementActivity.TAG, "run: stop33223");
                if (AmusementActivity.this.isProcessing) {
                    AmusementActivity amusementActivity = AmusementActivity.this;
                    amusementActivity.write(amusementActivity.mBleDevice, CommandUtil.stay());
                    AmusementActivity.this.isProcessing = false;
                }
            }
        }
    };
    private boolean isDance = false;
    private Runnable playing = new Runnable() { // from class: com.living.emo.activity.AmusementActivity.8
        @Override // java.lang.Runnable
        public void run() {
            if ((!AmusementActivity.this.isMusic1 && !AmusementActivity.this.isMusic2) || AmusementActivity.this.mDecimalVolume <= 0.0f) {
                return;
            }
            if (AmusementActivity.this.isDance) {
                AmusementActivity amusementActivity = AmusementActivity.this;
                amusementActivity.write(amusementActivity.mBleDevice, CommandUtil.dance(1, AmusementActivity.this.getBpmValue()));
                AmusementActivity.this.isDance = false;
                return;
            }
            AmusementActivity amusementActivity2 = AmusementActivity.this;
            amusementActivity2.write(amusementActivity2.mBleDevice, CommandUtil.legShaking(1, AmusementActivity.this.getBpmValue()));
            AmusementActivity.this.isDance = true;
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_amusement);
        EventBus.getDefault().register(this);
        initBle();
        initReceiver();
        initView();
        initData();
        initStartService();
        initBindService();
        initEvents();
        initAnimation();
        initPopupWindow();
        initTouchEvents();
        checkPermissions();
        initSoundsPresenter();
        initProgressDialog();
        initVolume();
        initTimer();
    }

    private void initBle() {
        BleDevice bleDevice = BleBean.getInstance().getBleDevice();
        this.mBleDevice = bleDevice;
        write(bleDevice, CommandUtil.enterApp(7));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent messageEvent) {
        AmusementBean.AmusementNotify(messageEvent.getData(), new AmusementBean.AmusementResponse() { // from class: com.living.emo.activity.AmusementActivity.2
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
                AmusementActivity.this.handler.postDelayed(new Runnable() { // from class: com.living.emo.activity.AmusementActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AmusementActivity.this.mData != null) {
                            String str = AmusementActivity.TAG;
                            LogUtil.m64e(str, "run: mData===>" + AmusementActivity.this.mData.size());
                            int floor = (int) Math.floor(Math.random() * ((double) AmusementActivity.this.mData.size()));
                            AmusementActivity.this.mPlayerControlPresenter1.reset();
                            AmusementActivity.this.mPlayerControlPresenter1.setData((MusicBean.DataBean) AmusementActivity.this.mData.get(floor));
                            AmusementActivity.this.mLeftAddMusicContainer.setVisibility(8);
                            AmusementActivity.this.mLeftMusicContainer.setVisibility(0);
                            AmusementActivity.this.playOrPause(AmusementActivity.this.mPlayerControlPresenter1, AmusementActivity.this.mLeftAnim, AmusementActivity.this.mLeftDish);
                        }
                        if (AmusementActivity.this.mDecimalVolume > 0.0f) {
                            AmusementActivity.this.write(AmusementActivity.this.mBleDevice, CommandUtil.dazzling(1, AmusementActivity.this.getBpmValue()));
                            AmusementActivity.this.isProcessing = true;
                        }
                        AmusementActivity.this.mDialog.dismiss();
                        AmusementActivity.this.handler.removeCallbacks(AmusementActivity.this.delayed);
                    }
                }, 1000L);
            }

            @Override // com.living.emo.bean.AmusementBean.AmusementResponse
            public void GameOver() {
                AmusementActivity.this.finish();
            }
        });
    }

    private void initProgressDialog() {
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.mDialog = progressDialog;
        progressDialog.setMessage("One moment please...");
        this.mDialog.setCancelable(false);
        this.mDialog.show();
        this.handler.postDelayed(this.delayed, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PlayerConnect1 implements ServiceConnection {
        private PlayerConnect1() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtil.m65d(AmusementActivity.TAG, "----------mPlayerControlPresenter1-------------");
            if (AmusementActivity.this.mPlayerControlPresenter1 == null) {
                AmusementActivity.this.mPlayerControlPresenter1 = (IPlayerControlPresenter) iBinder;
                AmusementActivity.this.mPlayerControlPresenter1.registerControlView(AmusementActivity.this.mPlayerControlView1);
                AmusementActivity.this.mPlayerControlPresenter1.notificationChange();
                String str = AmusementActivity.TAG;
                LogUtil.m65d(str, "mPlayerControlPresenter1.getVolume()" + AmusementActivity.this.mPlayerControlPresenter1.getVolume());
                if (AmusementActivity.this.mPlayerControlPresenter1.getVolume() == 50.0f) {
                    AmusementActivity.this.mSeekBaretVolumeKey.setProgress(50.0f);
                } else {
                    AmusementActivity.this.mSeekBaretVolumeKey.setProgress(AmusementActivity.this.mPlayerControlPresenter1.getVolume() * 100.0f);
                }
                AmusementActivity.this.mLeftSeekBar.setProgress(AmusementActivity.this.mPlayerControlPresenter1.getSpeed());
                AmusementActivity amusementActivity = AmusementActivity.this;
                amusementActivity.setBpmAndEdit(amusementActivity.mPlayerControlPresenter1.getSpeed(), AmusementActivity.this.mLeftBpm, AmusementActivity.this.mLeftEdit);
                if (AmusementActivity.this.mPlayerControlPresenter1.isData()) {
                    AmusementActivity.this.mLeftMusicContainer.setVisibility(0);
                    AmusementActivity.this.mLeftAddMusicContainer.setVisibility(8);
                    return;
                }
                AmusementActivity.this.mLeftMusicContainer.setVisibility(8);
                AmusementActivity.this.mLeftAddMusicContainer.setVisibility(0);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (AmusementActivity.this.mPlayerControlPresenter1 != null) {
                AmusementActivity.this.mPlayerControlPresenter1.unRegisterControlView();
                AmusementActivity.this.mPlayerControlPresenter1 = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PlayerConnect2 implements ServiceConnection {
        private PlayerConnect2() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtil.m65d(AmusementActivity.TAG, "----------mPlayerControlPresenter2-------------");
            if (AmusementActivity.this.mPlayerControlPresenter2 == null) {
                AmusementActivity.this.mPlayerControlPresenter2 = (IPlayerControlPresenter) iBinder;
                AmusementActivity.this.mPlayerControlPresenter2.registerControlView(AmusementActivity.this.mPlayerControlView2);
                AmusementActivity.this.mPlayerControlPresenter2.notificationChange();
                AmusementActivity.this.mRightSeekBar.setProgress(AmusementActivity.this.mPlayerControlPresenter2.getSpeed());
                AmusementActivity amusementActivity = AmusementActivity.this;
                amusementActivity.setBpmAndEdit(amusementActivity.mPlayerControlPresenter2.getSpeed(), AmusementActivity.this.mRightBpm, AmusementActivity.this.mRightEdit);
                if (AmusementActivity.this.mPlayerControlPresenter2.isData()) {
                    AmusementActivity.this.mRightAddMusicContainer.setVisibility(8);
                    AmusementActivity.this.mRightMusicContainer.setVisibility(0);
                    return;
                }
                AmusementActivity.this.mRightAddMusicContainer.setVisibility(0);
                AmusementActivity.this.mRightMusicContainer.setVisibility(8);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            if (AmusementActivity.this.mPlayerControlPresenter2 != null) {
                AmusementActivity.this.mPlayerControlPresenter2.unRegisterControlView();
                AmusementActivity.this.mPlayerControlPresenter2 = null;
            }
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

    private void initTimer() {
        this.executorService.scheduleAtFixedRate(new TimerInterval(), 0L, 100L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TimerInterval implements Runnable {
        private TimerInterval() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!(AmusementActivity.this.mPlayerControlPresenter1 == null || AmusementActivity.this.mPlayerControlPresenter2 == null)) {
                AmusementActivity amusementActivity = AmusementActivity.this;
                amusementActivity.isMusic1 = amusementActivity.mPlayerControlPresenter1.isPlaying();
                AmusementActivity amusementActivity2 = AmusementActivity.this;
                amusementActivity2.isMusic2 = amusementActivity2.mPlayerControlPresenter2.isPlaying();
            }
            if ((AmusementActivity.this.isMusic1 || AmusementActivity.this.isMusic2) && AmusementActivity.this.mDecimalVolume > 0.0f) {
                if (!AmusementActivity.this.isPlaying) {
                    AmusementActivity.this.handler.postDelayed(AmusementActivity.this.play, 5000L);
                    AmusementActivity.this.isPlaying = true;
                }
            } else if (((!AmusementActivity.this.isMusic1 && !AmusementActivity.this.isMusic2) || AmusementActivity.this.mDecimalVolume <= 0.0f) && AmusementActivity.this.isPlaying) {
                AmusementActivity.this.handler.removeCallbacks(AmusementActivity.this.play);
                AmusementActivity.this.handler.postDelayed(AmusementActivity.this.stop, 5000L);
                AmusementActivity.this.isPlaying = false;
            }
            if (AmusementActivity.this.isProcessing) {
                if (!AmusementActivity.this.isTask) {
                    String str = AmusementActivity.TAG;
                    LogUtil.m65d(str, "run:isTask " + AmusementActivity.this.isTask);
                    AmusementActivity amusementActivity3 = AmusementActivity.this;
                    amusementActivity3.playingScheduledFuture = amusementActivity3.executorService.scheduleAtFixedRate(AmusementActivity.this.playing, 10L, 20L, TimeUnit.SECONDS);
                    AmusementActivity.this.isTask = true;
                }
            } else if (AmusementActivity.this.isTask) {
                String str2 = AmusementActivity.TAG;
                LogUtil.m65d(str2, "run:isTask " + AmusementActivity.this.isTask);
                AmusementActivity.this.playingScheduledFuture.cancel(false);
                AmusementActivity.this.isTask = false;
            }
        }
    }

    public int getBpmValue() {
        float speed = this.mPlayerControlPresenter1.getSpeed();
        speed = this.mPlayerControlPresenter2.getSpeed();
        float volume = this.mPlayerControlPresenter1.getVolume();
        float volume2 = this.mPlayerControlPresenter2.getVolume();
        String str = TAG;
        LogUtil.m64e(str, "getBpmValue:volume1 " + volume);
        LogUtil.m64e(str, "getBpmValue:volume2 " + volume2);
        if (!this.mPlayerControlPresenter1.isPlaying() || !this.mPlayerControlPresenter2.isPlaying() ? !this.mPlayerControlPresenter1.isPlaying() : volume <= volume2) {
        }
        return (int) (this.bpmValue * speed);
    }

    private void initVolume() {
        VolumeChangeObserver volumeChangeObserver = this.mVolumeChangeObserver;
        if (volumeChangeObserver != null) {
            this.mDecimalVolume = volumeChangeObserver.getDecimalVolume();
            String str = TAG;
            LogUtil.m63i(str, "initVolume: ====>" + this.mDecimalVolume);
            SoundsPresenter soundsPresenter = this.mSoundsPresenter;
            if (soundsPresenter != null) {
                soundsPresenter.setVolume(this.mDecimalVolume);
            }
        }
    }

    private void initReceiver() {
        if (this.mVolumeChangeObserver == null) {
            VolumeChangeObserver volumeChangeObserver = new VolumeChangeObserver();
            this.mVolumeChangeObserver = volumeChangeObserver;
            volumeChangeObserver.registerReceiver();
            this.mVolumeChangeObserver.setVolumeChangeListener(this);
        }
    }

    @Override // com.living.emo.observer.VolumeChangeObserver.VolumeChangeListener
    public void onVolumeChanged(int i) {
        initVolume();
    }

    private void initSoundsPresenter() {
        if (this.mSoundsPresenter == null) {
            this.mSoundsPresenter = SoundsPresenter.getInstance();
        }
    }

    private void initBindService() {
        String str = TAG;
        LogUtil.m65d(str, "----------MusicPlayerService1-------------");
        if (this.mPlayerConnect1 == null) {
            this.mPlayerConnect1 = new PlayerConnect1();
        }
        bindService(new Intent(this, MusicPlayerService1.class), this.mPlayerConnect1, 1);
        if (this.mPlayerConnect2 == null) {
            this.mPlayerConnect2 = new PlayerConnect2();
        }
        bindService(new Intent(this, MusicPlayerService2.class), this.mPlayerConnect2, 1);
        LogUtil.m65d(str, "----------MusicPlayerService2-------------");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    private void initTouchEvents() {
        if (this.mLeftTouch == null) {
            this.mLeftTouch = new TouchPresenter();
            this.mLeftDish.postDelayed(new Runnable() { // from class: com.living.emo.activity.AmusementActivity.9
                @Override // java.lang.Runnable
                public void run() {
                    int[] iArr = new int[2];
                    AmusementActivity.this.mLeftDish.getLocationOnScreen(iArr);
                    int width = AmusementActivity.this.mLeftDish.getWidth();
                    int height = AmusementActivity.this.mLeftDish.getHeight();
                    if (iArr[0] != 0 && iArr[1] != 0) {
                        AmusementActivity.this.mLeftTouch.setCenterPoint(iArr[0] + (width / 2), iArr[1] + (height / 2));
                        String str = AmusementActivity.TAG;
                        LogUtil.m65d(str, "-------locations[0] :" + iArr[0] + "-----------width:" + width);
                        String str2 = AmusementActivity.TAG;
                        LogUtil.m65d(str2, "-------locations[1] :" + iArr[1] + "-----------height:" + height);
                    }
                }
            }, 100L);
            this.mLeftTouch.setTouchListener(new TouchPresenter.TouchListener() { // from class: com.living.emo.activity.AmusementActivity.10
                private boolean mIsPlaying;

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onTouchDownAcion() {
                    this.mIsPlaying = AmusementActivity.this.mPlayerControlPresenter1.isPlaying();
                    String str = AmusementActivity.TAG;
                    LogUtil.m65d(str, "==mLeftTouch===onTouchDownAcion=====" + AmusementActivity.this.mPlayerControlPresenter1.isPlaying());
                    AmusementActivity amusementActivity = AmusementActivity.this;
                    amusementActivity.touchPress(amusementActivity.mPlayerControlPresenter1, AmusementActivity.this.mLeftAnim, AmusementActivity.this.mLeftDish);
                }

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onTouchUpAcion() {
                    AmusementActivity amusementActivity = AmusementActivity.this;
                    amusementActivity.touchUpLift(amusementActivity.mPlayerControlPresenter1, AmusementActivity.this.mLeftAnim, AmusementActivity.this.mLeftDish, this.mIsPlaying);
                    String str = AmusementActivity.TAG;
                    LogUtil.m65d(str, "==mLeftTouch====onTouchUpAcion=======" + this.mIsPlaying);
                }

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onPlaySound() {
                    if (AmusementActivity.this.mSoundsPresenter != null) {
                        AmusementActivity.this.mSoundsPresenter.play(11);
                    }
                }
            });
        }
        if (this.mRightTouch == null) {
            this.mRightTouch = new TouchPresenter();
            this.mLeftDish.postDelayed(new Runnable() { // from class: com.living.emo.activity.AmusementActivity.11
                @Override // java.lang.Runnable
                public void run() {
                    int[] iArr = new int[2];
                    AmusementActivity.this.mRightDish.getLocationOnScreen(iArr);
                    int width = AmusementActivity.this.mRightDish.getWidth();
                    int height = AmusementActivity.this.mRightDish.getHeight();
                    if (iArr[0] != 0 && iArr[1] != 0) {
                        AmusementActivity.this.mRightTouch.setCenterPoint(iArr[0] + (width / 2), iArr[1] + (height / 2));
                        String str = AmusementActivity.TAG;
                        LogUtil.m65d(str, "-------locations[0] :" + iArr[0] + "-----------width:" + width);
                        String str2 = AmusementActivity.TAG;
                        LogUtil.m65d(str2, "-------locations[1] :" + iArr[1] + "-----------height:" + height);
                    }
                }
            }, 100L);
            this.mRightTouch.setTouchListener(new TouchPresenter.TouchListener() { // from class: com.living.emo.activity.AmusementActivity.12
                private boolean mIsPlaying;

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onTouchDownAcion() {
                    this.mIsPlaying = AmusementActivity.this.mPlayerControlPresenter2.isPlaying();
                    String str = AmusementActivity.TAG;
                    LogUtil.m65d(str, "==mRightTouch===onTouchDownAcion=====" + AmusementActivity.this.mPlayerControlPresenter2.isPlaying());
                    AmusementActivity amusementActivity = AmusementActivity.this;
                    amusementActivity.touchPress(amusementActivity.mPlayerControlPresenter2, AmusementActivity.this.mRightAnim, AmusementActivity.this.mRightDish);
                    LogUtil.m65d(AmusementActivity.TAG, "==mRightTouch===onTouchDownAcion=====");
                }

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onTouchUpAcion() {
                    AmusementActivity amusementActivity = AmusementActivity.this;
                    amusementActivity.touchUpLift(amusementActivity.mPlayerControlPresenter2, AmusementActivity.this.mRightAnim, AmusementActivity.this.mRightDish, this.mIsPlaying);
                    String str = AmusementActivity.TAG;
                    LogUtil.m65d(str, "==mRightTouch====onTouchUpAcion=======" + this.mIsPlaying);
                }

                @Override // com.living.emo.presenter.TouchPresenter.TouchListener
                public void onPlaySound() {
                    if (AmusementActivity.this.mSoundsPresenter != null) {
                        AmusementActivity.this.mSoundsPresenter.play(3);
                    }
                }
            });
        }
        this.mLeftDish.setOnTouchListener(new View.OnTouchListener() { // from class: com.living.emo.activity.AmusementActivity.13
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (AmusementActivity.this.mLeftTouch == null) {
                    return true;
                }
                AmusementActivity.this.mLeftTouch.onTouch(AmusementActivity.this.mLeftDish, motionEvent);
                return true;
            }
        });
        this.mRightDish.setOnTouchListener(new View.OnTouchListener() { // from class: com.living.emo.activity.AmusementActivity.14
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (AmusementActivity.this.mRightTouch == null) {
                    return true;
                }
                AmusementActivity.this.mRightTouch.onTouch(AmusementActivity.this.mRightDish, motionEvent);
                return true;
            }
        });
    }

    private void checkPermissions() {
        int checkSelfPermission = ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE");
        int checkSelfPermission2 = ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE");
        int checkSelfPermission3 = ContextCompat.checkSelfPermission(this, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS");
        if (checkSelfPermission2 != 0) {
            ActivityCompat.requestPermissions(this, PERMISSIONS_STORAGE, 1);
        }
        if (checkSelfPermission != 0) {
            ActivityCompat.requestPermissions(this, PERMISSIONS_STORAGE, 1);
        }
        if (checkSelfPermission3 != 0) {
            ActivityCompat.requestPermissions(this, PERMISSIONS_STORAGE, 1);
        }
    }

    private void initStartService() {
        LogUtil.m65d(TAG, "----------initStartService-------------");
        startService(new Intent(this, MusicPlayerService1.class));
        startService(new Intent(this, MusicPlayerService2.class));
    }

    private void initData() {
        MusicsPresenters instance = MusicsPresenters.getInstance();
        this.mMusicsPresenters = instance;
        instance.registerControlView(this.mMusicsControlViewCallback);
        this.mMusicsPresenters.getMusicList();
    }

    private void initAnimation() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.4f);
        this.mEnterAnimation = ofFloat;
        ofFloat.setDuration(500L);
        this.mEnterAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.living.emo.activity.AmusementActivity.15
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AmusementActivity.this.updateAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.4f, 1.0f);
        this.mOuterAnimation = ofFloat2;
        ofFloat2.setDuration(500L);
        this.mOuterAnimation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.living.emo.activity.AmusementActivity.16
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AmusementActivity.this.updateAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        if (this.mLeftAnim == null) {
            ImageButtonAnimation imageButtonAnimation = new ImageButtonAnimation();
            this.mLeftAnim = imageButtonAnimation;
            imageButtonAnimation.setView(this.mLeftDish).init();
        }
        if (this.mRightAnim == null) {
            ImageButtonAnimation imageButtonAnimation2 = new ImageButtonAnimation();
            this.mRightAnim = imageButtonAnimation2;
            imageButtonAnimation2.setView(this.mRightDish).init();
        }
    }

    private void initPopupWindow() {
        LeftPopupWindow leftPopupWindow = new LeftPopupWindow();
        this.mLeftPopupWindow = leftPopupWindow;
        leftPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.living.emo.activity.AmusementActivity.17
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                AmusementActivity.this.mOuterAnimation.start();
            }
        });
        this.mLeftPopupWindow.setPlayerItemListener(new LeftPopupWindow.PlayerItemListener() { // from class: com.living.emo.activity.AmusementActivity.18
            @Override // com.living.emo.view.LeftPopupWindow.PlayerItemListener
            public void onPlayerItem(MusicBean.DataBean dataBean) {
                if (dataBean != null && AmusementActivity.this.mPlayerControlPresenter1 != null) {
                    LogUtil.m65d(AmusementActivity.TAG, "mPlayerControlPresenter1----------onPlayerItem");
                    AmusementActivity.this.mPlayerControlPresenter1.reset();
                    AmusementActivity.this.mPlayerControlPresenter1.setData(dataBean);
                    AmusementActivity.this.mLeftAddMusicContainer.setVisibility(8);
                    AmusementActivity.this.mLeftMusicContainer.setVisibility(0);
                }
            }
        });
        RightPopupWindow rightPopupWindow = new RightPopupWindow();
        this.mRightPopupWindow = rightPopupWindow;
        rightPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.living.emo.activity.AmusementActivity.19
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                AmusementActivity.this.mOuterAnimation.start();
            }
        });
        this.mRightPopupWindow.setPlayerItemClickListener(new RightPopupWindow.PlayerItemClickListener() { // from class: com.living.emo.activity.AmusementActivity.20
            @Override // com.living.emo.view.RightPopupWindow.PlayerItemClickListener
            public void playerItemClick(MusicBean.DataBean dataBean) {
                if (dataBean != null && AmusementActivity.this.mPlayerControlPresenter2 != null) {
                    LogUtil.m65d(AmusementActivity.TAG, "mPlayerControlPresenter2----------playerItemClick");
                    AmusementActivity.this.mPlayerControlPresenter2.reset();
                    AmusementActivity.this.mPlayerControlPresenter2.setData(dataBean);
                    AmusementActivity.this.mRightAddMusicContainer.setVisibility(8);
                    AmusementActivity.this.mRightMusicContainer.setVisibility(0);
                }
            }
        });
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

    private void initEvents() {
        this.mIvLeftMusic.setOnClickListener(this);
        this.mTvLeftMusic.setOnClickListener(this);
        this.mIvRightMusic.setOnClickListener(this);
        this.mTvrightMusic.setOnClickListener(this);
        this.mLeftStart.setOnClickListener(this);
        this.mRightStart.setOnClickListener(this);
        this.mBtNote1.setOnClickListener(this);
        this.mBtNote2.setOnClickListener(this);
        this.mBtNote3.setOnClickListener(this);
        this.mBtNote4.setOnClickListener(this);
        this.mBtNote5.setOnClickListener(this);
        this.mBtNote6.setOnClickListener(this);
        this.mBtNote7.setOnClickListener(this);
        this.mBtNote8.setOnClickListener(this);
        this.mBtNote9.setOnClickListener(this);
        this.mBtNote10.setOnClickListener(this);
        this.mBtNote11.setOnClickListener(this);
        this.mBtNote12.setOnClickListener(this);
        this.mSeekBaretVolumeKey.setOnRangeChangedListener(new OnRangeChangedListener() { // from class: com.living.emo.activity.AmusementActivity.21
            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStartTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStopTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onRangeChanged(RangeSeekBar rangeSeekBar, float f, float f2, boolean z) {
                if (z) {
                    int progress = (int) rangeSeekBar.getLeftSeekBar().getProgress();
                    if (progress < 50) {
                        AmusementActivity.this.lessFifty(progress);
                    } else if (progress == 50) {
                        AmusementActivity.this.equalFifty(progress);
                    } else {
                        AmusementActivity.this.moreFifty(progress);
                    }
                }
            }
        });
        this.mLeftSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() { // from class: com.living.emo.activity.AmusementActivity.22
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
                    String str = AmusementActivity.TAG;
                    LogUtil.m64e(str, "onRangeChanged: decimal===>" + progress);
                    if (AmusementActivity.this.mPlayerControlPresenter1 != null) {
                        AmusementActivity.this.mPlayerControlPresenter1.speed(progress);
                        AmusementActivity amusementActivity = AmusementActivity.this;
                        amusementActivity.setBpmAndEdit(progress, amusementActivity.mLeftBpm, AmusementActivity.this.mLeftEdit);
                    }
                }
            }
        });
        this.mRightSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() { // from class: com.living.emo.activity.AmusementActivity.23
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
                    String str = AmusementActivity.TAG;
                    LogUtil.m64e(str, "onRangeChanged: decimal===>" + progress);
                    if (AmusementActivity.this.mPlayerControlPresenter2 != null) {
                        AmusementActivity.this.mPlayerControlPresenter2.speed(progress);
                        AmusementActivity amusementActivity = AmusementActivity.this;
                        amusementActivity.setBpmAndEdit(progress, amusementActivity.mRightBpm, AmusementActivity.this.mRightEdit);
                    }
                }
            }
        });
        this.mLeftMusic.setOnSeekBarChangeListener(new MusicSpectrumBar.OnSeekChangeListener() { // from class: com.living.emo.activity.AmusementActivity.24
            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onProgressChanged(int i, boolean z) {
            }

            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onStartTrackingTouch() {
                AmusementActivity.this.isLeftUserTouch = true;
            }

            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onStopTrackingTouch(int i) {
                if (AmusementActivity.this.mPlayerControlPresenter1 != null) {
                    AmusementActivity.this.mPlayerControlPresenter1.seekTo(i);
                }
                AmusementActivity.this.isLeftUserTouch = false;
            }
        });
        this.mRightMusic.setOnSeekBarChangeListener(new MusicSpectrumBar.OnSeekChangeListener() { // from class: com.living.emo.activity.AmusementActivity.25
            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onProgressChanged(int i, boolean z) {
            }

            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onStartTrackingTouch() {
                AmusementActivity.this.isRightUserTouch = true;
            }

            @Override // com.caesar.musicspectrumbarlibrary.MusicSpectrumBar.OnSeekChangeListener
            public void onStopTrackingTouch(int i) {
                if (AmusementActivity.this.mPlayerControlPresenter2 != null) {
                    AmusementActivity.this.mPlayerControlPresenter2.seekTo(i);
                }
                AmusementActivity.this.isRightUserTouch = false;
            }
        });
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.AmusementActivity.26
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AmusementActivity amusementActivity = AmusementActivity.this;
                amusementActivity.write(amusementActivity.mBleDevice, CommandUtil.outApp());
                AmusementActivity.this.finish();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBpmAndEdit(float f, TextView textView, TextView textView2) {
        float f2 = 128.0f * f;
        DecimalFormat decimalFormat = new DecimalFormat("0.0");
        int i = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
        if (i == 0) {
            textView.setText(decimalFormat.format(128L));
            textView2.setText("±" + decimalFormat.format(0.0d) + "%");
        } else if (f < 1.0f) {
            textView.setText(decimalFormat.format(f2));
            textView2.setText("-" + decimalFormat.format((1.0f - f) * 100.0f) + "%");
        } else if (i > 0) {
            textView.setText(decimalFormat.format(f2));
            textView2.setText("+" + decimalFormat.format((f - 1.0f) * 100.0f) + "%");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moreFifty(int i) {
        float f = i * 0.01f;
        IPlayerControlPresenter iPlayerControlPresenter = this.mPlayerControlPresenter1;
        if (iPlayerControlPresenter != null) {
            iPlayerControlPresenter.setVolume(f);
        }
        IPlayerControlPresenter iPlayerControlPresenter2 = this.mPlayerControlPresenter2;
        if (iPlayerControlPresenter2 != null) {
            iPlayerControlPresenter2.setVolume(1.0f - f);
        }
        SoundsPresenter soundsPresenter = this.mSoundsPresenter;
        if (soundsPresenter != null) {
            soundsPresenter.setVolume(MathUtil.twoDecimal(MathUtil.multiplication(this.mDecimalVolume, f)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void equalFifty(int i) {
        float f = i * 0.01f;
        IPlayerControlPresenter iPlayerControlPresenter = this.mPlayerControlPresenter1;
        if (iPlayerControlPresenter != null) {
            iPlayerControlPresenter.setVolume(f);
        }
        IPlayerControlPresenter iPlayerControlPresenter2 = this.mPlayerControlPresenter2;
        if (iPlayerControlPresenter2 != null) {
            iPlayerControlPresenter2.setVolume(f);
        }
        SoundsPresenter soundsPresenter = this.mSoundsPresenter;
        if (soundsPresenter != null) {
            soundsPresenter.setVolume(MathUtil.twoDecimal(MathUtil.multiplication(this.mDecimalVolume, f)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lessFifty(int i) {
        float f = 1.0f - (i * 0.01f);
        IPlayerControlPresenter iPlayerControlPresenter = this.mPlayerControlPresenter1;
        if (iPlayerControlPresenter != null) {
            iPlayerControlPresenter.setVolume(1.0f - f);
        }
        IPlayerControlPresenter iPlayerControlPresenter2 = this.mPlayerControlPresenter2;
        if (iPlayerControlPresenter2 != null) {
            iPlayerControlPresenter2.setVolume(f);
        }
        SoundsPresenter soundsPresenter = this.mSoundsPresenter;
        if (soundsPresenter != null) {
            soundsPresenter.setVolume(MathUtil.twoDecimal(MathUtil.multiplication(this.mDecimalVolume, f)));
        }
    }

    private void initView() {
        this.mIvLeftMusic = (ImageButton) findViewById(R.id.iv_add_music_left);
        this.mTvLeftMusic = (TextView) findViewById(R.id.tv_add_music_left);
        this.mIvRightMusic = (ImageButton) findViewById(R.id.iv_add_music_right);
        this.mTvrightMusic = (TextView) findViewById(R.id.tv_add_music_right);
        this.mLeftMusicContainer = (LinearLayout) findViewById(R.id.left_music);
        this.mLeftAddMusicContainer = (LinearLayout) findViewById(R.id.left_add_music);
        this.mRightMusicContainer = (LinearLayout) findViewById(R.id.right_music);
        this.mRightAddMusicContainer = (LinearLayout) findViewById(R.id.right_add_music);
        this.mClose = (ImageButton) findViewById(R.id.amusement_closed);
        this.mLeftStart = (ImageButton) findViewById(R.id.left_dish_start);
        this.mRightStart = (ImageButton) findViewById(R.id.right_dish_start);
        this.mBtNote1 = (Button) findViewById(R.id.bt_note1);
        this.mBtNote2 = (Button) findViewById(R.id.bt_note2);
        this.mBtNote3 = (Button) findViewById(R.id.bt_note3);
        this.mBtNote4 = (Button) findViewById(R.id.bt_note4);
        this.mBtNote5 = (Button) findViewById(R.id.bt_note5);
        this.mBtNote6 = (Button) findViewById(R.id.bt_note6);
        this.mBtNote7 = (Button) findViewById(R.id.bt_note7);
        this.mBtNote8 = (Button) findViewById(R.id.bt_note8);
        this.mBtNote9 = (Button) findViewById(R.id.bt_note9);
        this.mBtNote10 = (Button) findViewById(R.id.bt_note10);
        this.mBtNote11 = (Button) findViewById(R.id.bt_note11);
        this.mBtNote12 = (Button) findViewById(R.id.bt_note12);
        this.mSeekBaretVolumeKey = (VerticalRangeSeekBar) findViewById(R.id.set_volume_key);
        this.mLeftDish = (ImageView) findViewById(R.id.left_dish);
        this.mRightDish = (ImageView) findViewById(R.id.right_dish);
        this.mLeftSeekBar = (VerticalRangeSeekBar) findViewById(R.id.left_seek_bar);
        this.mRightSeekBar = (VerticalRangeSeekBar) findViewById(R.id.right_seek_bar);
        this.mLeftBpm = (TextView) findViewById(R.id.left_bpm);
        this.mLeftEdit = (TextView) findViewById(R.id.left_edit);
        this.mRightBpm = (TextView) findViewById(R.id.right_bpm);
        this.mRightEdit = (TextView) findViewById(R.id.right_edit);
        this.mLeftName = (TextView) findViewById(R.id.left_name);
        this.mLeftTime = (TextView) findViewById(R.id.left_time);
        this.mLeftMusic = (MusicSpectrumBar) findViewById(R.id.left_mb_type2);
        this.mRightName = (TextView) findViewById(R.id.right_name);
        this.mRightTime = (TextView) findViewById(R.id.right_time);
        this.mRightMusic = (MusicSpectrumBar) findViewById(R.id.right_mb_music);
    }

    public void playOrPause(IPlayerControlPresenter iPlayerControlPresenter, ImageButtonAnimation imageButtonAnimation, ImageView imageView) {
        if (!iPlayerControlPresenter.isData()) {
            showToast(getResources().getString(R.string.choose_a_song));
        } else if (!iPlayerControlPresenter.isPlaying()) {
            iPlayerControlPresenter.play();
            start(imageButtonAnimation, imageView);
        } else {
            iPlayerControlPresenter.pause();
            cancel(imageButtonAnimation, imageView);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        switch (id) {
            case R.id.iv_add_music_left /* 2131296662 */:
            case R.id.tv_add_music_left /* 2131297083 */:
                this.mLeftPopupWindow.showAtLocation(view, 3, 0, 0);
                this.mLeftPopupWindow.setMusicList(this.mData);
                this.mEnterAnimation.start();
                break;
            case R.id.iv_add_music_right /* 2131296663 */:
            case R.id.tv_add_music_right /* 2131297084 */:
                this.mRightPopupWindow.showAtLocation(view, 5, 0, 0);
                this.mRightPopupWindow.setMusicList(this.mData);
                this.mEnterAnimation.start();
                break;
            case R.id.left_dish_start /* 2131296676 */:
                LogUtil.m65d(TAG, "----------R.id.left_dish_start-------------");
                IPlayerControlPresenter iPlayerControlPresenter = this.mPlayerControlPresenter1;
                if (iPlayerControlPresenter != null) {
                    playOrPause(iPlayerControlPresenter, this.mLeftAnim, this.mLeftDish);
                    break;
                }
                break;
            case R.id.right_dish_start /* 2131296915 */:
                LogUtil.m65d(TAG, "----------R.id.right_dish_start-------------");
                IPlayerControlPresenter iPlayerControlPresenter2 = this.mPlayerControlPresenter2;
                if (iPlayerControlPresenter2 != null) {
                    playOrPause(iPlayerControlPresenter2, this.mRightAnim, this.mRightDish);
                    break;
                }
                break;
        }
        playSounds(id);
    }

    private void playSounds(int i) {
        switch (i) {
            case R.id.bt_note1 /* 2131296374 */:
                this.mSoundsPresenter.play(0);
                return;
            case R.id.bt_note10 /* 2131296375 */:
                this.mSoundsPresenter.play(9);
                return;
            case R.id.bt_note11 /* 2131296376 */:
                this.mSoundsPresenter.play(10);
                return;
            case R.id.bt_note12 /* 2131296377 */:
                this.mSoundsPresenter.play(11);
                return;
            case R.id.bt_note2 /* 2131296378 */:
                this.mSoundsPresenter.play(1);
                return;
            case R.id.bt_note3 /* 2131296379 */:
                this.mSoundsPresenter.play(2);
                return;
            case R.id.bt_note4 /* 2131296380 */:
                this.mSoundsPresenter.play(3);
                return;
            case R.id.bt_note5 /* 2131296381 */:
                this.mSoundsPresenter.play(4);
                return;
            case R.id.bt_note6 /* 2131296382 */:
                this.mSoundsPresenter.play(5);
                return;
            case R.id.bt_note7 /* 2131296383 */:
                this.mSoundsPresenter.play(6);
                return;
            case R.id.bt_note8 /* 2131296384 */:
                this.mSoundsPresenter.play(7);
                return;
            case R.id.bt_note9 /* 2131296385 */:
                this.mSoundsPresenter.play(8);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAlpha(float f) {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = f;
        window.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        IPlayerControlPresenter iPlayerControlPresenter = this.mPlayerControlPresenter1;
        if (iPlayerControlPresenter != null && iPlayerControlPresenter.isPlaying()) {
            this.mPlayerControlPresenter1.pause();
            cancel(this.mLeftAnim, this.mLeftDish);
        }
        IPlayerControlPresenter iPlayerControlPresenter2 = this.mPlayerControlPresenter2;
        if (iPlayerControlPresenter2 != null && iPlayerControlPresenter2.isPlaying()) {
            this.mPlayerControlPresenter2.pause();
            cancel(this.mRightAnim, this.mRightDish);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        LeftPopupWindow leftPopupWindow = this.mLeftPopupWindow;
        if (leftPopupWindow != null) {
            leftPopupWindow.dismiss();
        }
        RightPopupWindow rightPopupWindow = this.mRightPopupWindow;
        if (rightPopupWindow != null) {
            rightPopupWindow.dismiss();
        }
        MusicsPresenters musicsPresenters = this.mMusicsPresenters;
        if (musicsPresenters != null) {
            musicsPresenters.unRegisterControlView();
        }
        PlayerConnect1 playerConnect1 = this.mPlayerConnect1;
        if (playerConnect1 != null) {
            unbindService(playerConnect1);
            this.mPlayerConnect1 = null;
            this.mPlayerControlPresenter1 = null;
        }
        PlayerConnect2 playerConnect2 = this.mPlayerConnect2;
        if (playerConnect2 != null) {
            unbindService(playerConnect2);
            this.mPlayerConnect2 = null;
            this.mPlayerControlPresenter2 = null;
        }
        VolumeChangeObserver volumeChangeObserver = this.mVolumeChangeObserver;
        if (volumeChangeObserver != null) {
            volumeChangeObserver.unRegisterReceiver();
            this.mVolumeChangeObserver = null;
        }
        EventBus.getDefault().unregister(this);
    }
}
