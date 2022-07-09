package com.clj.fastble.bluetooth;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.exception.BleException;
import com.clj.fastble.exception.OtherException;
import com.clj.fastble.utils.BleLog;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes.dex */
public class SplitWriter {
    private BleBluetooth mBleBluetooth;
    private BleWriteCallback mCallback;
    private int mCount;
    private byte[] mData;
    private Queue<byte[]> mDataQueue;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private long mIntervalBetweenTwoPackage;
    private boolean mSendNextWhenLastSuccess;
    private int mTotalNum;
    private String mUuid_service;
    private String mUuid_write;

    public SplitWriter() {
        HandlerThread handlerThread = new HandlerThread("splitWriter");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.clj.fastble.bluetooth.SplitWriter.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what == 51) {
                    SplitWriter.this.write();
                }
            }
        };
    }

    public void splitWrite(BleBluetooth bleBluetooth, String str, String str2, byte[] bArr, boolean z, long j, BleWriteCallback bleWriteCallback) {
        this.mBleBluetooth = bleBluetooth;
        this.mUuid_service = str;
        this.mUuid_write = str2;
        this.mData = bArr;
        this.mSendNextWhenLastSuccess = z;
        this.mIntervalBetweenTwoPackage = j;
        this.mCount = BleManager.getInstance().getSplitWriteNum();
        this.mCallback = bleWriteCallback;
        splitWrite();
    }

    private void splitWrite() {
        byte[] bArr = this.mData;
        if (bArr != null) {
            int i = this.mCount;
            if (i >= 1) {
                Queue<byte[]> splitByte = splitByte(bArr, i);
                this.mDataQueue = splitByte;
                this.mTotalNum = splitByte.size();
                write();
                return;
            }
            throw new IllegalArgumentException("split count should higher than 0!");
        }
        throw new IllegalArgumentException("data is Null!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void write() {
        if (this.mDataQueue.peek() == null) {
            release();
            return;
        }
        this.mBleBluetooth.newBleConnector().withUUIDString(this.mUuid_service, this.mUuid_write).writeCharacteristic(this.mDataQueue.poll(), new BleWriteCallback() { // from class: com.clj.fastble.bluetooth.SplitWriter.2
            @Override // com.clj.fastble.callback.BleWriteCallback
            public void onWriteSuccess(int i, int i2, byte[] bArr) {
                int size = SplitWriter.this.mTotalNum - SplitWriter.this.mDataQueue.size();
                if (SplitWriter.this.mCallback != null) {
                    SplitWriter.this.mCallback.onWriteSuccess(size, SplitWriter.this.mTotalNum, bArr);
                }
                if (SplitWriter.this.mSendNextWhenLastSuccess) {
                    SplitWriter.this.mHandler.sendMessageDelayed(SplitWriter.this.mHandler.obtainMessage(51), SplitWriter.this.mIntervalBetweenTwoPackage);
                }
            }

            @Override // com.clj.fastble.callback.BleWriteCallback
            public void onWriteFailure(BleException bleException) {
                if (SplitWriter.this.mCallback != null) {
                    BleWriteCallback bleWriteCallback = SplitWriter.this.mCallback;
                    bleWriteCallback.onWriteFailure(new OtherException("exception occur while writing: " + bleException.getDescription()));
                }
                if (SplitWriter.this.mSendNextWhenLastSuccess) {
                    SplitWriter.this.mHandler.sendMessageDelayed(SplitWriter.this.mHandler.obtainMessage(51), SplitWriter.this.mIntervalBetweenTwoPackage);
                }
            }
        }, this.mUuid_write);
        if (!this.mSendNextWhenLastSuccess) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(51), this.mIntervalBetweenTwoPackage);
        }
    }

    private void release() {
        this.mHandlerThread.quit();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private static Queue<byte[]> splitByte(byte[] bArr, int i) {
        int i2;
        byte[] bArr2;
        if (i > 20) {
            BleLog.m718w("Be careful: split count beyond 20! Ensure MTU higher than 23!");
        }
        LinkedList linkedList = new LinkedList();
        if (bArr.length % i == 0) {
            i2 = bArr.length / i;
        } else {
            i2 = Math.round((bArr.length / i) + 1);
        }
        if (i2 > 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                if (i2 == 1 || i3 == i2 - 1) {
                    int length = bArr.length % i == 0 ? i : bArr.length % i;
                    byte[] bArr3 = new byte[length];
                    System.arraycopy(bArr, i3 * i, bArr3, 0, length);
                    bArr2 = bArr3;
                } else {
                    bArr2 = new byte[i];
                    System.arraycopy(bArr, i3 * i, bArr2, 0, i);
                }
                linkedList.offer(bArr2);
            }
        }
        return linkedList;
    }
}
