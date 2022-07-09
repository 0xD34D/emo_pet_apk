package com.living.emo.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.blebean.response.LightResponse;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class LightListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = "zxl::" + LightListAdapter.class.getSimpleName();
    private Context mContext;
    ArrayList<LightResponse.DataBean.LightBean.StateBean> mData = new ArrayList<>();
    private OnCheckedChangeListener mCallBack = null;

    /* loaded from: classes.dex */
    public interface OnCheckedChangeListener {
        void setOnOffLight(int i);

        void setRename(int i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 4;
    }

    public LightListAdapter(Context context) {
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recy_light_list, viewGroup, false));
    }

    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        LinearLayout linearLayout = (LinearLayout) viewHolder.itemView.findViewById(R.id.recy_light_radio_group);
        ImageButton imageButton = (ImageButton) viewHolder.itemView.findViewById(R.id.radio_btn_on);
        ImageButton imageButton2 = (ImageButton) viewHolder.itemView.findViewById(R.id.radio_btn_off);
        imageButton.setEnabled(true);
        imageButton2.setEnabled(true);
        ArrayList<LightResponse.DataBean.LightBean.StateBean> arrayList = this.mData;
        if (arrayList == null || arrayList.size() - 1 < i) {
            viewHolder.mLightOnIv.setBackgroundResource(R.drawable.light_off);
            viewHolder.mLightNumIv.setVisibility(8);
            linearLayout.setVisibility(8);
            return;
        }
        viewHolder.mLightOnIv.setBackgroundResource(R.drawable.light_on);
        LightResponse.DataBean.LightBean.StateBean stateBean = this.mData.get(i);
        viewHolder.mLightNumIv.setVisibility(0);
        linearLayout.setVisibility(0);
        viewHolder.mLightNumIv.setText(stateBean.getName());
        if (stateBean.getOn() == 1) {
            imageButton.setBackgroundResource(R.drawable.btn_on);
            imageButton2.setBackgroundResource(R.drawable.btn_off_1);
            imageButton.setEnabled(false);
            imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$LightListAdapter$y03DGTulGdzW-1skBWQHF3aBjNY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightListAdapter.this.lambda$onBindViewHolder$0$LightListAdapter(i, view);
                }
            });
        } else if (stateBean.getOn() == 0) {
            imageButton.setBackgroundResource(R.drawable.btn_on_1);
            imageButton2.setBackgroundResource(R.drawable.btn_off);
            imageButton2.setEnabled(false);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$LightListAdapter$NhnlT_w7pULbj936w0b-9SL0ERI
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LightListAdapter.this.lambda$onBindViewHolder$1$LightListAdapter(i, view);
                }
            });
        }
        viewHolder.mLightNumIv.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$LightListAdapter$PZVjVKOgpD0dRSAPdjFt7fASmn8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LightListAdapter.this.lambda$onBindViewHolder$2$LightListAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$LightListAdapter(int i, View view) {
        LogUtil.m64e(TAG, "onCheckedChanged: radio_btn_off");
        OnCheckedChangeListener onCheckedChangeListener = this.mCallBack;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.setOnOffLight(i);
        }
    }

    public /* synthetic */ void lambda$onBindViewHolder$1$LightListAdapter(int i, View view) {
        OnCheckedChangeListener onCheckedChangeListener = this.mCallBack;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.setOnOffLight(i);
        }
    }

    public /* synthetic */ void lambda$onBindViewHolder$2$LightListAdapter(int i, View view) {
        this.mCallBack.setRename(i);
    }

    public void setLightData(ArrayList<LightResponse.DataBean.LightBean.StateBean> arrayList) {
        String str = TAG;
        LogUtil.m64e(str, "Number of initial lights：" + this.mData.size());
        this.mData.clear();
        this.mData.addAll(arrayList);
        if (arrayList.size() != 0) {
            notifyDataSetChanged();
        }
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        LinearLayout mLightContainer;
        TextView mLightNumIv;
        ImageView mLightOnIv;

        public ViewHolder(View view) {
            super(view);
            this.mLightContainer = (LinearLayout) view.findViewById(R.id.recy_light_container);
            this.mLightOnIv = (ImageView) view.findViewById(R.id.recy_light_on);
            this.mLightNumIv = (TextView) view.findViewById(R.id.recy_light_num);
        }
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.mCallBack = onCheckedChangeListener;
    }
}
