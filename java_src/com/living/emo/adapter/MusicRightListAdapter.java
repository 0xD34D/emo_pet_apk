package com.living.emo.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.MyApplication;
import com.living.emo.bean.MusicBean;
import com.living.emo.view.RightPopupWindow;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class MusicRightListAdapter extends RecyclerView.Adapter<InnerHolder> {
    private List<MusicBean.DataBean> mData = new ArrayList();
    private RightPopupWindow.PlayerItemClickListener mPlayerItemCallback = null;
    private int playIndex = -1;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public InnerHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new InnerHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recy_music_list, viewGroup, false));
    }

    public void onBindViewHolder(InnerHolder innerHolder, final int i) {
        TextView textView = (TextView) innerHolder.itemView.findViewById(R.id.recy_music_title);
        textView.setText(this.mData.get(i).getName());
        textView.setTextColor(MyApplication.getContext().getResources().getColor(i == this.playIndex ? R.color.text_color_ccc : R.color.text_music_list_coler));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.MusicRightListAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MusicRightListAdapter.this.mPlayerItemCallback != null) {
                    MusicRightListAdapter.this.mPlayerItemCallback.playerItemClick((MusicBean.DataBean) MusicRightListAdapter.this.mData.get(i));
                    MusicRightListAdapter.this.playIndex = i;
                    MusicRightListAdapter.this.notifyDataSetChanged();
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

    public void setPlayerItemClickListener(RightPopupWindow.PlayerItemClickListener playerItemClickListener) {
        this.mPlayerItemCallback = playerItemClickListener;
    }

    /* loaded from: classes.dex */
    public class InnerHolder extends RecyclerView.ViewHolder {
        public InnerHolder(View view) {
            super(view);
        }
    }
}
