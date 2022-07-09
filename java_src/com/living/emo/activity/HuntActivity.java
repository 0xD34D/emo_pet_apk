package com.living.emo.activity;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.graphics.BitmapFactory;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.HuntActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.HuntBean;
import com.living.emo.event.MessageEvent;
import com.living.emo.util.AudioUtil;
import com.living.emo.util.CommandUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.SensorUtil;
import com.living.emo.util.SoundIdPoolUntil;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class HuntActivity extends BaseActivity {
    private static final int HANDLE_TIME_OUT = 6000;
    private static final String TAG = "HuntActivity";
    private BleDevice mBleDevice;
    private AlertDialog.Builder mBuilder;
    private CountDownTimer mCountDownTimer;
    private TextView mCuntTime;
    private ProgressDialog mDialog;
    private View mExplanationView;
    private Handler mHandler;
    private ImageView mHuntBack;
    private ImageView mHuntCore;
    private ImageView mHuntDialogReady;
    private RelativeLayout mHuntOtherCon;
    private ImageView mHuntSearch;
    private ImageView mHuntTxt;
    private ImageView mKnow;
    private ImageView mLeftSmallPour;
    private ImageView mMusicBtn;
    private View mOverView;
    private View mReadyView;
    private TextView mRestTv;
    private ImageView mRightSmallPour;
    private SensorUtil mSensorUtil;
    private ImageView mStart;
    private View mStartView;
    private ImageView mStopView;
    private View mTimeoutView;
    private ImageButton mTipsBtnOk;
    private View mTipsDialog;
    private TextView mTipsTxtContent;
    private View mTreasureDialog;
    private ImageView mUpSmallPour;
    private ImageButton mWarningBtnOk;
    private View mWarningDialog;
    private TextView mWarningTxtContent;
    private State currState = State.EXPLANATION;
    private Treasure[] mTreasures = null;
    private boolean isplay = false;
    private boolean ismove = false;
    private Direction currDirection = Direction.STOP;
    private Tips currTips = Tips.NONE;
    private Runnable task = new Runnable() { // from class: com.living.emo.activity.HuntActivity.1
        @Override // java.lang.Runnable
        public void run() {
            HuntActivity.this.mDialog.dismiss();
            HuntActivity huntActivity = HuntActivity.this;
            huntActivity.showToast(huntActivity.getResources().getString(R.string.emo_is_not_ready));
            HuntActivity.this.finish();
        }
    };
    private boolean stop = false;
    private View.OnClickListener mBtnOk = new View.OnClickListener() { // from class: com.living.emo.activity.HuntActivity.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SoundIdPoolUntil.getInstance().stop();
            HuntActivity huntActivity = HuntActivity.this;
            huntActivity.write(huntActivity.mBleDevice, CommandUtil.resetting());
            HuntActivity.this.changTipsView(Tips.NONE, "");
            HuntActivity.this.changeSearchView(0);
            HuntActivity.this.ismove = true;
        }
    };
    private int currSearch = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum Direction {
        LEFT,
        RIGHT,
        TOP,
        STOP
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum State {
        EXPLANATION,
        READY,
        START,
        OVER,
        TIMEOUT,
        NONE
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum Tips {
        HUNT,
        TIPS,
        WARNING,
        NONE
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_hunt);
        EventBus.getDefault().register(this);
        initView();
        initEvent();
        initTimer();
        initSensor();
        BleDevice bleDevice = BleBean.getInstance().getBleDevice();
        this.mBleDevice = bleDevice;
        write(bleDevice, CommandUtil.enterApp(CommandUtil.CMD_ORDER_DATA[4]));
        initProgressDialog();
        Handler handler = new Handler();
        this.mHandler = handler;
        handler.postDelayed(this.task, 6000L);
        this.mBuilder = new AlertDialog.Builder(this);
        AudioUtil.INSTANCE.play(this, R.raw.hunt_search_song_v1);
    }

    private void initProgressDialog() {
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.mDialog = progressDialog;
        progressDialog.setMessage(getString(R.string.waiting));
        this.mDialog.setCancelable(false);
        this.mDialog.show();
    }

    private void initSensor() {
        SensorUtil instance = SensorUtil.getInstance();
        this.mSensorUtil = instance;
        instance.setup(this);
        this.mSensorUtil.SetOnSensorListener(new SensorUtil.SensorXYListener() { // from class: com.living.emo.activity.HuntActivity.2
            @Override // com.living.emo.util.SensorUtil.SensorXYListener
            public void OnResult(float f, float f2) {
                if (HuntActivity.this.isplay && HuntActivity.this.ismove) {
                    LogUtil.m64e(HuntActivity.TAG, "OnResult: X:" + f + "     Y:" + f2);
                    if (f < -1.5f) {
                        HuntActivity huntActivity = HuntActivity.this;
                        huntActivity.changeButtons(huntActivity.mUpSmallPour);
                        HuntActivity.this.currDirection = Direction.TOP;
                    } else if (f2 < -1.5f) {
                        HuntActivity huntActivity2 = HuntActivity.this;
                        huntActivity2.changeButtons(huntActivity2.mLeftSmallPour);
                        HuntActivity.this.currDirection = Direction.LEFT;
                    } else if (f2 > 1.5f) {
                        HuntActivity huntActivity3 = HuntActivity.this;
                        huntActivity3.changeButtons(huntActivity3.mRightSmallPour);
                        HuntActivity.this.currDirection = Direction.RIGHT;
                    } else {
                        HuntActivity huntActivity4 = HuntActivity.this;
                        huntActivity4.changeButtons(huntActivity4.mStopView);
                        HuntActivity.this.currDirection = Direction.STOP;
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeButtons(View view) {
        if (this.currDirection == Direction.STOP) {
            ImageView[] imageViewArr = {this.mStopView, this.mLeftSmallPour, this.mRightSmallPour, this.mUpSmallPour};
            for (int i = 0; i < 4; i++) {
                imageViewArr[i].setEnabled(true);
            }
            if (view == this.mStopView && !this.stop) {
                write(this.mBleDevice, CommandUtil.stop());
                this.stop = true;
            }
            if (view == this.mLeftSmallPour) {
                write(this.mBleDevice, CommandUtil.left());
                this.stop = false;
            }
            if (view == this.mRightSmallPour) {
                write(this.mBleDevice, CommandUtil.right());
                this.stop = false;
            }
            if (view == this.mUpSmallPour) {
                write(this.mBleDevice, CommandUtil.m66go());
                this.stop = false;
            }
            view.setEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    private void initTimer() {
        this.mCountDownTimer = new CountDownTimer(300000L, 300L) { // from class: com.living.emo.activity.HuntActivity.3
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                Object obj;
                Object obj2;
                long j2 = j - ((j / 86400000) * 86400000);
                long j3 = j2 - ((j2 / 3600000) * 3600000);
                long j4 = j3 / 60000;
                long j5 = (j3 - (60000 * j4)) / 1000;
                if (j4 == 0 && j5 == 3) {
                    SoundIdPoolUntil.getInstance().play("last_3", 0);
                }
                TextView textView = HuntActivity.this.mCuntTime;
                StringBuffer stringBuffer = new StringBuffer();
                if (j4 < 10) {
                    obj = "0" + j4;
                } else {
                    obj = Long.valueOf(j4);
                }
                stringBuffer.append(obj);
                stringBuffer.append(":");
                if (j5 < 10) {
                    obj2 = "0" + j5;
                } else {
                    obj2 = Long.valueOf(j5);
                }
                stringBuffer.append(obj2);
                textView.setText(stringBuffer);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                SoundIdPoolUntil.getInstance().stop();
                SoundIdPoolUntil.getInstance().play("time_out1", 0);
                HuntActivity huntActivity = HuntActivity.this;
                huntActivity.write(huntActivity.mBleDevice, CommandUtil.timeout());
                HuntActivity.this.isplay = false;
                HuntActivity.this.ismove = false;
                HuntActivity.this.changeStateView(State.TIMEOUT);
                HuntActivity.this.changTipsView(Tips.NONE, "");
            }
        };
    }

    /* renamed from: com.living.emo.activity.HuntActivity$4 */
    /* loaded from: classes.dex */
    class C14854 implements HuntBean.HuntResponse {
        @Override // com.living.emo.bean.HuntBean.HuntResponse
        public void error() {
        }

        C14854() {
        }

        @Override // com.living.emo.bean.HuntBean.HuntResponse
        public void gameReady() {
            HuntActivity.this.mHandler.removeCallbacks(HuntActivity.this.task);
            HuntActivity.this.mDialog.dismiss();
        }

        @Override // com.living.emo.bean.HuntBean.HuntResponse
        public void eventReport(byte b) {
            switch (b) {
                case 5:
                    HuntActivity.this.changTipsView(Tips.WARNING, HuntActivity.this.getString(R.string.hunt_obstacle_detected));
                    return;
                case 6:
                    HuntActivity.this.changTipsView(Tips.WARNING, HuntActivity.this.getString(R.string.hunt_cliff_detected));
                    return;
                case 7:
                    HuntActivity.this.changTipsView(Tips.WARNING, HuntActivity.this.getString(R.string.hunt_fallen_down));
                    return;
                case 8:
                    HuntActivity.this.changTipsView(Tips.WARNING, HuntActivity.this.getString(R.string.hunt_picked_up));
                    return;
                case 9:
                    HuntActivity.this.changTipsView(Tips.WARNING, HuntActivity.this.getString(R.string.hunt_team_work));
                    return;
                case 10:
                    HuntActivity.this.changTipsView(Tips.TIPS, HuntActivity.this.getString(R.string.hunt_let_go));
                    return;
                default:
                    return;
            }
        }

        @Override // com.living.emo.bean.HuntBean.HuntResponse
        public void signalFeedback(int i) {
            LogUtil.m65d(HuntActivity.TAG, "signalFeedback: " + i);
            HuntActivity.this.changeSearchView(i);
        }

        @Override // com.living.emo.bean.HuntBean.HuntResponse
        public void findHunt(final int i) {
            HuntActivity.this.ismove = false;
            if (HuntActivity.this.isplay) {
                HuntActivity.this.changeSearchView(-1);
                new Handler().postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$4$2B5sUs4Zqu0HD2hYkyddrsvyQLg
                    @Override // java.lang.Runnable
                    public final void run() {
                        HuntActivity.C14854.this.lambda$findHunt$0$HuntActivity$4(i);
                    }
                }, 1000L);
            }
        }

        public /* synthetic */ void lambda$findHunt$0$HuntActivity$4(int i) {
            HuntActivity.this.changTipsView(Tips.HUNT, Integer.toString(i));
        }

        @Override // com.living.emo.bean.HuntBean.HuntResponse
        public void result(final int i, final int i2, final int i3) {
            HuntActivity.this.ismove = false;
            HuntActivity.this.changeSearchView(0);
            LogUtil.m64e("result", "one:" + i + "two:" + i2 + "three:" + i3);
            for (int i4 = 0; i4 < HuntActivity.this.mTreasures.length; i4++) {
                HuntActivity.this.mTreasures[i4].getTreasure_container().setVisibility(HuntActivity.this.mTreasures[i4].getIsShow());
                HuntActivity.this.mTreasures[i4].getTreasure_txt_con().setText("x" + HuntActivity.this.mTreasures[i4].getCount());
            }
            new Handler().postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$4$EAHobAEKW3Xj5j_ekqHV60a9FuY
                @Override // java.lang.Runnable
                public final void run() {
                    HuntActivity.C14854.this.lambda$result$1$HuntActivity$4(i, i2, i3);
                }
            }, 1000L);
        }

        public /* synthetic */ void lambda$result$1$HuntActivity$4(int i, int i2, int i3) {
            if (i == 0 && i2 == 0 && i3 == 0) {
                SoundIdPoolUntil.getInstance().play("no_reward", 0);
                HuntActivity.this.mOverView.findViewById(R.id.hunt_treasure_no_found_txt).setVisibility(0);
            } else {
                SoundIdPoolUntil.getInstance().play("hunt_android", 0);
            }
            HuntActivity.this.changeStateView(State.OVER);
        }

        @Override // com.living.emo.bean.HuntBean.HuntResponse
        public void gameOver() {
            if (!HuntActivity.this.isFinishing()) {
                HuntActivity.this.finish();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(MessageEvent messageEvent) {
        HuntBean.HuntNotify(messageEvent.getData(), new C14854());
    }

    public void alertDialog(String str, String str2) {
        this.ismove = false;
        changeSearchView(0);
        this.mBuilder.setTitle(str);
        this.mBuilder.setMessage(str2);
        this.mBuilder.setCancelable(false);
        this.mBuilder.setPositiveButton("ok", new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.HuntActivity.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                HuntActivity.this.ismove = true;
                HuntActivity huntActivity = HuntActivity.this;
                huntActivity.write(huntActivity.mBleDevice, CommandUtil.resetting());
                dialogInterface.dismiss();
            }
        });
        this.mBuilder.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mSensorUtil.enabled();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        SoundIdPoolUntil.getInstance().stop();
        AudioUtil.INSTANCE.stopPlay();
        this.mCountDownTimer.cancel();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mSensorUtil.disEnabled();
        SoundIdPoolUntil.getInstance().stop();
    }

    private void initEvent() {
        this.mHuntBack.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$P790Bn8REZ2-jnlJw9oHTG3Z87I
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HuntActivity.this.lambda$initEvent$0$HuntActivity(view);
            }
        });
        this.mKnow.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$cDX2aUzib-RWrnD5Xj4F4XuLkvY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HuntActivity.this.lambda$initEvent$1$HuntActivity(view);
            }
        });
        this.mStart.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$V3kW076AW4kvEYEZrQfUpXhJlbs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HuntActivity.this.lambda$initEvent$2$HuntActivity(view);
            }
        });
        this.mOverView.findViewById(R.id.hunt_treasure_ok_btn).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$yuL1Cuo-3vCo59xu5RYxALRgsL8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HuntActivity.this.lambda$initEvent$3$HuntActivity(view);
            }
        });
        this.mRestTv.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$7JLnZKsNDj1q8Qiaex-bTLtJySw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HuntActivity.this.lambda$initEvent$4$HuntActivity(view);
            }
        });
        this.mMusicBtn.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$g66WttfOQCLp9FijEmyPtrLhlmM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HuntActivity.this.lambda$initEvent$5$HuntActivity(view);
            }
        });
        this.mTipsBtnOk.setOnClickListener(this.mBtnOk);
        this.mWarningBtnOk.setOnClickListener(this.mBtnOk);
        this.mHuntDialogReady.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$egRH83B4AHBK9yubFjUbxHVasJ4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HuntActivity.this.lambda$initEvent$7$HuntActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$0$HuntActivity(View view) {
        write(this.mBleDevice, CommandUtil.outApp());
        finish();
    }

    public /* synthetic */ void lambda$initEvent$1$HuntActivity(View view) {
        changeStateView(State.READY);
    }

    public /* synthetic */ void lambda$initEvent$2$HuntActivity(View view) {
        changeStateView(State.START);
        changeSearchView(0);
    }

    public /* synthetic */ void lambda$initEvent$3$HuntActivity(View view) {
        write(this.mBleDevice, CommandUtil.outApp());
        finish();
    }

    public /* synthetic */ void lambda$initEvent$4$HuntActivity(View view) {
        write(this.mBleDevice, CommandUtil.stop());
        changTipsView(Tips.TIPS, getString(R.string.reset_treasure));
    }

    public /* synthetic */ void lambda$initEvent$5$HuntActivity(View view) {
        if (AudioUtil.INSTANCE.isPlaying()) {
            AudioUtil.INSTANCE.stopPlay();
            this.mMusicBtn.setBackground(getDrawable(R.drawable.hunt_music_off));
            return;
        }
        AudioUtil.INSTANCE.play(this, R.raw.hunt_search_song_v1);
        this.mMusicBtn.setBackground(getDrawable(R.drawable.hunt_music));
    }

    public /* synthetic */ void lambda$initEvent$7$HuntActivity(View view) {
        SoundIdPoolUntil.getInstance().stop();
        write(this.mBleDevice, CommandUtil.resetting());
        changTipsView(Tips.NONE, "");
        changeSearchView(0);
        new Handler().postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$dbGMVF_CL-6xGwGvWDV1C1TlUCk
            @Override // java.lang.Runnable
            public final void run() {
                HuntActivity.this.lambda$null$6$HuntActivity();
            }
        }, 300L);
    }

    public /* synthetic */ void lambda$null$6$HuntActivity() {
        this.ismove = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeSearchView(int i) {
        if (this.currSearch != i) {
            SoundIdPoolUntil.getInstance().stop();
        }
        this.currSearch = i;
        if (i == -1) {
            this.mHuntSearch.setBackgroundResource(R.drawable.hunt_search_small_4);
        } else if (i == 0) {
            if (SoundIdPoolUntil.getInstance().isPlay()) {
                SoundIdPoolUntil.getInstance().stop();
            }
            this.mHuntSearch.setBackgroundResource(R.drawable.hunt_search_small_0);
        } else if (i == 1) {
            if (!SoundIdPoolUntil.getInstance().isPlay()) {
                SoundIdPoolUntil.getInstance().play("effect_1", -1);
            }
            this.mHuntSearch.setBackgroundResource(R.drawable.hunt_search_small_1);
        } else if (i == 2) {
            if (!SoundIdPoolUntil.getInstance().isPlay()) {
                SoundIdPoolUntil.getInstance().play("effect_2", -1);
            }
            this.mHuntSearch.setBackgroundResource(R.drawable.hunt_search_small_2);
        } else if (i == 3) {
            if (!SoundIdPoolUntil.getInstance().isPlay()) {
                SoundIdPoolUntil.getInstance().play("effect_3", -1);
            }
            this.mHuntSearch.setBackgroundResource(R.drawable.hunt_search_small_3);
        }
        ((AnimationDrawable) this.mHuntSearch.getBackground()).start();
    }

    private void initView() {
        SoundIdPoolUntil.getInstance().load();
        this.mHuntBack = (ImageView) findViewById(R.id.hunt_back);
        this.mHuntOtherCon = (RelativeLayout) findViewById(R.id.hunt_other_con);
        this.mStopView = (ImageView) findViewById(R.id.hunt_lay_flat);
        this.mLeftSmallPour = (ImageView) findViewById(R.id.hunt_left_small_pour);
        this.mRightSmallPour = (ImageView) findViewById(R.id.hunt_right_small_pour);
        this.mUpSmallPour = (ImageView) findViewById(R.id.hunt_up_small_pour);
        this.mRestTv = (TextView) findViewById(R.id.hunt_rest);
        this.mHuntSearch = (ImageView) findViewById(R.id.hunt_search);
        this.mCuntTime = (TextView) findViewById(R.id.hunt_cunt_time);
        this.mMusicBtn = (ImageView) findViewById(R.id.hunt_music);
        loadStateView(LayoutInflater.from(this), this.mHuntOtherCon);
        this.mKnow = (ImageView) this.mExplanationView.findViewById(R.id.ex_know);
        this.mStart = (ImageView) this.mReadyView.findViewById(R.id.ready_start_btn);
        this.mTipsTxtContent = (TextView) this.mTipsDialog.findViewById(R.id.tips_txt_content);
        this.mTipsBtnOk = (ImageButton) this.mTipsDialog.findViewById(R.id.tips_btn_ok);
        this.mWarningTxtContent = (TextView) this.mWarningDialog.findViewById(R.id.warning_txt_content);
        this.mWarningBtnOk = (ImageButton) this.mWarningDialog.findViewById(R.id.warning_btn_ok);
        this.mHuntDialogReady = (ImageView) this.mTreasureDialog.findViewById(R.id.hunt_dialog_btn_ready);
        this.mHuntCore = (ImageView) this.mTreasureDialog.findViewById(R.id.hunt_dialog_core);
        this.mHuntTxt = (ImageView) this.mTreasureDialog.findViewById(R.id.hunt_dialog_txt);
        this.mTreasures = new Treasure[]{new Treasure(R.drawable.hunt_cube, R.drawable.hunt_word_core, (RelativeLayout) this.mOverView.findViewById(R.id.hunt_treasure_core_con), (TextView) this.mOverView.findViewById(R.id.hunt_treasure_core_txt)), new Treasure(R.drawable.hunt_diamonds, R.drawable.hunt_word_diamonds, (RelativeLayout) this.mOverView.findViewById(R.id.hunt_treasure_diamonds_con), (TextView) this.mOverView.findViewById(R.id.hunt_treasure_diamonds_txt)), new Treasure(R.drawable.hunt_piece_of_ore, R.drawable.hunt_word_ore, (RelativeLayout) this.mOverView.findViewById(R.id.hunt_treasure_ore_con), (TextView) this.mOverView.findViewById(R.id.hunt_treasure_ore_txt))};
        RelativeLayout relativeLayout = (RelativeLayout) this.mOverView.findViewById(R.id.hunt_treasure_diamonds_view_con);
        RelativeLayout relativeLayout2 = (RelativeLayout) this.mOverView.findViewById(R.id.hunt_treasure_core_view_con);
        RelativeLayout relativeLayout3 = (RelativeLayout) this.mOverView.findViewById(R.id.hunt_treasure_ore_view_con);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
        int[] layoutSize = layoutSize(R.drawable.hunt_energycrystal);
        layoutParams.height = layoutSize[0];
        layoutParams.width = layoutSize[1];
        relativeLayout.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) relativeLayout2.getLayoutParams();
        int[] layoutSize2 = layoutSize(R.drawable.hunt_core);
        layoutParams2.height = layoutSize2[0];
        layoutParams2.width = layoutSize2[1];
        relativeLayout2.setLayoutParams(layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) relativeLayout3.getLayoutParams();
        int[] layoutSize3 = layoutSize(R.drawable.hunt_ore);
        layoutParams3.height = layoutSize3[0];
        layoutParams3.width = layoutSize3[1];
        relativeLayout3.setLayoutParams(layoutParams3);
        changeStateView(State.EXPLANATION);
        changTipsView(Tips.NONE, "");
    }

    private int[] layoutSize(int i) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        BitmapFactory.decodeResource(getResources(), i, options);
        LogUtil.m64e("tag", "height:" + options.outHeight + "    width:" + options.outWidth);
        return new int[]{options.outHeight, options.outWidth};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changTipsView(Tips tips, String str) {
        this.ismove = false;
        changeSearchView(0);
        SoundIdPoolUntil.getInstance().stop();
        this.currTips = tips;
        int i = 8;
        this.mTipsDialog.setVisibility(tips == Tips.TIPS ? 0 : 8);
        this.mWarningDialog.setVisibility(this.currTips == Tips.WARNING ? 0 : 8);
        View view = this.mTreasureDialog;
        if (this.currTips == Tips.HUNT) {
            i = 0;
        }
        view.setVisibility(i);
        if (this.currTips == Tips.TIPS) {
            this.mTipsTxtContent.setText(str);
        }
        if (this.currTips == Tips.WARNING) {
            this.mWarningTxtContent.setText(str);
        }
        if (this.currTips == Tips.HUNT) {
            SoundIdPoolUntil.getInstance().play("hunt_android", 0);
            int parseInt = Integer.parseInt(str);
            LogUtil.m64e("TAG", "宝藏的下标:" + parseInt);
            this.mTreasures[parseInt].incrByCount();
            this.mHuntCore.setBackgroundResource(this.mTreasures[parseInt].getTreasure_img());
            this.mHuntTxt.setBackgroundResource(this.mTreasures[parseInt].getTreasure_txt());
            SoundIdPoolUntil.getInstance().play("hunt_effect", -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeStateView(State state) {
        this.currState = state;
        int i = 0;
        this.mExplanationView.setVisibility(state == State.EXPLANATION ? 0 : 8);
        this.mReadyView.setVisibility(this.currState == State.READY ? 0 : 8);
        this.mStartView.setVisibility(this.currState == State.START ? 0 : 8);
        if (this.currState == State.START) {
            write(this.mBleDevice, CommandUtil.startGame());
            new Handler().postDelayed(new Runnable() { // from class: com.living.emo.activity.-$$Lambda$HuntActivity$gNd8tnacLwbj1Kp4FY7figkVP-E
                @Override // java.lang.Runnable
                public final void run() {
                    HuntActivity.this.lambda$changeStateView$8$HuntActivity();
                }
            }, 3000L);
        }
        this.mOverView.setVisibility(this.currState == State.OVER ? 0 : 8);
        View view = this.mTimeoutView;
        if (this.currState != State.TIMEOUT) {
            i = 8;
        }
        view.setVisibility(i);
    }

    public /* synthetic */ void lambda$changeStateView$8$HuntActivity() {
        changeStateView(State.NONE);
        this.mCountDownTimer.start();
        changeSearchView(0);
        this.isplay = true;
        this.ismove = true;
        write(this.mBleDevice, CommandUtil.resetting());
    }

    private void loadStateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View loadExplanationView = loadExplanationView(layoutInflater, viewGroup);
        this.mExplanationView = loadExplanationView;
        this.mHuntOtherCon.addView(loadExplanationView);
        View loadReadyView = loadReadyView(layoutInflater, viewGroup);
        this.mReadyView = loadReadyView;
        this.mHuntOtherCon.addView(loadReadyView);
        View loadStartView = loadStartView(layoutInflater, viewGroup);
        this.mStartView = loadStartView;
        this.mHuntOtherCon.addView(loadStartView);
        View loadOverView = loadOverView(layoutInflater, viewGroup);
        this.mOverView = loadOverView;
        this.mHuntOtherCon.addView(loadOverView);
        View loadTimeoutView = loadTimeoutView(layoutInflater, viewGroup);
        this.mTimeoutView = loadTimeoutView;
        this.mHuntOtherCon.addView(loadTimeoutView);
        View loadTipsDialogView = loadTipsDialogView(layoutInflater, viewGroup);
        this.mTipsDialog = loadTipsDialogView;
        this.mHuntOtherCon.addView(loadTipsDialogView);
        View loadWarningView = loadWarningView(layoutInflater, viewGroup);
        this.mWarningDialog = loadWarningView;
        this.mHuntOtherCon.addView(loadWarningView);
        View loadHuntView = loadHuntView(layoutInflater, viewGroup);
        this.mTreasureDialog = loadHuntView;
        this.mHuntOtherCon.addView(loadHuntView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        AudioUtil.INSTANCE.stopPlay();
        write(this.mBleDevice, CommandUtil.outApp());
        if (!isFinishing()) {
            finish();
        }
    }

    private View loadHuntView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.hunt_hunt_view, viewGroup, false);
    }

    private View loadWarningView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.hunt_warning_view, viewGroup, false);
    }

    private View loadTipsDialogView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.hunt_tips_dialog_view, viewGroup, false);
    }

    private View loadTimeoutView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.hunt_time_out_view, viewGroup, false);
    }

    private View loadOverView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.hunt_over_view, viewGroup, false);
    }

    private View loadStartView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.hunt_start_view, viewGroup, false);
    }

    private View loadReadyView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.hunt_ready_view, viewGroup, false);
    }

    private View loadExplanationView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.hunt_explanation_view, viewGroup, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class Treasure {
        private RelativeLayout treasure_container;
        private int treasure_img;
        private int treasure_txt;
        private TextView treasure_txt_con;
        private int isShow = 8;
        private int count = 0;

        public Treasure(int i, int i2, RelativeLayout relativeLayout, TextView textView) {
            this.treasure_img = 0;
            this.treasure_txt = 0;
            this.treasure_img = i;
            this.treasure_txt = i2;
            this.treasure_container = relativeLayout;
            this.treasure_txt_con = textView;
        }

        public int getTreasure_img() {
            return this.treasure_img;
        }

        public void setTreasure_img(int i) {
            this.treasure_img = i;
        }

        public int getTreasure_txt() {
            return this.treasure_txt;
        }

        public void setTreasure_txt(int i) {
            this.treasure_txt = i;
        }

        public RelativeLayout getTreasure_container() {
            return this.treasure_container;
        }

        public void setTreasure_container(RelativeLayout relativeLayout) {
            this.treasure_container = relativeLayout;
        }

        public TextView getTreasure_txt_con() {
            return this.treasure_txt_con;
        }

        public void setTreasure_txt_con(TextView textView) {
            this.treasure_txt_con = textView;
        }

        public int getIsShow() {
            return this.isShow;
        }

        public void setIsShow(int i) {
            this.isShow = i;
        }

        public int getCount() {
            return this.count;
        }

        public void incrByCount() {
            this.count++;
            setIsShow(0);
        }
    }
}
