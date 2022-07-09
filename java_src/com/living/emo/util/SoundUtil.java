package com.living.emo.util;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Build;
import com.living.emo.MyApplication;
import java.io.IOException;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SoundUtil {
    private static final String TAG = "zxl::" + SoundUtil.class.getSimpleName();
    private static SoundUtil mInstance = null;
    private int mMaxStreams;
    protected SoundPool mSoundPool;
    private HashMap<String, Integer> mSounds = null;
    protected Context mContext = MyApplication.getContext();

    public SoundUtil(int i) {
        this.mMaxStreams = 10;
        this.mMaxStreams = i;
        initSoundPool();
    }

    private void initSoundPool() {
        if (this.mSoundPool == null) {
            if (Build.VERSION.SDK_INT > 21) {
                this.mSoundPool = new SoundPool.Builder().setMaxStreams(this.mMaxStreams).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).setContentType(4).build()).build();
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

    public static SoundUtil getInstance() {
        if (mInstance == null) {
            mInstance = new SoundUtil(13);
        }
        return mInstance;
    }

    private AssetFileDescriptor loadFd(String str) {
        try {
            String str2 = TAG;
            LogUtil.m65d(str2, "loadfd:" + this.mContext.getAssets().openFd(str));
            return this.mContext.getAssets().openFd(str);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    protected void initLoads() {
        if (this.mSounds == null) {
            HashMap<String, Integer> hashMap = new HashMap<>();
            this.mSounds = hashMap;
            hashMap.put("bad", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/bad.mp3"), 1)));
            this.mSounds.put("caption1", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/caption1.mp3"), 1)));
            this.mSounds.put("caption2", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/caption2.mp3"), 1)));
            this.mSounds.put("error1", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/error1.mp3"), 1)));
            this.mSounds.put("error2", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/error2.mp3"), 1)));
            this.mSounds.put("error3", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/error3.mp3"), 1)));
            this.mSounds.put("error4", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/error4.mp3"), 1)));
            this.mSounds.put("error5", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/error5.mp3"), 1)));
            this.mSounds.put("great", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/great.mp3"), 1)));
            this.mSounds.put("perfect", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/perfect.mp3"), 1)));
            this.mSounds.put("select", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/select.mp3"), 1)));
            this.mSounds.put("yes1", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/yes1.mp3"), 1)));
            this.mSounds.put("yes2", Integer.valueOf(this.mSoundPool.load(loadFd("memorySounds/yes2.mp3"), 1)));
        }
    }

    public void play(String str) {
        Integer num = this.mSounds.get(str);
        if (num != null) {
            this.mSoundPool.play(num.intValue(), 1.0f, 1.0f, 0, 0, 1.0f);
        }
    }
}
