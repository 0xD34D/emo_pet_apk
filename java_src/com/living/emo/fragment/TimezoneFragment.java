package com.living.emo.fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.SettingActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.parse.BleTimezoneResponseParse;
import com.living.emo.blebean.response.TimeZoneResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.util.TimeZone;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class TimezoneFragment extends AbstractBaseFragment {
    private State currState = State.LOADING;
    private BleDevice mBleDevice;
    private View mLoadTimezoneEditView;
    private View mLoadTimezoneLoadingView;
    private View mLoadTimezoneShowView;
    private ImageButton mSet;
    private SettingActivity mSettingActivity;
    private TextView mShowTextSetting;
    private EditText mTimeZoneEv;
    @BindView(R.id.setting_timezone_container)
    RelativeLayout mTimezoneContainer;

    /* loaded from: classes.dex */
    public enum State {
        LOADING,
        EDIT,
        SHOW
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_timezone_setting;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        this.mSettingActivity = (SettingActivity) requireActivity();
        this.mTimeZoneEv = (EditText) this.mLoadTimezoneEditView.findViewById(R.id.timezone_name_setting);
        this.mSet = (ImageButton) this.mLoadTimezoneEditView.findViewById(R.id.timezone_set_setting);
        this.mTimeZoneEv.setEnabled(false);
        changeStateView(State.LOADING);
        this.mLoadTimezoneShowView.findViewById(R.id.timezone_show_set_setting).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$TimezoneFragment$_F1Uwi_evPGy_dY3CVq-SDySKzo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimezoneFragment.this.lambda$initView$0$TimezoneFragment(view);
            }
        });
        this.mShowTextSetting = (TextView) this.mLoadTimezoneShowView.findViewById(R.id.timezone_show_txt_setting);
    }

    public /* synthetic */ void lambda$initView$0$TimezoneFragment(View view) {
        this.mTimeZoneEv.setText(TimeZone.getDefault().getID());
        changeStateView(State.EDIT);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mSettingActivity.write(this.mBleDevice, BleRequestUtil.timezone());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:TimezoneFragment", "emo->app ble json data:" + json);
        BleTimezoneResponseParse.timezone(json, new BleTimezoneResponseParse.Callback() { // from class: com.living.emo.fragment.TimezoneFragment.1
            @Override // com.living.emo.blebean.parse.BleTimezoneResponseParse.Callback
            public void response(TimeZoneResponse.DataBean.TimezoneBean timezoneBean) {
                if (timezoneBean.getName().equals("")) {
                    TimezoneFragment.this.mShowTextSetting.setText(R.string.set_time_zone);
                } else {
                    TimezoneFragment.this.mShowTextSetting.setText(timezoneBean.getName());
                }
                TimezoneFragment.this.changeStateView(State.SHOW);
            }
        });
        BleResultParse.timezone(json, new BleResultParse.Callback() { // from class: com.living.emo.fragment.TimezoneFragment.2
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                TimezoneFragment.this.mShowTextSetting.setText(TimeZone.getDefault().getID());
                TimezoneFragment.this.changeStateView(State.SHOW);
                Toast.makeText(TimezoneFragment.this.mSettingActivity, "Time zone set successfully", 0).show();
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                TimezoneFragment.this.changeStateView(State.EDIT);
                Toast.makeText(TimezoneFragment.this.mSettingActivity, "Time zone setting failed, please reset", 0).show();
            }
        });
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mSet.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$TimezoneFragment$O7j9EpAiT5-oMwvW674MeBLZ2Y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimezoneFragment.this.lambda$initEvent$1$TimezoneFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$1$TimezoneFragment(View view) {
        changeStateView(State.LOADING);
        this.mSet.setEnabled(false);
        this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.timeZone(TimeZone.getDefault())));
        this.mSet.setEnabled(true);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void loadStateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View loadTimezoneLoadingView = loadTimezoneLoadingView(layoutInflater, viewGroup);
        this.mLoadTimezoneLoadingView = loadTimezoneLoadingView;
        this.mTimezoneContainer.addView(loadTimezoneLoadingView);
        View loadTimezoneEditView = loadTimezoneEditView(layoutInflater, viewGroup);
        this.mLoadTimezoneEditView = loadTimezoneEditView;
        this.mTimezoneContainer.addView(loadTimezoneEditView);
        View loadTimezoneShowView = loadTimezoneShowView(layoutInflater, viewGroup);
        this.mLoadTimezoneShowView = loadTimezoneShowView;
        this.mTimezoneContainer.addView(loadTimezoneShowView);
    }

    private View loadTimezoneShowView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_timezone_show_setting, viewGroup, false);
    }

    private View loadTimezoneEditView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_timezone_edit_setting, viewGroup, false);
    }

    private View loadTimezoneLoadingView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_loading_setting, viewGroup, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeStateView(State state) {
        this.currState = state;
        int i = 0;
        this.mLoadTimezoneLoadingView.setVisibility(state == State.LOADING ? 0 : 8);
        this.mLoadTimezoneEditView.setVisibility(this.currState == State.EDIT ? 0 : 8);
        View view = this.mLoadTimezoneShowView;
        if (this.currState != State.SHOW) {
            i = 8;
        }
        view.setVisibility(i);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }
}
