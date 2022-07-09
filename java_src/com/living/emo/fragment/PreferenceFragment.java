package com.living.emo.fragment;

import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.jaygoo.widget.OnRangeChangedListener;
import com.jaygoo.widget.RangeSeekBar;
import com.living.emo.activity.SettingActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.parse.BlePreferenceResponseParse;
import com.living.emo.blebean.response.ResultResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.model.Constants;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class PreferenceFragment extends AbstractBaseFragment {
    private BleDevice mBleDevice;
    private RadioButton mLengthImperial;
    private RadioButton mLengthMetric;
    private View mLoadPreferenceLoadingView;
    private View mLoadPreferenceMainView;
    @BindView(R.id.setting_preference_container)
    RelativeLayout mPreferenceContainer;
    RadioGroup mRadioGroupLength;
    RadioGroup mRadioGroupSound;
    RadioGroup mRadioGroupTemperature;
    RadioGroup mRadioGroupUpdate;
    SettingActivity mSettingActivity;
    RadioButton mSoundOff;
    RadioButton mSoundOn;
    private RadioButton mTemperatureCelsius;
    private RadioButton mTemperatureFahrenheit;
    private RadioButton mUpdateOff;
    private RadioButton mUpdateOn;
    RangeSeekBar mVolumeSeekBar;
    private final Handler mHandler = new Handler();
    private Runnable task = new Runnable() { // from class: com.living.emo.fragment.-$$Lambda$PreferenceFragment$VnPp91h5quktz4lutzYrJH4JT5w
        @Override // java.lang.Runnable
        public final void run() {
            PreferenceFragment.this.lambda$new$0$PreferenceFragment();
        }
    };
    private String[] mVolumeString = {"volume_mute", "volume_low", "volume_med", "volume_high"};
    private Options currOptions = Options.NONE;
    private State currState = State.LOADING;
    private boolean toggleState = false;

    /* loaded from: classes.dex */
    public enum Options {
        NONE,
        TEMPERATURE,
        LENGTH,
        AUTO_UPDATE,
        VOLUME,
        SCHEDULE_SOUND
    }

    /* loaded from: classes.dex */
    public enum State {
        LOADING,
        MAIN
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_preference_container;
    }

    public /* synthetic */ void lambda$new$0$PreferenceFragment() {
        this.currOptions = Options.NONE;
        WaitDialogView.dismiss();
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void loadStateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View loadPreferenceLoadingView = loadPreferenceLoadingView(layoutInflater, viewGroup);
        this.mLoadPreferenceLoadingView = loadPreferenceLoadingView;
        this.mPreferenceContainer.addView(loadPreferenceLoadingView);
        View loadPreferenceMainView = loadPreferenceMainView(layoutInflater, viewGroup);
        this.mLoadPreferenceMainView = loadPreferenceMainView;
        this.mPreferenceContainer.addView(loadPreferenceMainView);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        this.mVolumeSeekBar = (RangeSeekBar) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_volume);
        this.mRadioGroupTemperature = (RadioGroup) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_temperature);
        this.mTemperatureCelsius = (RadioButton) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_temperature_celsius);
        this.mTemperatureFahrenheit = (RadioButton) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_temperature_fahrenheit);
        this.mRadioGroupLength = (RadioGroup) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_length);
        this.mLengthMetric = (RadioButton) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_length_metric);
        this.mLengthImperial = (RadioButton) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_length_imperial);
        this.mRadioGroupUpdate = (RadioGroup) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_update);
        this.mUpdateOff = (RadioButton) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_update_off);
        this.mUpdateOn = (RadioButton) this.mLoadPreferenceMainView.findViewById(R.id.preference_set_update_on);
        this.mRadioGroupSound = (RadioGroup) this.mLoadPreferenceMainView.findViewById(R.id.preference_schedule_sound);
        this.mSoundOn = (RadioButton) this.mLoadPreferenceMainView.findViewById(R.id.preference_schedule_sound_on);
        this.mSoundOff = (RadioButton) this.mLoadPreferenceMainView.findViewById(R.id.preference_schedule_sound_off);
        changeStateView(State.LOADING);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        this.mSettingActivity = (SettingActivity) requireActivity();
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mSettingActivity.write(this.mBleDevice, BleRequestUtil.preference());
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mRadioGroupTemperature.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.living.emo.fragment.-$$Lambda$PreferenceFragment$joE_JV-OPKKSQNn4JZ-ZyHOJVzQ
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                PreferenceFragment.this.lambda$initEvent$1$PreferenceFragment(radioGroup, i);
            }
        });
        this.mRadioGroupLength.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.living.emo.fragment.-$$Lambda$PreferenceFragment$G6Bn10G4rXzLhf9L74av9wvsu-Q
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                PreferenceFragment.this.lambda$initEvent$2$PreferenceFragment(radioGroup, i);
            }
        });
        this.mRadioGroupUpdate.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.living.emo.fragment.-$$Lambda$PreferenceFragment$S1BJvkbYa32Z20gKKMvn5ETtK7s
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                PreferenceFragment.this.lambda$initEvent$3$PreferenceFragment(radioGroup, i);
            }
        });
        this.mRadioGroupSound.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.living.emo.fragment.-$$Lambda$PreferenceFragment$eA-ZFuk501Xnx-Cx0CiGYEw5NwE
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i) {
                PreferenceFragment.this.lambda$initEvent$4$PreferenceFragment(radioGroup, i);
            }
        });
        this.mVolumeSeekBar.setOnRangeChangedListener(new OnRangeChangedListener() { // from class: com.living.emo.fragment.PreferenceFragment.1
            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStartTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onRangeChanged(RangeSeekBar rangeSeekBar, float f, float f2, boolean z) {
                LogUtil.m64e("TAG", String.format("onRangeChanged: isFromUser: %b ,leftValue : %f ,rightValue: %f", Boolean.valueOf(z), Float.valueOf(f), Float.valueOf(f2)));
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStopTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
                WaitDialogView.show(PreferenceFragment.this.mSettingActivity, "Processing");
                PreferenceFragment.this.currOptions = Options.VOLUME;
                PreferenceFragment.this.mHandler.postDelayed(PreferenceFragment.this.task, 10000L);
                PreferenceFragment.this.mSettingActivity.write(PreferenceFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting(PreferenceFragment.this.mVolumeString[(int) rangeSeekBar.getLeftSeekBar().getProgress()])));
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$1$PreferenceFragment(RadioGroup radioGroup, int i) {
        if (this.toggleState) {
            LogUtil.m64e("TAG", "mRadioGroupTemperature: checkedId:" + i);
            WaitDialogView.show(this.mSettingActivity, "Processing");
            this.mHandler.postDelayed(this.task, 10000L);
            this.currOptions = Options.TEMPERATURE;
            switch (i) {
                case R.id.preference_set_temperature_celsius /* 2131296850 */:
                    this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("temp_c")));
                    return;
                case R.id.preference_set_temperature_fahrenheit /* 2131296851 */:
                    this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("temp_f")));
                    return;
                default:
                    return;
            }
        }
    }

    public /* synthetic */ void lambda$initEvent$2$PreferenceFragment(RadioGroup radioGroup, int i) {
        if (this.toggleState) {
            WaitDialogView.show(this.mSettingActivity, "Processing");
            this.mHandler.postDelayed(this.task, 10000L);
            this.currOptions = Options.LENGTH;
            LogUtil.m64e("TAG", "mRadioGroupLength: checkedId:" + i);
            switch (i) {
                case R.id.preference_set_length_imperial /* 2131296847 */:
                    this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("length_imperial")));
                    return;
                case R.id.preference_set_length_metric /* 2131296848 */:
                    this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("length_metric")));
                    return;
                default:
                    return;
            }
        }
    }

    public /* synthetic */ void lambda$initEvent$3$PreferenceFragment(RadioGroup radioGroup, int i) {
        if (this.toggleState) {
            LogUtil.m64e("TAG", "mRadioGroupUpdate: checkedId:" + i);
            WaitDialogView.show(this.mSettingActivity, "Processing");
            this.mHandler.postDelayed(this.task, 10000L);
            this.currOptions = Options.AUTO_UPDATE;
            switch (i) {
                case R.id.preference_set_update_off /* 2131296853 */:
                    this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("auto_update_off")));
                    return;
                case R.id.preference_set_update_on /* 2131296854 */:
                    this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("auto_update_on")));
                    return;
                default:
                    return;
            }
        }
    }

    public /* synthetic */ void lambda$initEvent$4$PreferenceFragment(RadioGroup radioGroup, int i) {
        if (this.toggleState) {
            LogUtil.m64e("TAG", "mRadioGroupUpdate: checkedId:" + i);
            WaitDialogView.show(this.mSettingActivity, "Processing");
            this.mHandler.postDelayed(this.task, 10000L);
            this.currOptions = Options.SCHEDULE_SOUND;
            switch (i) {
                case R.id.preference_schedule_sound_off /* 2131296844 */:
                    this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("schedule_s_off")));
                    return;
                case R.id.preference_schedule_sound_on /* 2131296845 */:
                    this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.Setting("schedule_s_on")));
                    return;
                default:
                    return;
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:CitySettingFragment", "emo->app ble json data:" + json);
        BlePreferenceResponseParse.preference(json, new BlePreferenceResponseParse.Callback() { // from class: com.living.emo.fragment.PreferenceFragment.2
            @Override // com.living.emo.blebean.parse.BlePreferenceResponseParse.Callback
            public void response(int i, int i2, int i3, int i4, int i5) {
                PreferenceFragment.this.mVolumeSeekBar.setProgress(i);
                if (i2 == 0) {
                    PreferenceFragment.this.mTemperatureCelsius.toggle();
                } else {
                    PreferenceFragment.this.mTemperatureFahrenheit.toggle();
                }
                if (i3 == 0) {
                    PreferenceFragment.this.mLengthMetric.toggle();
                } else {
                    PreferenceFragment.this.mLengthImperial.toggle();
                }
                if (i4 == 0) {
                    PreferenceFragment.this.mUpdateOff.toggle();
                } else {
                    PreferenceFragment.this.mUpdateOn.toggle();
                }
                if (i5 == 0) {
                    PreferenceFragment.this.mSoundOff.toggle();
                } else {
                    PreferenceFragment.this.mSoundOn.toggle();
                }
                PreferenceFragment.this.changeStateView(State.MAIN);
                PreferenceFragment.this.toggleState = true;
            }
        });
        ResultResponse objectFromData = ResultResponse.objectFromData(json);
        if (objectFromData != null && objectFromData.getData() != null) {
            ResultResponse.DataBean data = objectFromData.getData();
            if (objectFromData.getType().equals(Constants.BLE_SETTING_RSP)) {
                int result = data.getResult();
                LogUtil.m64e("TAG", "onMessageEvent: result: " + result);
                WaitDialogView.dismiss();
                this.mHandler.removeCallbacks(this.task);
                if (result == 1) {
                    int i = C15763.$SwitchMap$com$living$emo$fragment$PreferenceFragment$Options[this.currOptions.ordinal()];
                    if (i == 2 || i == 3 || i == 4 || i == 5) {
                        this.mSettingActivity.showToast("Setting Successful");
                    }
                } else if (result == 0) {
                    int i2 = C15763.$SwitchMap$com$living$emo$fragment$PreferenceFragment$Options[this.currOptions.ordinal()];
                }
                this.currOptions = Options.NONE;
            }
        }
    }

    /* renamed from: com.living.emo.fragment.PreferenceFragment$3 */
    /* loaded from: classes.dex */
    static /* synthetic */ class C15763 {
        static final /* synthetic */ int[] $SwitchMap$com$living$emo$fragment$PreferenceFragment$Options;

        static {
            int[] iArr = new int[Options.values().length];
            $SwitchMap$com$living$emo$fragment$PreferenceFragment$Options = iArr;
            try {
                iArr[Options.VOLUME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$living$emo$fragment$PreferenceFragment$Options[Options.TEMPERATURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$living$emo$fragment$PreferenceFragment$Options[Options.LENGTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$living$emo$fragment$PreferenceFragment$Options[Options.AUTO_UPDATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$living$emo$fragment$PreferenceFragment$Options[Options.SCHEDULE_SOUND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeStateView(State state) {
        this.currState = state;
        int i = 0;
        this.mLoadPreferenceLoadingView.setVisibility(state == State.LOADING ? 0 : 8);
        View view = this.mLoadPreferenceMainView;
        if (this.currState != State.MAIN) {
            i = 8;
        }
        view.setVisibility(i);
    }

    private View loadPreferenceMainView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_preference, viewGroup, false);
    }

    private View loadPreferenceLoadingView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_loading_setting, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.toggleState = false;
        WaitDialogView.dismiss();
        EventBus.getDefault().unregister(this);
    }
}
