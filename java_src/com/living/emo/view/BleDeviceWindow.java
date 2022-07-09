package com.living.emo.view;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.clj.fastble.data.BleDevice;
import com.living.emo.MyApplication;
import com.living.emo.adapter.BleDeviceAdapter;
import com.livingai.emopet.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class BleDeviceWindow extends PopupWindow {
    private OnWindowListener listener;
    private BleDeviceAdapter mAdapter;
    private RecyclerView mDeviceList;
    private ImageButton mRefresh;
    private final View mView;

    /* loaded from: classes.dex */
    public interface OnWindowListener {
        void click(BleDevice bleDevice);

        void refresh();
    }

    public BleDeviceWindow() {
        super(-2, -2);
        View inflate = LayoutInflater.from(MyApplication.getContext()).inflate(R.layout.pop_device_window, (ViewGroup) null, false);
        this.mView = inflate;
        setContentView(inflate);
        setOutsideTouchable(true);
        initView();
    }

    private void initView() {
        this.mDeviceList = (RecyclerView) this.mView.findViewById(R.id.recy_device_list);
        this.mDeviceList.setLayoutManager(new LinearLayoutManager(MyApplication.getContext()));
        BleDeviceAdapter bleDeviceAdapter = new BleDeviceAdapter();
        this.mAdapter = bleDeviceAdapter;
        this.mDeviceList.setAdapter(bleDeviceAdapter);
        this.mAdapter.setOnClickListener(new BleDeviceAdapter.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$BleDeviceWindow$napvEgX1tUwMQJ5tvPCRvGXd9og
            @Override // com.living.emo.adapter.BleDeviceAdapter.OnClickListener
            public final void click(BleDevice bleDevice) {
                BleDeviceWindow.this.lambda$initView$0$BleDeviceWindow(bleDevice);
            }
        });
        ImageButton imageButton = (ImageButton) this.mView.findViewById(R.id.pop_refresh);
        this.mRefresh = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$BleDeviceWindow$jceRZJyApXga2t3tXVfZhpNg7Eo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BleDeviceWindow.this.lambda$initView$1$BleDeviceWindow(view);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$BleDeviceWindow(BleDevice bleDevice) {
        OnWindowListener onWindowListener = this.listener;
        if (onWindowListener != null) {
            onWindowListener.click(bleDevice);
        }
    }

    public /* synthetic */ void lambda$initView$1$BleDeviceWindow(View view) {
        OnWindowListener onWindowListener = this.listener;
        if (onWindowListener != null) {
            onWindowListener.refresh();
        }
    }

    public void setData(ArrayList<BleDevice> arrayList) {
        this.mAdapter.update(arrayList);
    }

    public void setOnWindowListener(OnWindowListener onWindowListener) {
        this.listener = onWindowListener;
    }
}
