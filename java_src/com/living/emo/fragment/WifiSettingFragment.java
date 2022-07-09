package com.living.emo.fragment;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.activity.SettingActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.EmoUpdate;
import com.living.emo.blebean.parse.BleNetworkResponseParse;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.parse.BleWifiRequestParse;
import com.living.emo.blebean.response.NetworkResponse;
import com.living.emo.blebean.response.WifiRequestResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.DbManager;
import com.living.emo.util.LogUtil;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class WifiSettingFragment extends AbstractBaseFragment {
    private BleDevice mBleDevice;
    private CheckBox mCheckBox;
    private ImageButton mConnectBtn;
    private TextView mConnectTxt;
    private View mConnectView;
    private ImageButton mDisConnect;
    private View mDisConnectedView;
    private Handler mHandler;
    private View mLoadingView;
    private String mPwd;
    private EditText mPwdEv;
    private ImageButton mSetConnect;
    private View mSetWifiConnectView;
    private SettingActivity mSettingActivity;
    private String mSsid;
    private EditText mSsidEv;
    @BindView(R.id.setting_wifi_container)
    RelativeLayout wifiCon;
    private State currState = State.DIS_CONNECT;
    public Runnable task = new Runnable() { // from class: com.living.emo.fragment.WifiSettingFragment.5
        @Override // java.lang.Runnable
        public void run() {
            WaitDialogView.dismiss();
            WifiSettingFragment.this.mSettingActivity.write(WifiSettingFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.wifiRequest("stop")));
            WifiSettingFragment.this.mSettingActivity.showToast("timeout");
        }
    };

    /* loaded from: classes.dex */
    public enum State {
        LOADING,
        DIS_CONNECT,
        SET_CONNECT,
        CONNECTED
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_wifi_setting;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void loadStateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View loadLoadingView = loadLoadingView(layoutInflater, viewGroup);
        this.mLoadingView = loadLoadingView;
        this.wifiCon.addView(loadLoadingView);
        View loadDisConnectedView = loadDisConnectedView(layoutInflater, viewGroup);
        this.mDisConnectedView = loadDisConnectedView;
        this.wifiCon.addView(loadDisConnectedView);
        View loadSetWifiConnectView = loadSetWifiConnectView(layoutInflater, viewGroup);
        this.mSetWifiConnectView = loadSetWifiConnectView;
        this.wifiCon.addView(loadSetWifiConnectView);
        View loadConnectedView = loadConnectedView(layoutInflater, viewGroup);
        this.mConnectView = loadConnectedView;
        this.wifiCon.addView(loadConnectedView);
    }

    private View loadLoadingView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_loading_setting, viewGroup, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeStateView(State state) {
        this.currState = state;
        int i = 0;
        this.mDisConnectedView.setVisibility(state == State.DIS_CONNECT ? 0 : 8);
        this.mSetWifiConnectView.setVisibility(this.currState == State.SET_CONNECT ? 0 : 8);
        this.mConnectView.setVisibility(this.currState == State.CONNECTED ? 0 : 8);
        View view = this.mLoadingView;
        if (this.currState != State.LOADING) {
            i = 8;
        }
        view.setVisibility(i);
    }

    private View loadConnectedView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_connect_setting, viewGroup, false);
    }

    private View loadSetWifiConnectView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_set_connect_wifi_setting, viewGroup, false);
    }

    private View loadDisConnectedView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.fragment_dis_connect_setting, viewGroup, false);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        this.mDisConnect = (ImageButton) this.mDisConnectedView.findViewById(R.id.setting_dis_connect_btn);
        this.mSetConnect = (ImageButton) this.mSetWifiConnectView.findViewById(R.id.setting_set_connect_btn);
        this.mConnectBtn = (ImageButton) this.mConnectView.findViewById(R.id.setting_connect_btn);
        this.mConnectTxt = (TextView) this.mConnectView.findViewById(R.id.setting_connect_txt);
        this.mSsidEv = (EditText) this.mSetWifiConnectView.findViewById(R.id.wifi_ssid_setting);
        EditText editText = (EditText) this.mSetWifiConnectView.findViewById(R.id.wifi_pwd_setting);
        this.mPwdEv = editText;
        editText.addTextChangedListener(new TextWatcher() { // from class: com.living.emo.fragment.WifiSettingFragment.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String obj = WifiSettingFragment.this.mPwdEv.getText().toString();
                String replaceAll = Pattern.compile("[^0-9a-zA-Z!@#$%^&*()_+-=?., /:;'\"]").matcher(obj).replaceAll("");
                if (!obj.equals(replaceAll)) {
                    WifiSettingFragment.this.mPwdEv.setText(replaceAll);
                    WifiSettingFragment.this.mPwdEv.setSelection(replaceAll.length());
                }
            }
        });
        this.mCheckBox = (CheckBox) this.mSetWifiConnectView.findViewById(R.id.wifi_checkbox_setting);
        this.mHandler = new Handler();
        changeStateView(State.LOADING);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initData() {
        this.mSettingActivity = (SettingActivity) requireActivity();
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        this.mSettingActivity.write(this.mBleDevice, BleRequestUtil.network());
        DbManager.getInstance(getActivity());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:wifiSettingFragment", "emo->app ble json data:" + json);
        BleNetworkResponseParse.network(json, new BleNetworkResponseParse.Callback() { // from class: com.living.emo.fragment.WifiSettingFragment.2
            @Override // com.living.emo.blebean.parse.BleNetworkResponseParse.Callback
            public void response(NetworkResponse.DataBean.NetworkBean networkBean) {
                if (networkBean.getConnected() == 1) {
                    WifiSettingFragment.this.mConnectTxt.setText(String.format("CONNECTED TO %1$s", networkBean.getName()));
                    WifiSettingFragment.this.changeStateView(State.CONNECTED);
                    return;
                }
                WifiSettingFragment.this.changeStateView(State.DIS_CONNECT);
            }
        });
        BleResultParse.wifi(json, new BleResultParse.Callback() { // from class: com.living.emo.fragment.WifiSettingFragment.3
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                if (WifiSettingFragment.this.mCheckBox.isChecked()) {
                    DbManager.insertOrUpdate(WifiSettingFragment.this.mSsid, WifiSettingFragment.this.mPwd);
                    DbManager.deleteRedundantData();
                } else if (DbManager.selectUserByssid(WifiSettingFragment.this.mSsid) != null) {
                    DbManager.deleteUser(WifiSettingFragment.this.mSsid);
                }
                Toast.makeText(WifiSettingFragment.this.mSettingActivity, "WiFi connection successful", 0).show();
                WifiSettingFragment.this.mConnectTxt.setText(String.format("CONNECTED TO %1$s", WifiSettingFragment.this.mSsid));
                WifiSettingFragment.this.changeStateView(State.CONNECTED);
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                Toast.makeText(WifiSettingFragment.this.mSettingActivity, "WiFi connection failed", 0).show();
                WifiSettingFragment.this.changeStateView(State.SET_CONNECT);
            }
        });
        BleWifiRequestParse.wifiReq(json, new BleWifiRequestParse.Callback() { // from class: com.living.emo.fragment.WifiSettingFragment.4
            @Override // com.living.emo.blebean.parse.BleWifiRequestParse.Callback
            public void success(List<WifiRequestResponse.DataBean.ListBean> list) {
                if (list == null) {
                    System.out.println("emo result 1");
                    return;
                }
                WaitDialogView.dismiss();
                WifiSettingFragment.this.mHandler.removeCallbacks(WifiSettingFragment.this.task);
                final String[] strArr = new String[list.size()];
                for (int i = 0; i < list.size(); i++) {
                    if (list.get(i).getSsid().equals("")) {
                        list.remove(i);
                    } else {
                        strArr[i] = list.get(i).getSsid();
                    }
                }
                if (list.size() > 0) {
                    System.out.println(Arrays.toString(strArr));
                    AlertDialog.Builder builder = new AlertDialog.Builder(WifiSettingFragment.this.requireContext());
                    builder.setTitle("Choose a Wifi");
                    builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.living.emo.fragment.WifiSettingFragment.4.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            String str = strArr[i2];
                            if (str.getBytes().length > 31) {
                                Toast.makeText(WifiSettingFragment.this.requireContext(), "Your input exceeds the maximum length allowed.", 0).show();
                                return;
                            }
                            String selectUserByssid = DbManager.selectUserByssid(str);
                            WifiSettingFragment.this.mSsidEv.setText(str);
                            WifiSettingFragment.this.mSsidEv.setSelection(str.length());
                            WifiSettingFragment.this.mPwdEv.setText("");
                            if (selectUserByssid != null) {
                                WifiSettingFragment.this.mPwdEv.setText(selectUserByssid);
                                WifiSettingFragment.this.mCheckBox.setChecked(true);
                                WifiSettingFragment.this.hideInput(WifiSettingFragment.this.requireContext(), WifiSettingFragment.this.mSetWifiConnectView.findViewById(R.id.wifi_connect_setting_box));
                            }
                        }
                    });
                    builder.create().show();
                }
            }

            @Override // com.living.emo.blebean.parse.BleWifiRequestParse.Callback
            public void fail() {
                WaitDialogView.dismiss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideInput(Context context, View view) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mSetWifiConnectView.findViewById(R.id.wifi_connect_setting_box).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$WifiSettingFragment$2DOXKvrA_44iBlcZVgb7C-T_QVE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiSettingFragment.this.lambda$initEvent$0$WifiSettingFragment(view);
            }
        });
        this.mDisConnect.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$WifiSettingFragment$1Ae3FmPREtmn5z8LVBRWI4mIUXk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiSettingFragment.this.lambda$initEvent$1$WifiSettingFragment(view);
            }
        });
        this.mSsidEv.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.living.emo.fragment.WifiSettingFragment.6
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (!z) {
                    return;
                }
                if (EmoUpdate.getInstance().getEmoVersion() < 18 || EmoUpdate.getInstance().getEmoVersionName().equals("1.2.0")) {
                    final Map<String, String> listUserHashMap = DbManager.getListUserHashMap();
                    if (listUserHashMap != null && listUserHashMap.size() > 0) {
                        final String[] strArr = new String[listUserHashMap.size()];
                        int i = 0;
                        for (Map.Entry<String, String> entry : listUserHashMap.entrySet()) {
                            strArr[i] = entry.getKey();
                            i++;
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(WifiSettingFragment.this.getActivity());
                        builder.setTitle("Choose a Wifi");
                        builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.living.emo.fragment.WifiSettingFragment.6.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                String str = strArr[i2];
                                byte[] bytes = str.getBytes();
                                LogUtil.m64e("mSsidBytes", "initEvent: mSsidBytes:" + bytes.length);
                                if (bytes.length > 31) {
                                    Toast.makeText(WifiSettingFragment.this.requireContext(), "Your input exceeds the maximum length allowed.", 0).show();
                                    return;
                                }
                                WifiSettingFragment.this.mSsidEv.setText(str);
                                WifiSettingFragment.this.mPwdEv.setText((String) listUserHashMap.get(str));
                                dialogInterface.dismiss();
                                WifiSettingFragment.this.mSsidEv.clearFocus();
                                WifiSettingFragment.this.mCheckBox.setChecked(true);
                                WifiSettingFragment.this.hideInput(WifiSettingFragment.this.requireContext(), WifiSettingFragment.this.mSsidEv);
                            }
                        });
                        builder.show();
                        return;
                    }
                    return;
                }
                WaitDialogView.show(WifiSettingFragment.this.requireContext(), "Obtaining available Wi-Fi from EMO…");
                WifiSettingFragment.this.mSettingActivity.write(WifiSettingFragment.this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.wifiRequest("start")));
                WifiSettingFragment.this.mHandler.postDelayed(WifiSettingFragment.this.task, 10000L);
            }
        });
        this.mSetConnect.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$WifiSettingFragment$MNacUZ2QTdlAQal-JYWBhGTdC8o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiSettingFragment.this.lambda$initEvent$2$WifiSettingFragment(view);
            }
        });
        this.mConnectBtn.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$WifiSettingFragment$tfdeoLaUyQawer2YakWvAg6nVog
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiSettingFragment.this.lambda$initEvent$3$WifiSettingFragment(view);
            }
        });
        this.mSsidEv.addTextChangedListener(new MytextWatcher(requireContext(), this.mSsidEv, 31));
        this.mPwdEv.addTextChangedListener(new MytextWatcher(requireContext(), this.mPwdEv, 63));
    }

    public /* synthetic */ void lambda$initEvent$0$WifiSettingFragment(View view) {
        hideInput(requireContext(), view);
    }

    public /* synthetic */ void lambda$initEvent$1$WifiSettingFragment(View view) {
        changeStateView(State.SET_CONNECT);
    }

    public /* synthetic */ void lambda$initEvent$2$WifiSettingFragment(View view) {
        this.mSsid = this.mSsidEv.getText().toString();
        this.mPwd = this.mPwdEv.getText().toString();
        if (TextUtils.isEmpty(this.mSsid)) {
            Toast.makeText(getContext(), "wifi ssid is required", 0).show();
            return;
        }
        byte[] bytes = this.mSsid.getBytes();
        LogUtil.m64e("mSsidBytes", "initEvent: mSsidBytes:" + bytes.length);
        if (bytes.length > 31) {
            Toast.makeText(requireContext(), "Your input exceeds the maximum length allowed.", 0).show();
            return;
        }
        if (TextUtils.isEmpty(this.mPwd)) {
            this.mPwd = "";
        }
        byte[] bytes2 = this.mPwd.getBytes();
        LogUtil.m64e("mPwdBytes", "initEvent: mSsidBytes:" + bytes2.length);
        if (bytes2.length > 63) {
            Toast.makeText(requireContext(), "Your input exceeds the maximum length allowed.", 0).show();
            return;
        }
        this.mSettingActivity.write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.wifi(this.mSsid, this.mPwd)));
        changeStateView(State.LOADING);
    }

    public /* synthetic */ void lambda$initEvent$3$WifiSettingFragment(View view) {
        changeStateView(State.SET_CONNECT);
    }

    /* loaded from: classes.dex */
    private class MytextWatcher implements TextWatcher {
        private int len;
        private Context mContext;
        private EditText mEditText;

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public MytextWatcher(Context context, EditText editText, int i) {
            this.mContext = context;
            this.mEditText = editText;
            this.len = i;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            byte[] bytes = editable.toString().getBytes();
            if (bytes.length > this.len) {
                this.mEditText.removeTextChangedListener(this);
                byte[] bArr = new byte[this.len];
                for (int i = 0; i < this.len; i++) {
                    bArr[i] = bytes[i];
                }
                String str = new String(bArr);
                LogUtil.m64e("TAG", "afterTextChanged: " + str.substring(str.length() - 1));
                if (WifiSettingFragment.isMessyCode(str.substring(str.length() - 1))) {
                    str = str.substring(0, str.length() - 1);
                }
                this.mEditText.setText(str);
                Selection.setSelection(this.mEditText.getEditableText(), str.length());
                this.mEditText.addTextChangedListener(this);
                Toast.makeText(WifiSettingFragment.this.requireContext(), "Your input exceeds the maximum length allowed.", 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isMessyCode(String str) {
        try {
            char[] charArray = Pattern.compile("\\s*|\t*|\r*|\n*").matcher(str).replaceAll("").replaceAll("\\p{P}", "").trim().toCharArray();
            int length = charArray != null ? charArray.length : 0;
            for (int i = 0; i < length; i++) {
                if (!Character.isLetterOrDigit(charArray[i])) {
                    if (!("" + charArray[i]).matches("[一-龥]+")) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
    }
}
