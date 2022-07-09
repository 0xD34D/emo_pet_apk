package com.living.emo.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import com.living.emo.MainActivity;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.parse.BleNetworkResponseParse;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.response.NetworkResponse;
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
public class TimezoneActivity extends BaseActivity {
    ImageButton mNotNow;
    ImageButton mSet;
    EditText mTimezoneName;

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_timezone);
        EventBus.getDefault().register(this);
        initView();
        initEvent();
    }

    private void initView() {
        this.mTimezoneName = (EditText) findViewById(R.id.timezone_name_set);
        this.mNotNow = (ImageButton) findViewById(R.id.timezone_not_now);
        this.mSet = (ImageButton) findViewById(R.id.timezone_set);
        String id = TimeZone.getDefault().getID();
        this.mTimezoneName.setEnabled(false);
        this.mTimezoneName.setText(id);
    }

    private void initEvent() {
        this.mNotNow.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$TimezoneActivity$uG6uNGIRZTTVs11pqGBqk6GHjWU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimezoneActivity.this.lambda$initEvent$0$TimezoneActivity(view);
            }
        });
        this.mSet.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$TimezoneActivity$jrSCaLwnG1nOAB2n2HWaiuCQ2A8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimezoneActivity.this.lambda$initEvent$1$TimezoneActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$0$TimezoneActivity(View view) {
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

    public /* synthetic */ void lambda$initEvent$1$TimezoneActivity(View view) {
        this.mSet.setEnabled(false);
        write(BleBean.getInstance().getBleDevice(), ByteUtil.strToByteArray(BleJsonUtil.timeZone(TimeZone.getDefault())));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:Timezone", "emo->app ble data:" + json);
        BleResultParse.timezone(json, new BleResultParse.Callback() { // from class: com.living.emo.activity.TimezoneActivity.1
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                TimezoneActivity.this.write(BleBean.getInstance().getBleDevice(), BleRequestUtil.network());
                TimezoneActivity.this.showToast("Time zone set successfully");
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                TimezoneActivity.this.mSet.setEnabled(true);
                TimezoneActivity.this.showToast("Time zone setting failed, please reset");
            }
        });
        BleNetworkResponseParse.network(json, new BleNetworkResponseParse.Callback() { // from class: com.living.emo.activity.TimezoneActivity.2
            @Override // com.living.emo.blebean.parse.BleNetworkResponseParse.Callback
            public void response(NetworkResponse.DataBean.NetworkBean networkBean) {
                if (networkBean.getConnected() == 1) {
                    TimezoneActivity.this.goToActivity(MainActivity.class);
                } else {
                    TimezoneActivity.this.goToActivity(WifiActivity.class);
                }
            }
        });
    }

    public void goToActivity(Class cls) {
        startActivity(new Intent(this, cls));
        finish();
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
    }
}
