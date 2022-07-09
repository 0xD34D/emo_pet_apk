package com.living.emo.presenter;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Build;
import com.living.emo.MyApplication;
import com.living.emo.util.LogUtil;
import java.io.IOException;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SoundsPresenter {
    private static final String TAG = "com.living.emo.presenter.SoundsPresenter";
    private static SoundsPresenter instance;
    private SoundPool mSoundPool;
    private HashMap<Integer, Integer> mLoadMap = new HashMap<>();
    private HashMap<Integer, Integer> mPlayMap = new HashMap<>();

    /* renamed from: l */
    private float f986l = 0.5f;
    private String[] mSounds = {"sounds/VDUB2 Short FX004.wav", "sounds/VDUB2 Short FX008.wav", "sounds/VDUB2 Short FX020.wav", "sounds/VDUB2 Short FX021.wav", "sounds/VDUB2 Short FX022.wav", "sounds/VDUB2 Short FX035.wav", "sounds/VDUB2 Short FX059.wav", "sounds/VDUB2 Short FX068.wav", "sounds/VDUB2 Short FX115.wav", "sounds/VDUB2 Short FX119.wav", "sounds/VDUB2 Short FX127.wav", "sounds/VDUB2 Short FX136.wav"};
    private final Context mContext = MyApplication.getContext();

    private SoundsPresenter() {
        initSoundPool();
    }

    public static SoundsPresenter getInstance() {
        if (instance == null) {
            instance = new SoundsPresenter();
        }
        return instance;
    }

    private void initSoundPool() {
        if (this.mSoundPool == null) {
            if (Build.VERSION.SDK_INT > 21) {
                this.mSoundPool = new SoundPool.Builder().setMaxStreams(16).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).setContentType(4).build()).build();
                String str = TAG;
                LogUtil.m65d(str, "------initSoundPool----------" + this.mSoundPool.toString());
            } else {
                this.mSoundPool = new SoundPool(16, 1, 0);
                String str2 = TAG;
                LogUtil.m65d(str2, "------SoundPool----------" + this.mSoundPool.toString());
            }
        }
        initLoads();
    }

    private void initLoads() {
        if (!(!this.mLoadMap.isEmpty() || this.mSounds == null || this.mSoundPool == null)) {
            for (int i = 0; i < this.mSounds.length; i++) {
                try {
                    this.mLoadMap.put(Integer.valueOf(i), Integer.valueOf(this.mSoundPool.load(this.mContext.getAssets().openFd(this.mSounds[i]), 1)));
                    String str = TAG;
                    LogUtil.m65d(str, "----initLoads-----" + String.valueOf(this.mLoadMap.get(Integer.valueOf(i))));
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public void play(int i) {
        if (this.mSoundPool != null) {
            Integer num = this.mLoadMap.get(Integer.valueOf(i));
            if (this.mPlayMap.get(Integer.valueOf(i)) != null) {
                this.mSoundPool.stop(this.mPlayMap.get(Integer.valueOf(i)).intValue());
            }
            SoundPool soundPool = this.mSoundPool;
            int intValue = num.intValue();
            float f = this.f986l;
            this.mPlayMap.put(Integer.valueOf(i), Integer.valueOf(soundPool.play(intValue, f, f, 0, 0, 1.0f)));
        }
    }

    public void setVolume(float f) {
        this.f986l = f;
    }
}
