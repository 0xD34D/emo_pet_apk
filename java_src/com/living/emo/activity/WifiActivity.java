package com.living.emo.activity;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.clj.fastble.data.BleDevice;
import com.living.emo.MainActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.bean.EmoUpdate;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.parse.BleVersionResponseParse;
import com.living.emo.blebean.parse.BleWifiRequestParse;
import com.living.emo.blebean.response.VersionResponse;
import com.living.emo.blebean.response.WifiRequestResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.DatabaseUtil;
import com.living.emo.util.DbManager;
import com.living.emo.util.LogUtil;
import com.living.emo.view.WaitDialogView;
import com.livingai.emopet.R;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class WifiActivity extends BaseActivity {
    private static final String TAG = "zxl::" + WifiActivity.class.getSimpleName();
    private ImageView mAnim;
    private RelativeLayout mAnimBox;
    private BleDevice mBleDevice;
    private CheckBox mCheckBox;
    private Handler mHandler;
    private DatabaseUtil mHelp;
    private ImageButton mNotNow;
    private EditText mPwd;
    private String mPwdText;
    private ImageButton mSet;
    private EditText mSsidEd;
    private String mSsidEdText;
    private RelativeLayout mUserBox;
    private ImageView mWifiTxt;
    private boolean mIsSend = false;
    public Runnable task = new Runnable() { // from class: com.living.emo.activity.WifiActivity.3
        @Override // java.lang.Runnable
        public void run() {
            WaitDialogView.dismiss();
            WifiActivity wifiActivity = WifiActivity.this;
            wifiActivity.write(wifiActivity.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.wifiRequest("stop")));
            WifiActivity.this.showToast("timeout");
        }
    };

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_wifi);
        this.mHandler = new Handler();
        initData();
        initViews();
        initEvents();
        EventBus.getDefault().register(this);
    }

    public void hideInput(Context context, View view) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    private void hide() {
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(0, 2);
    }

    private void initEvents() {
        this.mSsidEd.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.living.emo.activity.WifiActivity.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (!z) {
                    return;
                }
                if (EmoUpdate.getInstance().getEmoVersion() < 18 || EmoUpdate.getInstance().getEmoVersionName().equals("1.2.0")) {
                    final Map<String, String> listUserHashMap = DbManager.getListUserHashMap();
                    if (listUserHashMap.size() > 0) {
                        final String[] strArr = new String[listUserHashMap.size()];
                        int i = 0;
                        for (Map.Entry<String, String> entry : listUserHashMap.entrySet()) {
                            strArr[i] = entry.getKey();
                            i++;
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(WifiActivity.this);
                        builder.setTitle("Choose a Wifi");
                        builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.WifiActivity.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                String str = strArr[i2];
                                if (str.length() > 31) {
                                    WifiActivity.this.showToast("Your input exceeds the maximum length allowed.");
                                    return;
                                }
                                WifiActivity.this.mSsidEd.setText(str);
                                WifiActivity.this.mPwd.setText((String) listUserHashMap.get(str));
                                WifiActivity.this.mCheckBox.setChecked(true);
                                dialogInterface.dismiss();
                                WifiActivity.this.mSsidEd.clearFocus();
                                WifiActivity.this.hideInput(WifiActivity.this, WifiActivity.this.mSsidEd);
                            }
                        });
                        builder.show();
                        return;
                    }
                    return;
                }
                WaitDialogView.show(WifiActivity.this, "Obtaining available Wi-Fi from EMO…");
                WifiActivity wifiActivity = WifiActivity.this;
                wifiActivity.write(wifiActivity.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.wifiRequest("start")));
                WifiActivity.this.mHandler.postDelayed(WifiActivity.this.task, 10000L);
            }
        });
        findViewById(R.id.wifi_box_conf).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.WifiActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((InputMethodManager) WifiActivity.this.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        });
        EditText editText = this.mSsidEd;
        editText.addTextChangedListener(new MytextWatcher(this, editText, 31));
        EditText editText2 = this.mPwd;
        editText2.addTextChangedListener(new MytextWatcher(this, editText2, 63));
        this.mSet.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$WifiActivity$9hm_1wyuWU1qN7yU69ca2yIt3Eo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiActivity.this.lambda$initEvents$0$WifiActivity(view);
            }
        });
        this.mNotNow.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$WifiActivity$W_N54gla21HWO9n3GsK5OOOLdRI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WifiActivity.this.lambda$initEvents$1$WifiActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvents$0$WifiActivity(View view) {
        this.mSet.setEnabled(false);
        this.mSsidEdText = this.mSsidEd.getText().toString();
        this.mPwdText = this.mPwd.getText().toString();
        if (TextUtils.isEmpty(this.mSsidEdText)) {
            showToast("ssid is required");
            this.mSet.setEnabled(true);
        } else if (this.mSsidEdText.getBytes().length > 31) {
            showToast("Your input exceeds the maximum length allowed.");
            this.mSet.setEnabled(true);
        } else {
            if (TextUtils.isEmpty(this.mPwdText)) {
                this.mPwdText = "";
            }
            if (this.mPwdText.getBytes().length > 63) {
                showToast("Your input exceeds the maximum length allowed.");
                this.mSet.setEnabled(true);
                return;
            }
            write(this.mBleDevice, ByteUtil.strToByteArray(BleJsonUtil.wifi(this.mSsidEdText, this.mPwdText)));
            this.mIsSend = true;
            updateUi();
        }
    }

    public /* synthetic */ void lambda$initEvents$1$WifiActivity(View view) {
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

    /* loaded from: classes.dex */
    public class MytextWatcher implements TextWatcher {
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
            WifiActivity.this = r1;
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
                if (WifiActivity.isMessyCode(str.substring(str.length() - 1))) {
                    str = str.substring(0, str.length() - 1);
                }
                this.mEditText.setText(str);
                Selection.setSelection(this.mEditText.getEditableText(), str.length());
                this.mEditText.addTextChangedListener(this);
                Toast.makeText(WifiActivity.this, "Your input exceeds the maximum length allowed.", 0).show();
            }
        }
    }

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

    public void updateUi() {
        if (this.mIsSend) {
            this.mWifiTxt.setBackgroundResource(R.drawable.connect_txt_connect_wifi);
            this.mAnimBox.setVisibility(0);
            this.mUserBox.setVisibility(8);
            return;
        }
        this.mWifiTxt.setBackgroundResource(R.drawable.connect_txt_wifi);
        this.mAnimBox.setVisibility(8);
        this.mUserBox.setVisibility(0);
    }

    private void initData() {
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        write(this.mBleDevice, BleRequestUtil.version());
        this.mHelp = DbManager.getInstance(this);
    }

    private void initViews() {
        this.mSsidEd = (EditText) findViewById(R.id.wifi_ssid);
        EditText editText = (EditText) findViewById(R.id.wifi_password);
        this.mPwd = editText;
        editText.addTextChangedListener(new TextWatcher() { // from class: com.living.emo.activity.WifiActivity.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                String obj = WifiActivity.this.mPwd.getText().toString();
                String replaceAll = Pattern.compile("[^0-9a-zA-Z!@#$%^&*()_+-=?., /:;'\"]").matcher(obj).replaceAll("");
                if (!obj.equals(replaceAll)) {
                    WifiActivity.this.mPwd.setText(replaceAll);
                    WifiActivity.this.mPwd.setSelection(replaceAll.length());
                }
            }
        });
        this.mSet = (ImageButton) findViewById(R.id.wifi_set);
        this.mNotNow = (ImageButton) findViewById(R.id.wifi_not_now);
        this.mCheckBox = (CheckBox) findViewById(R.id.wifi_checkbox);
        this.mWifiTxt = (ImageView) findViewById(R.id.wifi_txt);
        this.mAnimBox = (RelativeLayout) findViewById(R.id.wifi_anim_box);
        this.mUserBox = (RelativeLayout) findViewById(R.id.wifi_user_box);
        ImageView imageView = (ImageView) findViewById(R.id.wifi_anim);
        this.mAnim = imageView;
        ((AnimationDrawable) imageView.getBackground()).start();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        BleVersionResponseParse.version(json, new BleVersionResponseParse.Callback() { // from class: com.living.emo.activity.WifiActivity.5
            @Override // com.living.emo.blebean.parse.BleVersionResponseParse.Callback
            public void response(VersionResponse.DataBean.VersionBean versionBean) {
                EmoUpdate.getInstance().setEmoVersionName(versionBean.getName());
                EmoUpdate.getInstance().setEmoVersion(versionBean.getNumber());
                PrintStream printStream = System.out;
                printStream.println("emo version:" + versionBean.getName() + "  emo num:" + versionBean.getNumber());
            }
        });
        BleResultParse.wifi(json, new BleResultParse.Callback() { // from class: com.living.emo.activity.WifiActivity.6
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                if (WifiActivity.this.mCheckBox.isChecked()) {
                    DbManager.insertOrUpdate(WifiActivity.this.mSsidEdText, WifiActivity.this.mPwdText);
                    DbManager.deleteRedundantData();
                } else if (DbManager.selectUserByssid(WifiActivity.this.mSsidEdText) != null) {
                    DbManager.deleteUser(WifiActivity.this.mSsidEdText);
                }
                WifiActivity.this.showToast("Network connection successful");
                WifiActivity.this.startActivity(new Intent(WifiActivity.this, MainActivity.class));
                WifiActivity.this.finish();
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                WifiActivity.this.mSet.setEnabled(true);
                WifiActivity.this.mIsSend = false;
                WifiActivity.this.updateUi();
                WifiActivity.this.showToast("Network connection failed. Please try again");
            }
        });
        BleWifiRequestParse.wifiReq(json, new BleWifiRequestParse.Callback() { // from class: com.living.emo.activity.WifiActivity.7
            @Override // com.living.emo.blebean.parse.BleWifiRequestParse.Callback
            public void success(List<WifiRequestResponse.DataBean.ListBean> list) {
                if (list == null) {
                    System.out.println("emo result 1");
                    return;
                }
                WaitDialogView.dismiss();
                WifiActivity.this.mHandler.removeCallbacks(WifiActivity.this.task);
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
                    AlertDialog.Builder builder = new AlertDialog.Builder(WifiActivity.this);
                    builder.setTitle("Choose a Wifi");
                    builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.living.emo.activity.WifiActivity.7.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i2) {
                            String str = strArr[i2];
                            if (str.getBytes().length > 31) {
                                WifiActivity.this.showToast("Your input exceeds the maximum length allowed.");
                                return;
                            }
                            String selectUserByssid = DbManager.selectUserByssid(str);
                            WifiActivity.this.mSsidEd.setText(str);
                            WifiActivity.this.mSsidEd.setSelection(str.length());
                            WifiActivity.this.mPwd.setText("");
                            if (selectUserByssid != null) {
                                WifiActivity.this.mPwd.setText(selectUserByssid);
                                WifiActivity.this.mCheckBox.setChecked(true);
                                WifiActivity.this.hideInput(WifiActivity.this, WifiActivity.this.findViewById(R.id.wifi_box_conf));
                            }
                            dialogInterface.dismiss();
                        }
                    });
                    builder.show();
                }
            }

            @Override // com.living.emo.blebean.parse.BleWifiRequestParse.Callback
            public void fail() {
                WaitDialogView.dismiss();
            }
        });
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
