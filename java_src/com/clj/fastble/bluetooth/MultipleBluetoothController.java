package com.clj.fastble.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.os.Build;
import com.clj.fastble.BleManager;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.utils.BleLruHashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class MultipleBluetoothController {
    private final BleLruHashMap<String, BleBluetooth> bleLruHashMap = new BleLruHashMap<>(BleManager.getInstance().getMaxConnectCount());
    private final HashMap<String, BleBluetooth> bleTempHashMap = new HashMap<>();

    public synchronized BleBluetooth buildConnectingBle(BleDevice bleDevice) {
        BleBluetooth bleBluetooth;
        bleBluetooth = new BleBluetooth(bleDevice);
        if (!this.bleTempHashMap.containsKey(bleBluetooth.getDeviceKey())) {
            this.bleTempHashMap.put(bleBluetooth.getDeviceKey(), bleBluetooth);
        }
        return bleBluetooth;
    }

    public synchronized void removeConnectingBle(BleBluetooth bleBluetooth) {
        if (bleBluetooth != null) {
            if (this.bleTempHashMap.containsKey(bleBluetooth.getDeviceKey())) {
                this.bleTempHashMap.remove(bleBluetooth.getDeviceKey());
            }
        }
    }

    public synchronized void addBleBluetooth(BleBluetooth bleBluetooth) {
        if (bleBluetooth != null) {
            if (!this.bleLruHashMap.containsKey(bleBluetooth.getDeviceKey())) {
                this.bleLruHashMap.put(bleBluetooth.getDeviceKey(), bleBluetooth);
            }
        }
    }

    public synchronized void removeBleBluetooth(BleBluetooth bleBluetooth) {
        if (bleBluetooth != null) {
            if (this.bleLruHashMap.containsKey(bleBluetooth.getDeviceKey())) {
                this.bleLruHashMap.remove(bleBluetooth.getDeviceKey());
            }
        }
    }

    public synchronized boolean isContainDevice(BleDevice bleDevice) {
        boolean z;
        if (bleDevice != null) {
            if (this.bleLruHashMap.containsKey(bleDevice.getKey())) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    public synchronized boolean isContainDevice(BluetoothDevice bluetoothDevice) {
        boolean z;
        if (bluetoothDevice != null) {
            BleLruHashMap<String, BleBluetooth> bleLruHashMap = this.bleLruHashMap;
            if (bleLruHashMap.containsKey(bluetoothDevice.getName() + bluetoothDevice.getAddress())) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    public synchronized BleBluetooth getBleBluetooth(BleDevice bleDevice) {
        if (bleDevice != null) {
            if (this.bleLruHashMap.containsKey(bleDevice.getKey())) {
                return this.bleLruHashMap.get(bleDevice.getKey());
            }
        }
        return null;
    }

    public synchronized void disconnect(BleDevice bleDevice) {
        if (isContainDevice(bleDevice)) {
            getBleBluetooth(bleDevice).disconnect();
        }
    }

    public synchronized void disconnectAllDevice() {
        for (Map.Entry<String, BleBluetooth> entry : this.bleLruHashMap.entrySet()) {
            entry.getValue().disconnect();
        }
        this.bleLruHashMap.clear();
    }

    public synchronized void destroy() {
        for (Map.Entry<String, BleBluetooth> entry : this.bleLruHashMap.entrySet()) {
            entry.getValue().destroy();
        }
        this.bleLruHashMap.clear();
        for (Map.Entry<String, BleBluetooth> entry2 : this.bleTempHashMap.entrySet()) {
            entry2.getValue().destroy();
        }
        this.bleTempHashMap.clear();
    }

    public synchronized List<BleBluetooth> getBleBluetoothList() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.bleLruHashMap.values());
        Collections.sort(arrayList, new Comparator<BleBluetooth>() { // from class: com.clj.fastble.bluetooth.MultipleBluetoothController.1
            public int compare(BleBluetooth bleBluetooth, BleBluetooth bleBluetooth2) {
                return bleBluetooth.getDeviceKey().compareToIgnoreCase(bleBluetooth2.getDeviceKey());
            }
        });
        return arrayList;
    }

    public synchronized List<BleDevice> getDeviceList() {
        ArrayList arrayList;
        refreshConnectedDevice();
        arrayList = new ArrayList();
        for (BleBluetooth bleBluetooth : getBleBluetoothList()) {
            if (bleBluetooth != null) {
                arrayList.add(bleBluetooth.getDevice());
            }
        }
        return arrayList;
    }

    public void refreshConnectedDevice() {
        if (Build.VERSION.SDK_INT >= 18) {
            List<BleBluetooth> bleBluetoothList = getBleBluetoothList();
            for (int i = 0; bleBluetoothList != null && i < bleBluetoothList.size(); i++) {
                BleBluetooth bleBluetooth = bleBluetoothList.get(i);
                if (!BleManager.getInstance().isConnected(bleBluetooth.getDevice())) {
                    removeBleBluetooth(bleBluetooth);
                }
            }
        }
    }
}
