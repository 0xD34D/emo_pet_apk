package com.living.emo.fragment;

import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.Switch;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
import com.zyyoona7.wheel.WheelView;
/* loaded from: classes.dex */
public class AlertFragment_ViewBinding implements Unbinder {
    private AlertFragment target;

    public AlertFragment_ViewBinding(AlertFragment alertFragment, View view) {
        this.target = alertFragment;
        alertFragment.mAlertRecy = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.alert_selected_recy, "field 'mAlertRecy'", RecyclerView.class);
        alertFragment.mTimeAdd = (ImageButton) Utils.findRequiredViewAsType(view, R.id.alert_time_add, "field 'mTimeAdd'", ImageButton.class);
        alertFragment.mTimeCon = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.alert_set_con, "field 'mTimeCon'", RelativeLayout.class);
        alertFragment.mReminder = (WheelView) Utils.findRequiredViewAsType(view, R.id.wheelview, "field 'mReminder'", WheelView.class);
        alertFragment.mHour = (WheelView) Utils.findRequiredViewAsType(view, R.id.wheelview_hour, "field 'mHour'", WheelView.class);
        alertFragment.mMinute = (WheelView) Utils.findRequiredViewAsType(view, R.id.wheelview_minute, "field 'mMinute'", WheelView.class);
        alertFragment.mRecurrence = (WheelView) Utils.findRequiredViewAsType(view, R.id.wheelview_recurrence, "field 'mRecurrence'", WheelView.class);
        alertFragment.mSwitchOnOff = (Switch) Utils.findRequiredViewAsType(view, R.id.alert_trun_on_off, "field 'mSwitchOnOff'", Switch.class);
        alertFragment.mAlertDelete = (ImageButton) Utils.findRequiredViewAsType(view, R.id.alert_time_delete_btn, "field 'mAlertDelete'", ImageButton.class);
        alertFragment.mAlertSave = (ImageButton) Utils.findRequiredViewAsType(view, R.id.alert_time_save_btn, "field 'mAlertSave'", ImageButton.class);
        alertFragment.mTextCon = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.alert_text_con, "field 'mTextCon'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        AlertFragment alertFragment = this.target;
        if (alertFragment != null) {
            this.target = null;
            alertFragment.mAlertRecy = null;
            alertFragment.mTimeAdd = null;
            alertFragment.mTimeCon = null;
            alertFragment.mReminder = null;
            alertFragment.mHour = null;
            alertFragment.mMinute = null;
            alertFragment.mRecurrence = null;
            alertFragment.mSwitchOnOff = null;
            alertFragment.mAlertDelete = null;
            alertFragment.mAlertSave = null;
            alertFragment.mTextCon = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
