package com.living.emo.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.bean.AlarmBean;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class AlertAdapter extends RecyclerView.Adapter<ViewHolder> {
    private List<AlarmBean> mData = new ArrayList();
    private OnClickItemListener mCallBack = null;
    private int defaultValue = 0;

    /* loaded from: classes.dex */
    public interface OnClickItemListener {
        void onClickItem(int i);
    }

    /* loaded from: classes.dex */
    public enum State {
        NORMAL,
        PRESS
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recy_alert_btn, viewGroup, false);
        ViewHolder viewHolder = new ViewHolder(inflate);
        inflate.setTag(viewHolder);
        inflate.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$AlertAdapter$A_S0UA2Mhlz7xHIFCrroncpulYw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AlertAdapter.this.lambda$onCreateViewHolder$0$AlertAdapter(view);
            }
        });
        return viewHolder;
    }

    public /* synthetic */ void lambda$onCreateViewHolder$0$AlertAdapter(View view) {
        int adapterPosition = ((ViewHolder) view.getTag()).getAdapterPosition();
        this.defaultValue = adapterPosition;
        OnClickItemListener onClickItemListener = this.mCallBack;
        if (onClickItemListener != null) {
            onClickItemListener.onClickItem(adapterPosition);
        }
        notifyDataSetChanged();
        LogUtil.m64e("ee", "onCreateViewHolder: " + this.defaultValue);
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        AlarmBean alarmBean = this.mData.get(i);
        if (i == this.defaultValue) {
            viewHolder.updateUi(State.PRESS, alarmBean.getTime());
        } else {
            viewHolder.updateUi(State.NORMAL, alarmBean.getTime());
        }
        LogUtil.m64e("alarmBean", "position" + i + "    data:" + alarmBean.toString());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setAddAlarm(List<AlarmBean> list) {
        this.mData.clear();
        this.mData.addAll(list);
        notifyDataSetChanged();
    }

    public void setDefaultValue(int i) {
        this.defaultValue = i;
        notifyDataSetChanged();
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public LinearLayout mNormalCon;
        public TextView mNormalText;
        public LinearLayout mPressCon;
        public TextView mPressText;

        public ViewHolder(View view) {
            super(view);
            this.mNormalCon = (LinearLayout) view.findViewById(R.id.alert_time_normal);
            this.mPressCon = (LinearLayout) view.findViewById(R.id.alert_time_press);
            this.mNormalText = (TextView) view.findViewById(R.id.alert_time_text_normal);
            this.mPressText = (TextView) view.findViewById(R.id.alert_time_text_press);
        }

        public void updateUi(State state, String str) {
            if (state == State.NORMAL) {
                this.mNormalCon.setVisibility(0);
                this.mPressCon.setVisibility(8);
                this.mNormalText.setText(str);
            } else if (state == State.PRESS) {
                this.mNormalCon.setVisibility(8);
                this.mPressCon.setVisibility(0);
                this.mPressText.setText(str);
            }
        }
    }

    public void setOnClickItemListener(OnClickItemListener onClickItemListener) {
        this.mCallBack = onClickItemListener;
    }
}
