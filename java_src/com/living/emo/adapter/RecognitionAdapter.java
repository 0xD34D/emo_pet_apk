package com.living.emo.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.bean.RecognitionBean;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class RecognitionAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final int FACE_ADD = 0;
    private static final int FACE_PEOPLE = 1;
    private ArrayList<RecognitionBean> mData = new ArrayList<>();
    private onItemClickListener mListener = null;
    private int currPosition = 0;

    /* loaded from: classes.dex */
    public interface onItemClickListener {
        void ViewClick(RecognitionBean recognitionBean);

        void addClick(int i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i == 0 ? 0 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LogUtil.m64e("tag", "viewType:" + i);
        if (i == 0) {
            return new AddViewHolder(View.inflate(viewGroup.getContext(), R.layout.recy_face_add_adapter, null));
        }
        return new ViewHolder(View.inflate(viewGroup.getContext(), R.layout.recy_face_list_adapter, null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i) {
        if (viewHolder instanceof AddViewHolder) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$RecognitionAdapter$OoK_HSRuzxRRCue0H_kdj4MnXkQ
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RecognitionAdapter.this.lambda$onBindViewHolder$0$RecognitionAdapter(i, view);
                }
            });
        } else if (viewHolder instanceof ViewHolder) {
            if (this.currPosition == i) {
                ((ViewHolder) viewHolder).mFaceName.setBackgroundResource(R.drawable.rec_rec_bg_people_s);
            } else {
                ((ViewHolder) viewHolder).mFaceName.setBackgroundResource(R.drawable.rec_rec_bg_people_n);
            }
            final RecognitionBean recognitionBean = this.mData.get(i);
            String name = recognitionBean.getName();
            if (name.length() > 12) {
                name = name.substring(0, 9) + "...";
            }
            ((ViewHolder) viewHolder).mFaceName.setText(name);
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$RecognitionAdapter$v7g7NCV7HrdHmfPVaWy5h_rpDMc
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RecognitionAdapter.this.lambda$onBindViewHolder$1$RecognitionAdapter(i, recognitionBean, view);
                }
            });
        }
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$RecognitionAdapter(int i, View view) {
        LogUtil.m64e("TAG", "AddViewHolder: " + i);
        onItemClickListener onitemclicklistener = this.mListener;
        if (onitemclicklistener != null) {
            onitemclicklistener.addClick(this.mData.size() - 1);
        }
    }

    public /* synthetic */ void lambda$onBindViewHolder$1$RecognitionAdapter(int i, RecognitionBean recognitionBean, View view) {
        this.currPosition = i;
        notifyDataSetChanged();
        onItemClickListener onitemclicklistener = this.mListener;
        if (onitemclicklistener != null) {
            onitemclicklistener.ViewClick(recognitionBean);
        }
        LogUtil.m64e("TAG", "ViewHolder: " + i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mData.size();
    }

    public void setData(ArrayList<RecognitionBean> arrayList) {
        this.mData.clear();
        this.mData.addAll(arrayList);
        this.currPosition = 0;
        notifyDataSetChanged();
    }

    /* loaded from: classes.dex */
    public static class AddViewHolder extends RecyclerView.ViewHolder {
        public AddViewHolder(View view) {
            super(view);
        }
    }

    /* loaded from: classes.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public TextView mFaceName;

        public ViewHolder(View view) {
            super(view);
            this.mFaceName = (TextView) view.findViewById(R.id.rec_face_name);
        }
    }

    public void setOnItemClickListener(onItemClickListener onitemclicklistener) {
        if (this.mListener == null) {
            this.mListener = onitemclicklistener;
        }
    }
}
