package com.living.emo.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.bean.AchievementBean;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class LifeTimeAdapter extends RecyclerView.Adapter<ViewHolder> {
    private OnClickListener callback;
    private final Activity mActivity;
    private Context mContext;
    private ArrayList<AchievementBean> mDatas = new ArrayList<>();

    /* loaded from: classes.dex */
    public interface OnClickListener {
        void onClick(int i, AchievementBean achievementBean);
    }

    public LifeTimeAdapter(FragmentActivity fragmentActivity) {
        this.mActivity = fragmentActivity;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        this.mContext = context;
        final ViewHolder viewHolder = new ViewHolder(LayoutInflater.from(context).inflate(R.layout.recy_life_time, viewGroup, false));
        viewHolder.mImgV.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$LifeTimeAdapter$5X5siugnd5Ylvr8M3apLkClw-AQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LifeTimeAdapter.this.lambda$onCreateViewHolder$0$LifeTimeAdapter(viewHolder, view);
            }
        });
        return viewHolder;
    }

    public /* synthetic */ void lambda$onCreateViewHolder$0$LifeTimeAdapter(ViewHolder viewHolder, View view) {
        OnClickListener onClickListener;
        int adapterPosition = viewHolder.getAdapterPosition();
        AchievementBean achievementBean = this.mDatas.get(adapterPosition);
        if (achievementBean.isReach() && (onClickListener = this.callback) != null) {
            onClickListener.onClick(adapterPosition, achievementBean);
        }
        LogUtil.m64e("hello", "onCreateViewHolder: " + viewHolder.getAdapterPosition());
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        AchievementBean achievementBean = this.mDatas.get(i);
        viewHolder.mImgV.setBackgroundResource(achievementBean.getRes());
        viewHolder.mImgV.setClickable(achievementBean.isReach());
        viewHolder.notavailablenow.setVisibility(achievementBean.isAvailable() ? 0 : 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDatas.size();
    }

    public void setDatas(ArrayList<AchievementBean> arrayList) {
        this.mDatas.clear();
        this.mDatas.addAll(arrayList);
        notifyDataSetChanged();
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public ImageView mImgV;
        public ImageView notavailablenow;

        public ViewHolder(View view) {
            super(view);
            this.mImgV = (ImageView) view.findViewById(R.id.recy_avch_img);
            this.notavailablenow = (ImageView) view.findViewById(R.id.recy_notavailablenow);
        }
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.callback = onClickListener;
    }
}
