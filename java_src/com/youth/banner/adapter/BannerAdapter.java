package com.youth.banner.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.youth.banner.listener.OnBannerListener;
import com.youth.banner.util.BannerUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class BannerAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> implements IViewHolder<T, VH> {
    private OnBannerListener mOnBannerListener;
    private VH mViewHolder;
    protected List<T> mDatas = new ArrayList();
    private int increaseCount = 2;

    public BannerAdapter(List<T> list) {
        setDatas(list);
    }

    public void setDatas(List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.mDatas = list;
    }

    public T getData(int i) {
        return this.mDatas.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(VH vh, int i) {
        this.mViewHolder = vh;
        final int realPosition = getRealPosition(i);
        onBindView(vh, this.mDatas.get(realPosition), realPosition, getRealCount());
        if (this.mOnBannerListener != null) {
            vh.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.youth.banner.adapter.-$$Lambda$BannerAdapter$VoIxykV5fG69Ff1vwQXS08emVbk
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BannerAdapter.this.lambda$onBindViewHolder$0$BannerAdapter(realPosition, view);
                }
            });
        }
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$BannerAdapter(int i, View view) {
        this.mOnBannerListener.OnBannerClick(this.mDatas.get(i), i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        return (VH) ((RecyclerView.ViewHolder) onCreateHolder(viewGroup, i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getRealCount() > 1 ? getRealCount() + this.increaseCount : getRealCount();
    }

    public int getRealCount() {
        List<T> list = this.mDatas;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public int getRealPosition(int i) {
        return BannerUtils.getRealPosition(this.increaseCount == 2, i, getRealCount());
    }

    public void setOnBannerListener(OnBannerListener onBannerListener) {
        this.mOnBannerListener = onBannerListener;
    }

    public VH getViewHolder() {
        return this.mViewHolder;
    }

    public void setIncreaseCount(int i) {
        this.increaseCount = i;
    }
}
