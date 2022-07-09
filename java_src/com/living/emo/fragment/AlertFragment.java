package com.living.emo.fragment;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.clj.fastble.data.BleDevice;
import com.google.android.material.timepicker.TimeModel;
import com.living.emo.activity.ToolAlertActivity;
import com.living.emo.adapter.AlertAdapter;
import com.living.emo.bean.AlarmBean;
import com.living.emo.bean.BleBean;
import com.living.emo.blebean.parse.BleAlarmResponseParse;
import com.living.emo.blebean.parse.BleResultParse;
import com.living.emo.blebean.response.AlarmResponse;
import com.living.emo.blebean.util.BleJsonUtil;
import com.living.emo.blebean.util.BleRequestUtil;
import com.living.emo.event.JsonEvent;
import com.living.emo.util.ByteUtil;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import com.zyyoona7.wheel.WheelView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes.dex */
public class AlertFragment extends AbstractBaseFragment {
    private List<AlarmBean> mAlarmBeans;
    private AlertAdapter mAlertAdapter;
    @BindView(R.id.alert_time_delete_btn)
    ImageButton mAlertDelete;
    @BindView(R.id.alert_selected_recy)
    RecyclerView mAlertRecy;
    @BindView(R.id.alert_time_save_btn)
    ImageButton mAlertSave;
    private AlarmBean mBean;
    private BleDevice mBleDevice;
    @BindView(R.id.wheelview_hour)
    WheelView<String> mHour;
    private List<String> mHourList;
    @BindView(R.id.wheelview_minute)
    WheelView<String> mMinute;
    private List<String> mMinuteList;
    @BindView(R.id.wheelview_recurrence)
    WheelView<String> mRecurrence;
    private List<String> mRecurrenceList;
    @BindView(R.id.wheelview)
    WheelView<String> mReminder;
    private List<String> mReminderlist;
    @BindView(R.id.alert_trun_on_off)
    Switch mSwitchOnOff;
    @BindView(R.id.alert_text_con)
    RelativeLayout mTextCon;
    @BindView(R.id.alert_time_add)
    ImageButton mTimeAdd;
    @BindView(R.id.alert_set_con)
    RelativeLayout mTimeCon;
    private ToolAlertActivity mToolAlertActivity;
    private int mCurrentPosition = -1;
    int mAlertOnOff = 1;
    private List<AlarmResponse.DataBean.AlarmBean.StateBean> mAlarmState = null;
    private State mCurrentState = State.None;

    /* loaded from: classes.dex */
    public enum State {
        None,
        Set,
        Update,
        Remove
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_alert;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        EventBus.getDefault().register(this);
        getReminderList();
        getHourList();
        getMinuteLIst();
        getRecurrenceList();
        ToolAlertActivity toolAlertActivity = (ToolAlertActivity) requireActivity();
        this.mToolAlertActivity = toolAlertActivity;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(toolAlertActivity);
        linearLayoutManager.setOrientation(1);
        this.mAlertRecy.setLayoutManager(linearLayoutManager);
        AlertAdapter alertAdapter = new AlertAdapter();
        this.mAlertAdapter = alertAdapter;
        this.mAlertRecy.setAdapter(alertAdapter);
        this.mAlertAdapter.setOnClickItemListener(new AlertAdapter.OnClickItemListener() { // from class: com.living.emo.fragment.AlertFragment.1
            @Override // com.living.emo.adapter.AlertAdapter.OnClickItemListener
            public void onClickItem(int i) {
                AlertFragment.this.mCurrentPosition = i;
                AlarmBean alarmBean = (AlarmBean) AlertFragment.this.mAlarmBeans.get(i);
                AlertFragment.this.mAlertOnOff = alarmBean.getOn();
                AlertFragment.this.updateTimeSetUI(alarmBean);
            }
        });
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    public void initData() {
        this.mBleDevice = BleBean.getInstance().getBleDevice();
        if (this.mAlarmBeans == null) {
            this.mAlarmBeans = new ArrayList();
        }
        this.mTimeCon.setVisibility(8);
        this.mReminder.setData(this.mReminderlist);
        this.mHour.setData(this.mHourList);
        this.mMinute.setData(this.mMinuteList);
        this.mRecurrence.setData(this.mRecurrenceList);
        this.mToolAlertActivity.write(this.mBleDevice, BleRequestUtil.alarm());
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    public void initEvent() {
        this.mTimeAdd.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$AlertFragment$iHGwmmvUxhoWoFeNVEzSQnBRWhk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertFragment.this.lambda$initEvent$0$AlertFragment(view);
            }
        });
        this.mSwitchOnOff.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.living.emo.fragment.AlertFragment.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    AlertFragment.this.mAlertOnOff = 1;
                } else {
                    AlertFragment.this.mAlertOnOff = 0;
                }
            }
        });
        this.mAlertDelete.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$AlertFragment$F1173vTK2MrUwS1MKHoe7Gvppq4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertFragment.this.lambda$initEvent$1$AlertFragment(view);
            }
        });
        this.mAlertSave.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$AlertFragment$5PvICdCSywMUiYkXvRbXZ4a_Zl0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertFragment.this.lambda$initEvent$2$AlertFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$0$AlertFragment(View view) {
        this.mTimeAdd.setVisibility(8);
        if (this.mAlarmBeans.size() != 4) {
            AlarmBean alarmBean = new AlarmBean(1, 1, "00:00", "ED", NotificationCompat.CATEGORY_ALARM, false);
            this.mBean = alarmBean;
            this.mAlarmBeans.add(alarmBean);
            int size = this.mAlarmBeans.size() - 1;
            this.mCurrentPosition = size;
            updateTimeSetUI(this.mAlarmBeans.get(size));
            if (this.mAlarmBeans.size() == 4) {
                this.mTimeAdd.setVisibility(8);
            }
            if (this.mAlarmBeans.size() == 1) {
                this.mTimeCon.setVisibility(0);
                this.mTextCon.setVisibility(8);
            }
            this.mAlertAdapter.setAddAlarm(this.mAlarmBeans);
            this.mAlertAdapter.setDefaultValue(this.mCurrentPosition);
        }
    }

    public /* synthetic */ void lambda$initEvent$1$AlertFragment(View view) {
        this.mAlertDelete.setEnabled(false);
        this.mAlertSave.setEnabled(false);
        this.mCurrentState = State.Remove;
        int i = this.mCurrentPosition;
        if (i == -1) {
            i = 0;
        }
        AlarmBean alarmBean = this.mAlarmBeans.get(i);
        if (!alarmBean.isUpdate()) {
            LogUtil.m64e("删除闹钟", "isupdate");
            this.mAlarmBeans.remove(this.mCurrentPosition);
            if (this.mAlarmBeans.size() == 0) {
                this.mTextCon.setVisibility(0);
                this.mTimeCon.setVisibility(8);
            }
            this.mAlertAdapter.setDefaultValue(0);
            this.mAlertAdapter.setAddAlarm(this.mAlarmBeans);
            this.mTimeAdd.setVisibility(0);
            this.mAlertSave.setEnabled(true);
            this.mAlertDelete.setEnabled(true);
            this.mCurrentPosition = 0;
            updateTimeSetUI(this.mAlarmBeans.get(0));
            return;
        }
        sendConfig("remove", alarmBean.getIndex());
    }

    public /* synthetic */ void lambda$initEvent$2$AlertFragment(View view) {
        int i = 0;
        this.mAlertDelete.setEnabled(false);
        this.mAlertSave.setEnabled(false);
        int i2 = this.mCurrentPosition;
        if (i2 != -1) {
            i = i2;
        }
        AlarmBean alarmBean = this.mAlarmBeans.get(i);
        if (alarmBean.isUpdate()) {
            this.mCurrentState = State.Update;
            sendConfig("update", alarmBean.getIndex());
            return;
        }
        int i3 = 1;
        if (this.mAlarmState.size() != 0) {
            List<AlarmResponse.DataBean.AlarmBean.StateBean> list = this.mAlarmState;
            i3 = 1 + list.get(list.size() - 1).getIndex();
        }
        this.mCurrentState = State.Set;
        sendConfig("set", i3);
    }

    private void sendConfig(String str, int i) {
        int i2 = this.mAlertOnOff;
        String Alarm = BleJsonUtil.Alarm(str, new AlarmBean(i, i2, this.mHour.getSelectedItemData() + ":" + this.mMinute.getSelectedItemData(), this.mRecurrence.getSelectedItemData(), this.mReminder.getSelectedItemData().toLowerCase(), false));
        StringBuilder sb = new StringBuilder();
        sb.append("initEvent: ");
        sb.append(Alarm);
        LogUtil.m64e("TAG", sb.toString());
        this.mToolAlertActivity.write(this.mBleDevice, ByteUtil.strToByteArray(Alarm));
    }

    private static String captureName(String str) {
        char[] charArray = str.toCharArray();
        charArray[0] = (char) (charArray[0] - ' ');
        return String.valueOf(charArray);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTimeSetUI(AlarmBean alarmBean) {
        String captureName = captureName(alarmBean.getTag());
        String time = alarmBean.getTime();
        String recurrence = alarmBean.getRecurrence();
        int on = alarmBean.getOn();
        int indexOf = this.mReminderlist.indexOf(captureName);
        LogUtil.m64e("TAG", "reminderIndex:" + indexOf + "tag:" + captureName);
        this.mReminder.setSelectedItemPosition(indexOf);
        StringBuilder sb = new StringBuilder();
        sb.append("tagindex: ");
        sb.append(indexOf);
        LogUtil.m64e("TAG", sb.toString());
        String[] split = time.split(":");
        int indexOf2 = this.mHourList.indexOf(split[split.length - 2]);
        LogUtil.m64e("TAG", "hourIndex: " + indexOf2);
        this.mHour.setSelectedItemPosition(indexOf2);
        boolean z = true;
        int indexOf3 = this.mMinuteList.indexOf(split[split.length - 1]);
        LogUtil.m64e("TAG", "minuteIndex: " + indexOf3);
        this.mMinute.setSelectedItemPosition(indexOf3);
        int indexOf4 = this.mRecurrenceList.indexOf(recurrence);
        LogUtil.m64e("TAG", "recurrenceIndex: " + indexOf);
        this.mRecurrence.setSelectedItemPosition(indexOf4);
        Switch r0 = this.mSwitchOnOff;
        if (on != 1) {
            z = false;
        }
        r0.setChecked(z);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onJsonEvent(JsonEvent jsonEvent) {
        String json = jsonEvent.getJson();
        LogUtil.m63i("JsonEvent:AlertFragment", "emo->app ble data:" + json);
        BleAlarmResponseParse.alarm(json, new BleAlarmResponseParse.Callback() { // from class: com.living.emo.fragment.AlertFragment.3
            @Override // com.living.emo.blebean.parse.BleAlarmResponseParse.Callback
            public void response(List<AlarmResponse.DataBean.AlarmBean.StateBean> list) {
                AlertFragment.this.mAlarmState = list;
                if (AlertFragment.this.mAlarmBeans == null) {
                    AlertFragment.this.mAlarmBeans = new ArrayList();
                }
                AlertFragment.this.mAlarmBeans.clear();
                for (AlarmResponse.DataBean.AlarmBean.StateBean stateBean : list) {
                    AlertFragment.this.mAlarmBeans.add(new AlarmBean(stateBean.getIndex(), stateBean.getOn(), stateBean.getTime(), stateBean.getRecurrence(), stateBean.getTag(), true));
                }
                Collections.sort(AlertFragment.this.mAlarmBeans);
                AlertFragment.this.mAlertAdapter.setAddAlarm(AlertFragment.this.mAlarmBeans);
                if (AlertFragment.this.mAlarmBeans.size() == 0) {
                    AlertFragment.this.mTimeCon.setVisibility(8);
                    AlertFragment.this.mTextCon.setVisibility(0);
                } else {
                    AlertFragment alertFragment = AlertFragment.this;
                    alertFragment.updateTimeSetUI((AlarmBean) alertFragment.mAlarmBeans.get(AlertFragment.this.mCurrentPosition == -1 ? 0 : AlertFragment.this.mCurrentPosition));
                    AlertFragment.this.mAlertAdapter.setDefaultValue(AlertFragment.this.mCurrentPosition == -1 ? 0 : AlertFragment.this.mCurrentPosition);
                    AlertFragment.this.mTextCon.setVisibility(8);
                    AlertFragment.this.mTimeCon.setVisibility(0);
                }
                if (list.size() >= 4) {
                    AlertFragment.this.mTimeAdd.setVisibility(8);
                } else {
                    AlertFragment.this.mTimeAdd.setVisibility(0);
                }
                AlertFragment.this.mAlertDelete.setEnabled(true);
                AlertFragment.this.mAlertSave.setEnabled(true);
            }
        });
        BleResultParse.alarm(json, new BleResultParse.Callback() { // from class: com.living.emo.fragment.AlertFragment.4
            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void success() {
                if (AlertFragment.this.mCurrentState == State.Set) {
                    Toast.makeText(AlertFragment.this.mToolAlertActivity, "Set success ", 0).show();
                } else if (AlertFragment.this.mCurrentState == State.Update) {
                    Toast.makeText(AlertFragment.this.mToolAlertActivity, "Update success ", 0).show();
                } else {
                    AlertFragment.this.mCurrentPosition = 0;
                    Toast.makeText(AlertFragment.this.mToolAlertActivity, "remove success ", 0).show();
                }
                AlertFragment.this.mCurrentState = State.None;
                AlertFragment.this.mToolAlertActivity.write(AlertFragment.this.mBleDevice, BleRequestUtil.alarm());
            }

            @Override // com.living.emo.blebean.parse.BleResultParse.Callback
            public void fail() {
                if (AlertFragment.this.mCurrentState == State.Set) {
                    Toast.makeText(AlertFragment.this.mToolAlertActivity, "Set fail ", 0).show();
                } else if (AlertFragment.this.mCurrentState == State.Update) {
                    Toast.makeText(AlertFragment.this.mToolAlertActivity, "Update fail ", 0).show();
                } else {
                    Toast.makeText(AlertFragment.this.mToolAlertActivity, "remove fail ", 0).show();
                }
                AlertFragment.this.mCurrentState = State.None;
                Toast.makeText(AlertFragment.this.mToolAlertActivity, "set fail ", 0).show();
                AlertFragment.this.mToolAlertActivity.write(AlertFragment.this.mBleDevice, BleRequestUtil.alarm());
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        EventBus.getDefault().unregister(this);
        if (this.mAlertAdapter != null) {
            this.mAlertAdapter = null;
        }
        if (this.mAlarmBeans != null) {
            this.mAlarmBeans = null;
        }
        if (this.mCurrentPosition != -1) {
            this.mCurrentPosition = -1;
        }
    }

    private void getMinuteLIst() {
        this.mMinuteList = new ArrayList();
        for (int i = 0; i < 60; i++) {
            this.mMinuteList.add(String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i)));
        }
    }

    private void getRecurrenceList() {
        ArrayList arrayList = new ArrayList();
        this.mRecurrenceList = arrayList;
        arrayList.add("ED");
        this.mRecurrenceList.add("MON");
        this.mRecurrenceList.add("TUE");
        this.mRecurrenceList.add("WED");
        this.mRecurrenceList.add("THU");
        this.mRecurrenceList.add("FRI");
        this.mRecurrenceList.add("SAT");
        this.mRecurrenceList.add("SUN");
        this.mRecurrenceList.add("WDAY");
        this.mRecurrenceList.add("WKDN");
        this.mRecurrenceList.add("ONCE");
    }

    private void getHourList() {
        this.mHourList = new ArrayList();
        for (int i = 0; i < 24; i++) {
            this.mHourList.add(String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i)));
        }
    }

    private void getReminderList() {
        ArrayList arrayList = new ArrayList();
        this.mReminderlist = arrayList;
        arrayList.add("Alarm");
        this.mReminderlist.add("Pill");
        this.mReminderlist.add("Eat");
        this.mReminderlist.add("Sleep");
        this.mReminderlist.add("Gym");
    }
}
