package com.living.emo.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.bean.TextBean;
import com.livingai.emopet.R;
import com.youth.banner.adapter.BannerAdapter;
import java.util.List;
/* loaded from: classes.dex */
public class BannerTextAdpter extends BannerAdapter<TextBean, ViewHolder> {
    public BannerTextAdpter(List<TextBean> list) {
        super(list);
    }

    @Override // com.youth.banner.adapter.IViewHolder
    public ViewHolder onCreateHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.banner_text_des, viewGroup, false));
    }

    public void onBindView(ViewHolder viewHolder, TextBean textBean, int i, int i2) {
        viewHolder.mTextBean.setText(textBean.getTest());
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView mTextBean;

        public ViewHolder(View view) {
            super(view);
            this.mTextBean = (TextView) view.findViewById(R.id.recy_text_bean);
        }
    }
}
