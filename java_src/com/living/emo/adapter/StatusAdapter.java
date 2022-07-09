package com.living.emo.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.bean.StatusBean;
import com.livingai.emopet.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class StatusAdapter extends RecyclerView.Adapter<ViewHolder> {
    private ArrayList<StatusBean> mData = new ArrayList<>();

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.includ_alert, viewGroup, false));
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        StatusBean statusBean = this.mData.get(i);
        viewHolder.mRela.setBackgroundResource(statusBean.getRimg());
        viewHolder.mText.setText(statusBean.getText());
    }

    public void setData(StatusBean statusBean) {
        if (this.mData.size() >= 3) {
            notifyItemRangeRemoved(this.mData.size() - 1, 1);
            ArrayList<StatusBean> arrayList = this.mData;
            arrayList.remove(arrayList.size() - 1);
        }
        this.mData.add(0, statusBean);
        notifyItemInserted(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        RelativeLayout mRela;
        TextView mText;

        public ViewHolder(View view) {
            super(view);
            this.mText = (TextView) view.findViewById(R.id.recy_alert_text);
            this.mRela = (RelativeLayout) view.findViewById(R.id.rec_alert_con);
        }
    }
}
