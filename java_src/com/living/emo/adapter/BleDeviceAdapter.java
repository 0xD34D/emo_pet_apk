package com.living.emo.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.MyApplication;
import com.livingai.emopet.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class BleDeviceAdapter extends RecyclerView.Adapter<ViewHolder> {
    private OnClickListener listener;
    private ArrayList<BleDevice> mBleDeviceArrayList = new ArrayList<>();
    private int currPosition = 0;

    /* loaded from: classes.dex */
    public interface OnClickListener {
        void click(BleDevice bleDevice);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.recy_blue_device, viewGroup, false));
    }

    public void update(ArrayList<BleDevice> arrayList) {
        this.currPosition = 0;
        this.mBleDeviceArrayList.clear();
        this.mBleDeviceArrayList.addAll(arrayList);
        notifyDataSetChanged();
    }

    public void onBindViewHolder(ViewHolder viewHolder, final int i) {
        if (i == this.currPosition) {
            viewHolder.mBleName.setBackgroundResource(R.drawable.connect_list_choose);
            viewHolder.mBleName.setTextColor(MyApplication.getContext().getResources().getColor(R.color.recy_ble_bg_press));
        } else {
            viewHolder.mBleName.setBackgroundColor(0);
            viewHolder.mBleName.setTextColor(MyApplication.getContext().getResources().getColor(R.color.recy_ble_bg_normal));
        }
        viewHolder.mBleName.setText(this.mBleDeviceArrayList.get(i).getName());
        viewHolder.mBleName.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.-$$Lambda$BleDeviceAdapter$MIoE1EwZ948AJLd4H1fUTc3iHKE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BleDeviceAdapter.this.lambda$onBindViewHolder$0$BleDeviceAdapter(i, view);
            }
        });
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$BleDeviceAdapter(int i, View view) {
        this.currPosition = i;
        OnClickListener onClickListener = this.listener;
        if (onClickListener != null) {
            onClickListener.click(this.mBleDeviceArrayList.get(i));
        }
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mBleDeviceArrayList.size();
    }

    /* loaded from: classes.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {
        public TextView mBleName;

        public ViewHolder(View view) {
            super(view);
            this.mBleName = (TextView) view.findViewById(R.id.recy_blue_device_name);
        }
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.listener = onClickListener;
    }
}
