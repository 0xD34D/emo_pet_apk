package com.living.emo.fragment;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.ConnectActivity;
import com.living.emo.activity.SettingActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MusicPlayerUtil;
import com.living.emo.view.PowerOffSureDialog;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class PowerOffFragment extends AbstractBaseFragment {
    private SettingActivity mActivity;
    private BleDevice mBleDevice;
    private View mPowerOffBtnView;
    private ImageButton mPowerOffIb;
    @BindView(R.id.setting_poweroff_con)
    RelativeLayout mRelativeLayout;

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_power_off_setting;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void loadStateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(R.layout.fragment_power_off_btn_setting, viewGroup, false);
        this.mPowerOffBtnView = inflate;
        this.mRelativeLayout.addView(inflate);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mActivity = (SettingActivity) getActivity();
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mPowerOffIb.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$PowerOffFragment$2xDvrxJh1gES058hMKK14Uh5BzY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PowerOffFragment.this.lambda$initEvent$0$PowerOffFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$0$PowerOffFragment(View view) {
        askForPower();
    }

    private void askForPower() {
        PowerOffSureDialog powerOffSureDialog = new PowerOffSureDialog();
        powerOffSureDialog.setCancelable(false);
        powerOffSureDialog.setDialogClickListener(new PowerOffSureDialog.onDialogClickListener() { // from class: com.living.emo.fragment.PowerOffFragment.1
            @Override // com.living.emo.view.PowerOffSureDialog.onDialogClickListener
            public void onCancelClick() {
            }

            @Override // com.living.emo.view.PowerOffSureDialog.onDialogClickListener
            public void onSureClick() {
                PowerOffFragment.this.mActivity.write(PowerOffFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.PowerOff()));
            }
        });
        powerOffSureDialog.show(getParentFragmentManager(), "");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:wifiSettingFragment", "emo->app ble json data:" + json);
        BleResultParse.powerOff(json, new BleResultParse.Callback() { // from class: com.living.emo.fragment.PowerOffFragment.2
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                MusicPlayerUtil.getInstance(PowerOffFragment.this.getActivity()).end();
                PowerOffFragment.this.mActivity.dropOut();
                PowerOffFragment.this.startActivity(new Intent(PowerOffFragment.this.mActivity, ConnectActivity.class));
                PowerOffFragment.this.mActivity.finish();
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                PowerOffFragment.this.mActivity.showToast("power off fail");
            }
        });
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        this.mPowerOffIb = (ImageButton) this.mPowerOffBtnView.findViewById(R.id.power_off_btn);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }
}
