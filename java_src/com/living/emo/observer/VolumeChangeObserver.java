package com.living.emo.observer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.living.emo.MyApplication;
import com.living.emo.util.MathUtil;
/* loaded from: classes.dex */
public class VolumeChangeObserver {
    private static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
    private static final String TAG = "com.living.emo.observer.VolumeChangeObserver";
    private static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private AudioManager mAudioManager;
    private VolumeReceiver mVolumeReceiver;
    private boolean flag = true;
    private VolumeChangeListener mVolumeChangeListener = null;

    /* loaded from: classes.dex */
    public interface VolumeChangeListener {
        void onVolumeChanged(int i);
    }

    public VolumeChangeObserver() {
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) MyApplication.getContext().getSystemService("audio");
        }
    }

    public void setVolumeChangeListener(VolumeChangeListener volumeChangeListener) {
        this.mVolumeChangeListener = volumeChangeListener;
    }

    public VolumeChangeListener getVolumeChangeListener() {
        VolumeChangeListener volumeChangeListener = this.mVolumeChangeListener;
        if (volumeChangeListener != null) {
            return volumeChangeListener;
        }
        return null;
    }

    public float getDecimalVolume() {
        return MathUtil.twoDecimal(MathUtil.division(getMaxVolume(), getCurrentVolume()));
    }

    public int getCurrentVolume() {
        AudioManager audioManager = this.mAudioManager;
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return -1;
    }

    public int getMaxVolume() {
        if (this.mVolumeReceiver != null) {
            return this.mAudioManager.getStreamMaxVolume(3);
        }
        return -1;
    }

    public void registerReceiver() {
        if (this.flag) {
            if (this.mVolumeReceiver == null) {
                this.mVolumeReceiver = new VolumeReceiver();
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(VOLUME_CHANGED_ACTION);
            MyApplication.getContext().registerReceiver(this.mVolumeReceiver, intentFilter);
            this.flag = false;
        }
    }

    public void unRegisterReceiver() {
        if (!this.flag) {
            MyApplication.getContext().unregisterReceiver(this.mVolumeReceiver);
            this.mVolumeReceiver = null;
            this.mAudioManager = null;
            this.mVolumeChangeListener = null;
            this.flag = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class VolumeReceiver extends BroadcastReceiver {
        private VolumeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (VolumeChangeObserver.VOLUME_CHANGED_ACTION.equals(intent.getAction()) && intent.getIntExtra(VolumeChangeObserver.EXTRA_VOLUME_STREAM_TYPE, -1) == 3) {
                int currentVolume = VolumeChangeObserver.this.getCurrentVolume();
                VolumeChangeListener volumeChangeListener = VolumeChangeObserver.this.getVolumeChangeListener();
                if (volumeChangeListener != null) {
                    volumeChangeListener.onVolumeChanged(currentVolume);
                }
            }
        }
    }
}
