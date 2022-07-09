package com.living.emo.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.MyApplication;
import com.living.emo.bean.MusicBean;
import com.living.emo.view.LeftPopupWindow;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class MusicLeftListAdapter extends RecyclerView.Adapter<InnerHolder> {
    private static final String TAG = "MusicLeftListAdapter";
    private List<MusicBean.DataBean> mData = new ArrayList();
    private LeftPopupWindow.PlayerItemListener mItemListener = null;
    private int playIndex = -1;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public InnerHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new InnerHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recy_music_list, viewGroup, false));
    }

    public void onBindViewHolder(InnerHolder innerHolder, final int i) {
        TextView textView = (TextView) innerHolder.itemView.findViewById(R.id.recy_music_title);
        textView.setText(this.mData.get(i).getName());
        textView.setTextColor(MyApplication.getContext().getResources().getColor(i == this.playIndex ? R.color.text_color_ccc : R.color.text_music_list_coler));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.MusicLeftListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MusicLeftListAdapter.this.mItemListener != null) {
                    MusicLeftListAdapter.this.mItemListener.onPlayerItem((MusicBean.DataBean) MusicLeftListAdapter.this.mData.get(i));
                    MusicLeftListAdapter.this.playIndex = i;
                    MusicLeftListAdapter.this.notifyDataSetChanged();
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setData(List<MusicBean.DataBean> list) {
        this.mData.clear();
        this.mData.addAll(list);
        notifyDataSetChanged();
    }

    public void setPlayerItemListener(LeftPopupWindow.PlayerItemListener playerItemListener) {
        this.mItemListener = playerItemListener;
    }

    /* loaded from: classes.dex */
    public class InnerHolder extends RecyclerView.ViewHolder {
        public InnerHolder(View view) {
            super(view);
        }
    }
}
