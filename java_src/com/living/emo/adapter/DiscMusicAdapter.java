package com.living.emo.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.bean.MusicBean;
import com.living.emo.view.DiscWindow;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DiscMusicAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = "zxl::" + DiscMusicAdapter.class.getSimpleName();
    private List<MusicBean.DataBean> mDiscList = new ArrayList();
    private DiscWindow.PlayerItemListener mItemListener = null;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recy_disc_list, viewGroup, false));
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        final MusicBean.DataBean dataBean = this.mDiscList.get(i);
        viewHolder.mTitle.setText(dataBean.getName());
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.DiscMusicAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DiscMusicAdapter.this.mItemListener != null) {
                    DiscMusicAdapter.this.mItemListener.onPlayerItem(dataBean);
                }
            }
        });
    }

    public void setDiscList(List<MusicBean.DataBean> list) {
        this.mDiscList.clear();
        this.mDiscList.addAll(list);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDiscList.size();
    }

    public void setPlayerItemListener(DiscWindow.PlayerItemListener playerItemListener) {
        this.mItemListener = playerItemListener;
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public final TextView mTitle;

        public ViewHolder(View view) {
            super(view);
            this.mTitle = (TextView) view.findViewById(R.id.recy_disc_title);
        }
    }
}
