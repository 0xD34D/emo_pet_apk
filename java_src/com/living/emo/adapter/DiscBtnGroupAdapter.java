package com.living.emo.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class DiscBtnGroupAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = "zxl::" + DiscBtnGroupAdapter.class.getSimpleName();
    private OnClickListener listener = null;

    /* loaded from: classes.dex */
    public interface OnClickListener {
        void onClick(View view, int i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recy_btn_group, viewGroup, false));
    }

    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        ((Button) viewHolder.itemView.findViewById(R.id.recy_btn)).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$DiscBtnGroupAdapter$DiIckZcZsPAsG8tCcoAUcBxr1Ps
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DiscBtnGroupAdapter.this.lambda$onBindViewHolder$0$DiscBtnGroupAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$DiscBtnGroupAdapter(int i, View view) {
        OnClickListener onClickListener = this.listener;
        if (onClickListener != null) {
            onClickListener.onClick(view, i);
            String str = TAG;
            LogUtil.m64e(str, "onBindViewHolder:-----> " + i);
        }
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public ViewHolder(View view) {
            super(view);
        }
    }

    public void setOnclickListener(OnClickListener onClickListener) {
        this.listener = onClickListener;
    }
}
