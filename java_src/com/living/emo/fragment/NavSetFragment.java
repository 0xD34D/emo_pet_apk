package com.living.emo.fragment;

import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import com.living.emo.bean.EmoUpdate;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class NavSetFragment extends AbstractBaseFragment {
    private static final String TAG = "zxl::" + NavSetFragment.class.getSimpleName();
    private AlexaSettingFragment mAlexaSettingFragment;
    private FragmentManager mCfm;
    private CitySettingFragment mCitySettingFragment;
    @BindView(R.id.nav_fragment)
    FrameLayout mFrameLayout;
    private FrmareSettingFragment mFrmareSettingFragment;
    private PowerOffFragment mPowerOffFragment;
    @BindView(R.id.setting_preference_radio)
    RadioButton mPreference;
    private PreferenceFragment mPreferenceFragment;
    @BindView(R.id.nav_radio_group)
    RadioGroup mRadioGroup;
    private ThanksFragment mThanksFragment;
    private TimezoneFragment mTimezoneFragment;
    private VolumeFragment mVolumeFragment;
    private WifiSettingFragment mWifiSettingFragment;

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_nav_seting;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initFragment() {
        this.mWifiSettingFragment = new WifiSettingFragment();
        this.mAlexaSettingFragment = new AlexaSettingFragment();
        this.mFrmareSettingFragment = new FrmareSettingFragment();
        this.mCitySettingFragment = new CitySettingFragment();
        this.mTimezoneFragment = new TimezoneFragment();
        this.mThanksFragment = new ThanksFragment();
        this.mPowerOffFragment = new PowerOffFragment();
        this.mVolumeFragment = new VolumeFragment();
        this.mPreferenceFragment = new PreferenceFragment();
        this.mCfm = getChildFragmentManager();
        switchFragment(this.mWifiSettingFragment);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        EmoUpdate instance = EmoUpdate.getInstance();
        int emoVersion = instance.getEmoVersion();
        String emoVersionName = instance.getEmoVersionName();
        if (emoVersion < 21 || emoVersionName.equals("1.4.0") || emoVersionName.contains("1.4.0.p")) {
            this.mPreference.setVisibility(8);
        }
        this.mRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.living.emo.fragment.NavSetFragment.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                switch (i) {
                    case R.id.setting_alexa_radio /* 2131296957 */:
                        NavSetFragment navSetFragment = NavSetFragment.this;
                        navSetFragment.switchFragment(navSetFragment.mAlexaSettingFragment);
                        return;
                    case R.id.setting_city_radio /* 2131296959 */:
                        NavSetFragment navSetFragment2 = NavSetFragment.this;
                        navSetFragment2.switchFragment(navSetFragment2.mCitySettingFragment);
                        return;
                    case R.id.setting_firmare_radio /* 2131296963 */:
                        NavSetFragment navSetFragment3 = NavSetFragment.this;
                        navSetFragment3.switchFragment(navSetFragment3.mFrmareSettingFragment);
                        return;
                    case R.id.setting_preference_radio /* 2131296968 */:
                        NavSetFragment navSetFragment4 = NavSetFragment.this;
                        navSetFragment4.switchFragment(navSetFragment4.mPreferenceFragment);
                        return;
                    case R.id.setting_thanks_poweroff /* 2131296970 */:
                        NavSetFragment navSetFragment5 = NavSetFragment.this;
                        navSetFragment5.switchFragment(navSetFragment5.mPowerOffFragment);
                        return;
                    case R.id.setting_thanks_radio /* 2131296971 */:
                        NavSetFragment navSetFragment6 = NavSetFragment.this;
                        navSetFragment6.switchFragment(navSetFragment6.mThanksFragment);
                        return;
                    case R.id.setting_timezone_radio /* 2131296973 */:
                        NavSetFragment navSetFragment7 = NavSetFragment.this;
                        navSetFragment7.switchFragment(navSetFragment7.mTimezoneFragment);
                        return;
                    case R.id.setting_volume_radio /* 2131296975 */:
                        NavSetFragment navSetFragment8 = NavSetFragment.this;
                        navSetFragment8.switchFragment(navSetFragment8.mVolumeFragment);
                        return;
                    case R.id.setting_wifi_radio /* 2131296977 */:
                        NavSetFragment navSetFragment9 = NavSetFragment.this;
                        navSetFragment9.switchFragment(navSetFragment9.mWifiSettingFragment);
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchFragment(AbstractBaseFragment abstractBaseFragment) {
        FragmentTransaction beginTransaction = this.mCfm.beginTransaction();
        beginTransaction.replace(this.mFrameLayout.getId(), abstractBaseFragment);
        beginTransaction.commit();
    }
}
