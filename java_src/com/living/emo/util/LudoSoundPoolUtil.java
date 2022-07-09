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
public class LudoSoundPoolUtil {
    private static final String TAG = "zxl::" + LudoSoundPoolUtil.class.getSimpleName();
    private static LudoSoundPoolUtil mInstance = null;
    private int mMaxStreams;
    protected SoundPool mSoundPool;
    private HashMap<String, Integer> mSounds = null;
    protected Context mContext = MyApplication.getContext();

    public LudoSoundPoolUtil(int i) {
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
                this.mSoundPool = new SoundPool(this.mMaxStreams, 3, 0);
                String str2 = TAG;
                LogUtil.m65d(str2, "------SoundPool----------" + this.mSoundPool.toString());
            }
        }
        initLoads();
    }

    public static LudoSoundPoolUtil getInstance() {
        if (mInstance == null) {
            mInstance = new LudoSoundPoolUtil(10);
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
            hashMap.put("boom", Integer.valueOf(this.mSoundPool.load(loadFd("ludoSounds/boom.mp3"), 1)));
            this.mSounds.put("complete", Integer.valueOf(this.mSoundPool.load(loadFd("ludoSounds/complete.mp3"), 1)));
            this.mSounds.put("cross", Integer.valueOf(this.mSoundPool.load(loadFd("ludoSounds/cross.mp3"), 1)));
            this.mSounds.put("dicerolled", Integer.valueOf(this.mSoundPool.load(loadFd("ludoSounds/dicerolled.mp3"), 1)));
            this.mSounds.put("fly", Integer.valueOf(this.mSoundPool.load(loadFd("ludoSounds/fly.mp3"), 1)));
            this.mSounds.put("jump", Integer.valueOf(this.mSoundPool.load(loadFd("ludoSounds/jump.mp3"), 1)));
            this.mSounds.put("select", Integer.valueOf(this.mSoundPool.load(loadFd("ludoSounds/select.mp3"), 1)));
            this.mSounds.put("victory", Integer.valueOf(this.mSoundPool.load(loadFd("ludoSounds/victory.mp3"), 1)));
        }
    }

    public void play(String str) {
        Integer num = this.mSounds.get(str);
        String str2 = TAG;
        LogUtil.m65d(str2, num + "===========");
        if (num != null) {
            LogUtil.m65d(str2, num + "nukll===========");
            this.mSoundPool.play(num.intValue(), 1.0f, 1.0f, 0, 0, 1.0f);
        }
    }
}
