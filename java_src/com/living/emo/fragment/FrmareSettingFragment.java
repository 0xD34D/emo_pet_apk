package com.living.emo.fragment;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.SettingActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.EmoUpdate;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.parse.BleVersionResponseParse;
import com.living.emo.blebean.response.VersionResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class FrmareSettingFragment extends AbstractBaseFragment {
    private BleDevice mBleDevice;
    private State mCurrState;
    private TextView mCurrentVersion;
    @BindView(R.id.setting_firmware_container)
    RelativeLayout mFirmwareContainer;
    private TextView mLatestVersion;
    private View mLoadFirmwareBtnView;
    private View mLoadFirmwareLoadingView;
    private View mLoadFirmwareShowView;
    private SettingActivity mSettingActivity;
    private TextView mShowTv;
    private ImageButton mUpdateIb;

    /* loaded from: classes.dex */
    public enum State {
        LOADING,
        SHOW,
        BTN
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_frmare_setting;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void loadStateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View loadFirmwareLoadingView = loadFirmwareLoadingView(layoutInflater, viewGroup);
        this.mLoadFirmwareLoadingView = loadFirmwareLoadingView;
        this.mFirmwareContainer.addView(loadFirmwareLoadingView);
        View loadFirmwareShowView = loadFirmwareShowView(layoutInflater, viewGroup);
        this.mLoadFirmwareShowView = loadFirmwareShowView;
        this.mFirmwareContainer.addView(loadFirmwareShowView);
        View loadFirmwareBtnView = loadFirmwareBtnView(layoutInflater, viewGroup);
        this.mLoadFirmwareBtnView = loadFirmwareBtnView;
        this.mFirmwareContainer.addView(loadFirmwareBtnView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeStateView(State state) {
        this.mCurrState = state;
        int i = 0;
        this.mLoadFirmwareLoadingView.setVisibility(state == State.LOADING ? 0 : 8);
        this.mLoadFirmwareShowView.setVisibility(this.mCurrState == State.SHOW ? 0 : 8);
        View view = this.mLoadFirmwareBtnView;
        if (this.mCurrState != State.BTN) {
            i = 8;
        }
        view.setVisibility(i);
    }

    private View loadFirmwareBtnView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_btn_firmware, viewGroup, false);
    }

    private View loadFirmwareShowView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_show_firmware_setting, viewGroup, false);
    }

    private View loadFirmwareLoadingView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_loading_setting, viewGroup, false);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        changeStateView(State.LOADING);
        this.mShowTv = (TextView) this.mLoadFirmwareShowView.findViewById(R.id.firmware_show_tv);
        this.mUpdateIb = (ImageButton) this.mLoadFirmwareBtnView.findViewById(R.id.firmware_update_ib);
        this.mLatestVersion = (TextView) this.mLoadFirmwareBtnView.findViewById(R.id.firmware_latest_version);
        this.mCurrentVersion = (TextView) this.mLoadFirmwareBtnView.findViewById(R.id.current_version);
        changeStateView(State.LOADING);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        this.mSettingActivity = (SettingActivity) requireActivity();
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mSettingActivity.write(this.mBleDevice, BleRequestUtil.version());
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mUpdateIb.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$FrmareSettingFragment$9a0IFWAGsim5g-QAx04qwHB2fOw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FrmareSettingFragment.this.lambda$initEvent$0$FrmareSettingFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$0$FrmareSettingFragment(View view) {
        this.mUpdateIb.setEnabled(false);
        alert();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:FrmareSettingFragment", "emo->app ble json data:" + json);
        final EmoUpdate instance = EmoUpdate.getInstance();
        BleVersionResponseParse.version(json, new BleVersionResponseParse.Callback() { // from class: com.living.emo.fragment.FrmareSettingFragment.1
            @Override // com.living.emo.blebean.parse.BleVersionResponseParse.Callback
            public void response(VersionResponse.DataBean.VersionBean versionBean) {
                instance.setEmoVersion(versionBean.getNumber());
                instance.setEmoVersionName(versionBean.getName());
                if (EmoUpdate.getInstance().isUpdate()) {
                    FrmareSettingFragment.this.mLatestVersion.setText("Latest Version : " + instance.getServerVersionName());
                    FrmareSettingFragment.this.mCurrentVersion.setText("Current Version : " + instance.getEmoVersionName());
                    FrmareSettingFragment.this.changeStateView(State.BTN);
                    return;
                }
                FrmareSettingFragment.this.mShowTv.setText("Current Version : " + instance.getEmoVersionName());
                FrmareSettingFragment.this.changeStateView(State.SHOW);
            }
        });
        BleResultParse.ota(json, new BleResultParse.Callback() { // from class: com.living.emo.fragment.FrmareSettingFragment.2
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                Toast.makeText(FrmareSettingFragment.this.mSettingActivity, "Start update", 0).show();
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                Toast.makeText(FrmareSettingFragment.this.mSettingActivity, "EMO Reject update", 0).show();
            }
        });
    }

    private void alert() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle("Are you sure to update?");
        builder.setCancelable(false);
        builder.setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.living.emo.fragment.FrmareSettingFragment.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FrmareSettingFragment.this.mSettingActivity.write(FrmareSettingFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.ota(EmoUpdate.getInstance().getServerVersion())));
            }
        });
        builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() { // from class: com.living.emo.fragment.FrmareSettingFragment.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FrmareSettingFragment.this.mUpdateIb.setEnabled(true);
            }
        });
        builder.show();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }
}
