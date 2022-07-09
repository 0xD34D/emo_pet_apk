package com.clj.fastble.bluetooth;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.callback.BleIndicateCallback;
import com.clj.fastble.callback.BleMtuChangedCallback;
import com.clj.fastble.callback.BleNotifyCallback;
import com.clj.fastble.callback.BleReadCallback;
import com.clj.fastble.callback.BleRssiCallback;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleConnectStateParameter;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.data.BleMsg;
import com.clj.fastble.exception.ConnectException;
import com.clj.fastble.exception.OtherException;
import com.clj.fastble.exception.TimeoutException;
import com.clj.fastble.utils.BleLog;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class BleBluetooth {
    private BleDevice bleDevice;
    private BleGattCallback bleGattCallback;
    private BleMtuChangedCallback bleMtuChangedCallback;
    private BleRssiCallback bleRssiCallback;
    private BluetoothGatt bluetoothGatt;
    private LastState lastState;
    private HashMap<String, BleNotifyCallback> bleNotifyCallbackHashMap = new HashMap<>();
    private HashMap<String, BleIndicateCallback> bleIndicateCallbackHashMap = new HashMap<>();
    private HashMap<String, BleWriteCallback> bleWriteCallbackHashMap = new HashMap<>();
    private HashMap<String, BleReadCallback> bleReadCallbackHashMap = new HashMap<>();
    private boolean isActiveDisconnect = false;
    private MainHandler mainHandler = new MainHandler(Looper.getMainLooper());
    private int connectRetryCount = 0;
    private BluetoothGattCallback coreGattCallback = new BluetoothGattCallback() { // from class: com.clj.fastble.bluetooth.BleBluetooth.1
        @Override // android.bluetooth.BluetoothGattCallback
        public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
            super.onConnectionStateChange(bluetoothGatt, i, i2);
            BleLog.m719i("BluetoothGattCallback：onConnectionStateChange \nstatus: " + i + "\nnewState: " + i2 + "\ncurrentThread: " + Thread.currentThread().getId());
            BleBluetooth.this.bluetoothGatt = bluetoothGatt;
            BleBluetooth.this.mainHandler.removeMessages(7);
            if (i2 == 2) {
                Message obtainMessage = BleBluetooth.this.mainHandler.obtainMessage();
                obtainMessage.what = 4;
                BleBluetooth.this.mainHandler.sendMessageDelayed(obtainMessage, 500L);
            } else if (i2 != 0) {
            } else {
                if (BleBluetooth.this.lastState == LastState.CONNECT_CONNECTING) {
                    Message obtainMessage2 = BleBluetooth.this.mainHandler.obtainMessage();
                    obtainMessage2.what = 1;
                    obtainMessage2.obj = new BleConnectStateParameter(i);
                    BleBluetooth.this.mainHandler.sendMessage(obtainMessage2);
                } else if (BleBluetooth.this.lastState == LastState.CONNECT_CONNECTED) {
                    Message obtainMessage3 = BleBluetooth.this.mainHandler.obtainMessage();
                    obtainMessage3.what = 2;
                    BleConnectStateParameter bleConnectStateParameter = new BleConnectStateParameter(i);
                    bleConnectStateParameter.setActive(BleBluetooth.this.isActiveDisconnect);
                    obtainMessage3.obj = bleConnectStateParameter;
                    BleBluetooth.this.mainHandler.sendMessage(obtainMessage3);
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
            super.onServicesDiscovered(bluetoothGatt, i);
            BleLog.m719i("BluetoothGattCallback：onServicesDiscovered \nstatus: " + i + "\ncurrentThread: " + Thread.currentThread().getId());
            BleBluetooth.this.bluetoothGatt = bluetoothGatt;
            if (i == 0) {
                Message obtainMessage = BleBluetooth.this.mainHandler.obtainMessage();
                obtainMessage.what = 6;
                obtainMessage.obj = new BleConnectStateParameter(i);
                BleBluetooth.this.mainHandler.sendMessage(obtainMessage);
                return;
            }
            Message obtainMessage2 = BleBluetooth.this.mainHandler.obtainMessage();
            obtainMessage2.what = 5;
            BleBluetooth.this.mainHandler.sendMessage(obtainMessage2);
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            Handler handler;
            Handler handler2;
            super.onCharacteristicChanged(bluetoothGatt, bluetoothGattCharacteristic);
            for (Map.Entry entry : BleBluetooth.this.bleNotifyCallbackHashMap.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof BleNotifyCallback) {
                    BleNotifyCallback bleNotifyCallback = (BleNotifyCallback) value;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(bleNotifyCallback.getKey()) && (handler2 = bleNotifyCallback.getHandler()) != null) {
                        Message obtainMessage = handler2.obtainMessage();
                        obtainMessage.what = 19;
                        obtainMessage.obj = bleNotifyCallback;
                        Bundle bundle = new Bundle();
                        bundle.putByteArray(BleMsg.KEY_NOTIFY_BUNDLE_VALUE, bluetoothGattCharacteristic.getValue());
                        obtainMessage.setData(bundle);
                        handler2.sendMessage(obtainMessage);
                    }
                }
            }
            for (Map.Entry entry2 : BleBluetooth.this.bleIndicateCallbackHashMap.entrySet()) {
                Object value2 = entry2.getValue();
                if (value2 instanceof BleIndicateCallback) {
                    BleIndicateCallback bleIndicateCallback = (BleIndicateCallback) value2;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(bleIndicateCallback.getKey()) && (handler = bleIndicateCallback.getHandler()) != null) {
                        Message obtainMessage2 = handler.obtainMessage();
                        obtainMessage2.what = 35;
                        obtainMessage2.obj = bleIndicateCallback;
                        Bundle bundle2 = new Bundle();
                        bundle2.putByteArray(BleMsg.KEY_INDICATE_BUNDLE_VALUE, bluetoothGattCharacteristic.getValue());
                        obtainMessage2.setData(bundle2);
                        handler.sendMessage(obtainMessage2);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
            Handler handler;
            Handler handler2;
            super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
            for (Map.Entry entry : BleBluetooth.this.bleNotifyCallbackHashMap.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof BleNotifyCallback) {
                    BleNotifyCallback bleNotifyCallback = (BleNotifyCallback) value;
                    if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(bleNotifyCallback.getKey()) && (handler2 = bleNotifyCallback.getHandler()) != null) {
                        Message obtainMessage = handler2.obtainMessage();
                        obtainMessage.what = 18;
                        obtainMessage.obj = bleNotifyCallback;
                        Bundle bundle = new Bundle();
                        bundle.putInt(BleMsg.KEY_NOTIFY_BUNDLE_STATUS, i);
                        obtainMessage.setData(bundle);
                        handler2.sendMessage(obtainMessage);
                    }
                }
            }
            for (Map.Entry entry2 : BleBluetooth.this.bleIndicateCallbackHashMap.entrySet()) {
                Object value2 = entry2.getValue();
                if (value2 instanceof BleIndicateCallback) {
                    BleIndicateCallback bleIndicateCallback = (BleIndicateCallback) value2;
                    if (bluetoothGattDescriptor.getCharacteristic().getUuid().toString().equalsIgnoreCase(bleIndicateCallback.getKey()) && (handler = bleIndicateCallback.getHandler()) != null) {
                        Message obtainMessage2 = handler.obtainMessage();
                        obtainMessage2.what = 34;
                        obtainMessage2.obj = bleIndicateCallback;
                        Bundle bundle2 = new Bundle();
                        bundle2.putInt(BleMsg.KEY_INDICATE_BUNDLE_STATUS, i);
                        obtainMessage2.setData(bundle2);
                        handler.sendMessage(obtainMessage2);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
            Handler handler;
            super.onCharacteristicWrite(bluetoothGatt, bluetoothGattCharacteristic, i);
            for (Map.Entry entry : BleBluetooth.this.bleWriteCallbackHashMap.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof BleWriteCallback) {
                    BleWriteCallback bleWriteCallback = (BleWriteCallback) value;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(bleWriteCallback.getKey()) && (handler = bleWriteCallback.getHandler()) != null) {
                        Message obtainMessage = handler.obtainMessage();
                        obtainMessage.what = 50;
                        obtainMessage.obj = bleWriteCallback;
                        Bundle bundle = new Bundle();
                        bundle.putInt(BleMsg.KEY_WRITE_BUNDLE_STATUS, i);
                        bundle.putByteArray(BleMsg.KEY_WRITE_BUNDLE_VALUE, bluetoothGattCharacteristic.getValue());
                        obtainMessage.setData(bundle);
                        handler.sendMessage(obtainMessage);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
            Handler handler;
            super.onCharacteristicRead(bluetoothGatt, bluetoothGattCharacteristic, i);
            for (Map.Entry entry : BleBluetooth.this.bleReadCallbackHashMap.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof BleReadCallback) {
                    BleReadCallback bleReadCallback = (BleReadCallback) value;
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(bleReadCallback.getKey()) && (handler = bleReadCallback.getHandler()) != null) {
                        Message obtainMessage = handler.obtainMessage();
                        obtainMessage.what = 66;
                        obtainMessage.obj = bleReadCallback;
                        Bundle bundle = new Bundle();
                        bundle.putInt(BleMsg.KEY_READ_BUNDLE_STATUS, i);
                        bundle.putByteArray(BleMsg.KEY_READ_BUNDLE_VALUE, bluetoothGattCharacteristic.getValue());
                        obtainMessage.setData(bundle);
                        handler.sendMessage(obtainMessage);
                    }
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i, int i2) {
            Handler handler;
            super.onReadRemoteRssi(bluetoothGatt, i, i2);
            if (BleBluetooth.this.bleRssiCallback != null && (handler = BleBluetooth.this.bleRssiCallback.getHandler()) != null) {
                Message obtainMessage = handler.obtainMessage();
                obtainMessage.what = 82;
                obtainMessage.obj = BleBluetooth.this.bleRssiCallback;
                Bundle bundle = new Bundle();
                bundle.putInt(BleMsg.KEY_READ_RSSI_BUNDLE_STATUS, i2);
                bundle.putInt(BleMsg.KEY_READ_RSSI_BUNDLE_VALUE, i);
                obtainMessage.setData(bundle);
                handler.sendMessage(obtainMessage);
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onMtuChanged(BluetoothGatt bluetoothGatt, int i, int i2) {
            Handler handler;
            super.onMtuChanged(bluetoothGatt, i, i2);
            if (BleBluetooth.this.bleMtuChangedCallback != null && (handler = BleBluetooth.this.bleMtuChangedCallback.getHandler()) != null) {
                Message obtainMessage = handler.obtainMessage();
                obtainMessage.what = 98;
                obtainMessage.obj = BleBluetooth.this.bleMtuChangedCallback;
                Bundle bundle = new Bundle();
                bundle.putInt(BleMsg.KEY_SET_MTU_BUNDLE_STATUS, i2);
                bundle.putInt(BleMsg.KEY_SET_MTU_BUNDLE_VALUE, i);
                obtainMessage.setData(bundle);
                handler.sendMessage(obtainMessage);
            }
        }
    };

    /* loaded from: classes.dex */
    public enum LastState {
        CONNECT_IDLE,
        CONNECT_CONNECTING,
        CONNECT_CONNECTED,
        CONNECT_FAILURE,
        CONNECT_DISCONNECT
    }

    static /* synthetic */ int access$304(BleBluetooth bleBluetooth) {
        int i = bleBluetooth.connectRetryCount + 1;
        bleBluetooth.connectRetryCount = i;
        return i;
    }

    public BleBluetooth(BleDevice bleDevice) {
        this.bleDevice = bleDevice;
    }

    public BleConnector newBleConnector() {
        return new BleConnector(this);
    }

    public synchronized void addConnectGattCallback(BleGattCallback bleGattCallback) {
        this.bleGattCallback = bleGattCallback;
    }

    public synchronized void removeConnectGattCallback() {
        this.bleGattCallback = null;
    }

    public synchronized void addNotifyCallback(String str, BleNotifyCallback bleNotifyCallback) {
        this.bleNotifyCallbackHashMap.put(str, bleNotifyCallback);
    }

    public synchronized void addIndicateCallback(String str, BleIndicateCallback bleIndicateCallback) {
        this.bleIndicateCallbackHashMap.put(str, bleIndicateCallback);
    }

    public synchronized void addWriteCallback(String str, BleWriteCallback bleWriteCallback) {
        this.bleWriteCallbackHashMap.put(str, bleWriteCallback);
    }

    public synchronized void addReadCallback(String str, BleReadCallback bleReadCallback) {
        this.bleReadCallbackHashMap.put(str, bleReadCallback);
    }

    public synchronized void removeNotifyCallback(String str) {
        if (this.bleNotifyCallbackHashMap.containsKey(str)) {
            this.bleNotifyCallbackHashMap.remove(str);
        }
    }

    public synchronized void removeIndicateCallback(String str) {
        if (this.bleIndicateCallbackHashMap.containsKey(str)) {
            this.bleIndicateCallbackHashMap.remove(str);
        }
    }

    public synchronized void removeWriteCallback(String str) {
        if (this.bleWriteCallbackHashMap.containsKey(str)) {
            this.bleWriteCallbackHashMap.remove(str);
        }
    }

    public synchronized void removeReadCallback(String str) {
        if (this.bleReadCallbackHashMap.containsKey(str)) {
            this.bleReadCallbackHashMap.remove(str);
        }
    }

    public synchronized void clearCharacterCallback() {
        HashMap<String, BleNotifyCallback> hashMap = this.bleNotifyCallbackHashMap;
        if (hashMap != null) {
            hashMap.clear();
        }
        HashMap<String, BleIndicateCallback> hashMap2 = this.bleIndicateCallbackHashMap;
        if (hashMap2 != null) {
            hashMap2.clear();
        }
        HashMap<String, BleWriteCallback> hashMap3 = this.bleWriteCallbackHashMap;
        if (hashMap3 != null) {
            hashMap3.clear();
        }
        HashMap<String, BleReadCallback> hashMap4 = this.bleReadCallbackHashMap;
        if (hashMap4 != null) {
            hashMap4.clear();
        }
    }

    public synchronized void addRssiCallback(BleRssiCallback bleRssiCallback) {
        this.bleRssiCallback = bleRssiCallback;
    }

    public synchronized void removeRssiCallback() {
        this.bleRssiCallback = null;
    }

    public synchronized void addMtuChangedCallback(BleMtuChangedCallback bleMtuChangedCallback) {
        this.bleMtuChangedCallback = bleMtuChangedCallback;
    }

    public synchronized void removeMtuChangedCallback() {
        this.bleMtuChangedCallback = null;
    }

    public String getDeviceKey() {
        return this.bleDevice.getKey();
    }

    public BleDevice getDevice() {
        return this.bleDevice;
    }

    public BluetoothGatt getBluetoothGatt() {
        return this.bluetoothGatt;
    }

    public synchronized BluetoothGatt connect(BleDevice bleDevice, boolean z, BleGattCallback bleGattCallback) {
        return connect(bleDevice, z, bleGattCallback, 0);
    }

    public synchronized BluetoothGatt connect(BleDevice bleDevice, boolean z, BleGattCallback bleGattCallback, int i) {
        BleLog.m719i("connect device: " + bleDevice.getName() + "\nmac: " + bleDevice.getMac() + "\nautoConnect: " + z + "\ncurrentThread: " + Thread.currentThread().getId() + "\nconnectCount:" + (i + 1));
        if (i == 0) {
            this.connectRetryCount = 0;
        }
        addConnectGattCallback(bleGattCallback);
        this.lastState = LastState.CONNECT_CONNECTING;
        if (Build.VERSION.SDK_INT >= 23) {
            this.bluetoothGatt = bleDevice.getDevice().connectGatt(BleManager.getInstance().getContext(), z, this.coreGattCallback, 2);
        } else {
            this.bluetoothGatt = bleDevice.getDevice().connectGatt(BleManager.getInstance().getContext(), z, this.coreGattCallback);
        }
        if (this.bluetoothGatt != null) {
            BleGattCallback bleGattCallback2 = this.bleGattCallback;
            if (bleGattCallback2 != null) {
                bleGattCallback2.onStartConnect();
            }
            Message obtainMessage = this.mainHandler.obtainMessage();
            obtainMessage.what = 7;
            this.mainHandler.sendMessageDelayed(obtainMessage, BleManager.getInstance().getConnectOverTime());
        } else {
            disconnectGatt();
            refreshDeviceCache();
            closeBluetoothGatt();
            this.lastState = LastState.CONNECT_FAILURE;
            BleManager.getInstance().getMultipleBluetoothController().removeConnectingBle(this);
            BleGattCallback bleGattCallback3 = this.bleGattCallback;
            if (bleGattCallback3 != null) {
                bleGattCallback3.onConnectFail(bleDevice, new OtherException("GATT connect exception occurred!"));
            }
        }
        return this.bluetoothGatt;
    }

    public synchronized void disconnect() {
        this.isActiveDisconnect = true;
        disconnectGatt();
    }

    public synchronized void destroy() {
        this.lastState = LastState.CONNECT_IDLE;
        disconnectGatt();
        refreshDeviceCache();
        closeBluetoothGatt();
        removeConnectGattCallback();
        removeRssiCallback();
        removeMtuChangedCallback();
        clearCharacterCallback();
        this.mainHandler.removeCallbacksAndMessages(null);
    }

    public synchronized void disconnectGatt() {
        BluetoothGatt bluetoothGatt = this.bluetoothGatt;
        if (bluetoothGatt != null) {
            bluetoothGatt.disconnect();
        }
    }

    public synchronized void refreshDeviceCache() {
        BluetoothGatt bluetoothGatt;
        try {
            Method method = BluetoothGatt.class.getMethod("refresh", new Class[0]);
            if (!(method == null || (bluetoothGatt = this.bluetoothGatt) == null)) {
                boolean booleanValue = ((Boolean) method.invoke(bluetoothGatt, new Object[0])).booleanValue();
                BleLog.m719i("refreshDeviceCache, is success:  " + booleanValue);
            }
        } catch (Exception e) {
            BleLog.m719i("exception occur while refreshing device: " + e.getMessage());
            e.printStackTrace();
        }
    }

    public synchronized void closeBluetoothGatt() {
        BluetoothGatt bluetoothGatt = this.bluetoothGatt;
        if (bluetoothGatt != null) {
            bluetoothGatt.close();
        }
    }

    /* loaded from: classes.dex */
    public final class MainHandler extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        MainHandler(Looper looper) {
            super(looper);
            BleBluetooth.this = r1;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    BleBluetooth.this.disconnectGatt();
                    BleBluetooth.this.refreshDeviceCache();
                    BleBluetooth.this.closeBluetoothGatt();
                    if (BleBluetooth.this.connectRetryCount < BleManager.getInstance().getReConnectCount()) {
                        BleLog.m720e("Connect fail, try reconnect " + BleManager.getInstance().getReConnectInterval() + " millisecond later");
                        BleBluetooth.access$304(BleBluetooth.this);
                        Message obtainMessage = BleBluetooth.this.mainHandler.obtainMessage();
                        obtainMessage.what = 3;
                        BleBluetooth.this.mainHandler.sendMessageDelayed(obtainMessage, BleManager.getInstance().getReConnectInterval());
                        return;
                    }
                    BleBluetooth.this.lastState = LastState.CONNECT_FAILURE;
                    BleManager.getInstance().getMultipleBluetoothController().removeConnectingBle(BleBluetooth.this);
                    int status = ((BleConnectStateParameter) message.obj).getStatus();
                    if (BleBluetooth.this.bleGattCallback != null) {
                        BleBluetooth.this.bleGattCallback.onConnectFail(BleBluetooth.this.bleDevice, new ConnectException(BleBluetooth.this.bluetoothGatt, status));
                        return;
                    }
                    return;
                case 2:
                    BleBluetooth.this.lastState = LastState.CONNECT_DISCONNECT;
                    BleManager.getInstance().getMultipleBluetoothController().removeBleBluetooth(BleBluetooth.this);
                    BleBluetooth.this.disconnect();
                    BleBluetooth.this.refreshDeviceCache();
                    BleBluetooth.this.closeBluetoothGatt();
                    BleBluetooth.this.removeRssiCallback();
                    BleBluetooth.this.removeMtuChangedCallback();
                    BleBluetooth.this.clearCharacterCallback();
                    BleBluetooth.this.mainHandler.removeCallbacksAndMessages(null);
                    BleConnectStateParameter bleConnectStateParameter = (BleConnectStateParameter) message.obj;
                    boolean isActive = bleConnectStateParameter.isActive();
                    int status2 = bleConnectStateParameter.getStatus();
                    if (BleBluetooth.this.bleGattCallback != null) {
                        BleBluetooth.this.bleGattCallback.onDisConnected(isActive, BleBluetooth.this.bleDevice, BleBluetooth.this.bluetoothGatt, status2);
                        return;
                    }
                    return;
                case 3:
                    BleBluetooth bleBluetooth = BleBluetooth.this;
                    bleBluetooth.connect(bleBluetooth.bleDevice, false, BleBluetooth.this.bleGattCallback, BleBluetooth.this.connectRetryCount);
                    return;
                case 4:
                    if (BleBluetooth.this.bluetoothGatt == null) {
                        Message obtainMessage2 = BleBluetooth.this.mainHandler.obtainMessage();
                        obtainMessage2.what = 5;
                        BleBluetooth.this.mainHandler.sendMessage(obtainMessage2);
                        return;
                    } else if (!BleBluetooth.this.bluetoothGatt.discoverServices()) {
                        Message obtainMessage3 = BleBluetooth.this.mainHandler.obtainMessage();
                        obtainMessage3.what = 5;
                        BleBluetooth.this.mainHandler.sendMessage(obtainMessage3);
                        return;
                    } else {
                        return;
                    }
                case 5:
                    BleBluetooth.this.disconnectGatt();
                    BleBluetooth.this.refreshDeviceCache();
                    BleBluetooth.this.closeBluetoothGatt();
                    BleBluetooth.this.lastState = LastState.CONNECT_FAILURE;
                    BleManager.getInstance().getMultipleBluetoothController().removeConnectingBle(BleBluetooth.this);
                    if (BleBluetooth.this.bleGattCallback != null) {
                        BleBluetooth.this.bleGattCallback.onConnectFail(BleBluetooth.this.bleDevice, new OtherException("GATT discover services exception occurred!"));
                        return;
                    }
                    return;
                case 6:
                    BleBluetooth.this.lastState = LastState.CONNECT_CONNECTED;
                    BleBluetooth.this.isActiveDisconnect = false;
                    BleManager.getInstance().getMultipleBluetoothController().removeConnectingBle(BleBluetooth.this);
                    BleManager.getInstance().getMultipleBluetoothController().addBleBluetooth(BleBluetooth.this);
                    int status3 = ((BleConnectStateParameter) message.obj).getStatus();
                    if (BleBluetooth.this.bleGattCallback != null) {
                        BleBluetooth.this.bleGattCallback.onConnectSuccess(BleBluetooth.this.bleDevice, BleBluetooth.this.bluetoothGatt, status3);
                        return;
                    }
                    return;
                case 7:
                    BleBluetooth.this.disconnectGatt();
                    BleBluetooth.this.refreshDeviceCache();
                    BleBluetooth.this.closeBluetoothGatt();
                    BleBluetooth.this.lastState = LastState.CONNECT_FAILURE;
                    BleManager.getInstance().getMultipleBluetoothController().removeConnectingBle(BleBluetooth.this);
                    if (BleBluetooth.this.bleGattCallback != null) {
                        BleBluetooth.this.bleGattCallback.onConnectFail(BleBluetooth.this.bleDevice, new TimeoutException());
                        return;
                    }
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    }
}
