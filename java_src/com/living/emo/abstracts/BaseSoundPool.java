package com.living.emo.abstracts;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Build;
import com.living.emo.MyApplication;
import com.living.emo.util.LogUtil;
/* loaded from: classes.dex */
public abstract class BaseSoundPool {
    private static final String TAG = "zxl::" + BaseSoundPool.class.getSimpleName();
    protected Context mContext;
    private int mMaxStreams;
    protected SoundPool mSoundPool;

    protected abstract void initLoads();

    public BaseSoundPool(int i) {
        this.mMaxStreams = 10;
        this.mContext = MyApplication.getContext();
        this.mMaxStreams = i;
        initSoundPool();
    }

    public BaseSoundPool() {
        this(10);
    }

    private void initSoundPool() {
        if (this.mSoundPool == null) {
            if (Build.VERSION.SDK_INT > 21) {
                this.mSoundPool = new SoundPool.Builder().setMaxStreams(this.mMaxStreams).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(1).setContentType(4).build()).build();
                String str = TAG;
                LogUtil.m65d(str, "------initSoundPool----------" + this.mSoundPool.toString());
            } else {
                this.mSoundPool = new SoundPool(this.mMaxStreams, 1, 0);
                String str2 = TAG;
                LogUtil.m65d(str2, "------SoundPool----------" + this.mSoundPool.toString());
            }
        }
        initLoads();
    }
}
