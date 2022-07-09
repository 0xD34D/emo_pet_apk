package com.living.emo.fragment;

import android.graphics.drawable.Drawable;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import com.living.emo.bean.TextBean;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class NavToolFragment extends AbstractBaseFragment {
    private static final String TAG = "zxl::" + NavToolFragment.class.getSimpleName();
    private AlertFragment mAlert;
    private FragmentManager mCfm;
    @BindView(R.id.nav_fragment)
    FrameLayout mFrameLayout;
    private InfoFragment mInfo;
    private LightFragment mLight;
    private PhotoFragment mMPhoto;
    @BindView(R.id.nav_radio_group)
    RadioGroup mRadioGroup;
    HashMap<String, Integer> radio = new HashMap<>();
    private List<TextBean> data = new ArrayList();

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_nav;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mRadioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.living.emo.fragment.NavToolFragment.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                switch (i) {
                    case R.id.alert /* 2131296330 */:
                        NavToolFragment navToolFragment = NavToolFragment.this;
                        navToolFragment.switchFragment(navToolFragment.mAlert);
                        return;
                    case R.id.info /* 2131296650 */:
                        LogUtil.m64e(NavToolFragment.TAG, "onCheckedChanged: info");
                        NavToolFragment navToolFragment2 = NavToolFragment.this;
                        navToolFragment2.switchFragment(navToolFragment2.mInfo);
                        return;
                    case R.id.light /* 2131296684 */:
                        LogUtil.m64e(NavToolFragment.TAG, "onCheckedChanged: light");
                        NavToolFragment navToolFragment3 = NavToolFragment.this;
                        navToolFragment3.switchFragment(navToolFragment3.mLight);
                        return;
                    case R.id.photo /* 2131296821 */:
                        LogUtil.m64e(NavToolFragment.TAG, "onCheckedChanged: photo");
                        NavToolFragment navToolFragment4 = NavToolFragment.this;
                        navToolFragment4.switchFragment(navToolFragment4.mMPhoto);
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

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initFragment() {
        InfoFragment infoFragment = new InfoFragment();
        this.mInfo = infoFragment;
        infoFragment.setData(this.data);
        this.mMPhoto = new PhotoFragment();
        this.mLight = new LightFragment();
        this.mAlert = new AlertFragment();
        this.mCfm = getChildFragmentManager();
        switchFragment(this.mInfo);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        Integer num = this.radio.get("photo");
        Integer num2 = this.radio.get("light");
        Integer num3 = this.radio.get("info");
        Integer num4 = this.radio.get("alert");
        if (num != null) {
            this.mRadioGroup.addView(createRadioButton(num, R.id.photo));
        }
        if (num2 != null) {
            this.mRadioGroup.addView(createRadioButton(num2, R.id.light));
        }
        if (num4 != null) {
            this.mRadioGroup.addView(createRadioButton(num4, R.id.alert));
        }
        if (num3 != null) {
            RadioButton createRadioButton = createRadioButton(num3, R.id.info);
            createRadioButton.setChecked(true);
            this.mRadioGroup.addView(createRadioButton);
        }
    }

    private RadioButton createRadioButton(Integer num, int i) {
        RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-2, -2);
        if (i == R.id.info) {
            layoutParams.setMarginStart(15);
        }
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setButtonDrawable((Drawable) null);
        radioButton.setBackgroundResource(num.intValue());
        radioButton.setLayoutParams(layoutParams);
        radioButton.setId(i);
        return radioButton;
    }

    public void setData(HashMap hashMap, List<TextBean> list) {
        this.radio = hashMap;
        this.data = list;
    }
}
