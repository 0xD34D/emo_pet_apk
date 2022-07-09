package com.living.emo.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.clj.fastble.BleManager;
import com.clj.fastble.data.BleDevice;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DeviceAdapter extends BaseAdapter {
    private List<BleDevice> bleDevicesList = new ArrayList();
    private Context context;
    private OnDeviceClickListener mListener;

    /* loaded from: classes.dex */
    public interface OnDeviceClickListener {
        void selectDevice(BleDevice bleDevice);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    public DeviceAdapter(Context context) {
        this.context = context;
    }

    public void addDevice(BleDevice bleDevice) {
        removeDevice(bleDevice);
        this.bleDevicesList.add(bleDevice);
    }

    private void removeDevice(BleDevice bleDevice) {
        for (int i = 1; i < this.bleDevicesList.size(); i++) {
            if (bleDevice.getKey().equals(this.bleDevicesList.get(i).getKey())) {
                this.bleDevicesList.remove(i);
            }
        }
    }

    private void clearConnectedDevice() {
        for (int i = 1; i < this.bleDevicesList.size(); i++) {
            if (BleManager.getInstance().isConnected(this.bleDevicesList.get(i))) {
                this.bleDevicesList.remove(i);
            }
        }
    }

    public void clearScanDevice() {
        for (int i = 0; i < this.bleDevicesList.size(); i++) {
            if (!BleManager.getInstance().isConnected(this.bleDevicesList.get(i))) {
                this.bleDevicesList.remove(i);
            }
        }
    }

    public void clear() {
        clearConnectedDevice();
        clearScanDevice();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.bleDevicesList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (i > this.bleDevicesList.size()) {
            return null;
        }
        return this.bleDevicesList.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view != null) {
            viewHolder = (ViewHolder) view.getTag();
        } else {
            view = View.inflate(this.context, R.layout.list_device, null);
            viewHolder = new ViewHolder();
            view.setTag(viewHolder);
            viewHolder.txt_name = (TextView) view.findViewById(R.id.txt_name);
        }
        final BleDevice bleDevice = (BleDevice) getItem(i);
        if (bleDevice != null) {
            BleManager.getInstance().isConnected(bleDevice);
            viewHolder.txt_name.setText(bleDevice.getName());
        }
        viewHolder.txt_name.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.adapter.DeviceAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (DeviceAdapter.this.mListener != null) {
                    DeviceAdapter.this.mListener.selectDevice(bleDevice);
                }
            }
        });
        return view;
    }

    /* loaded from: classes.dex */
    class ViewHolder {
        Button btn_connect;
        Button btn_detail;
        Button btn_disconnect;
        LinearLayout layout_connected;
        LinearLayout layout_idle;
        TextView txt_mac;
        TextView txt_name;
        TextView txt_rssi;

        ViewHolder() {
        }
    }

    public void setOnDeviceClickListener(OnDeviceClickListener onDeviceClickListener) {
        this.mListener = onDeviceClickListener;
    }
}
