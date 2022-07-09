package com.living.emo.util;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Build;
import com.living.emo.MyApplication;
import com.livingai.emopet.R;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SoundIdPoolUntil {
    private static SoundIdPoolUntil mInstance;
    private int mMaxStreams;
    protected SoundPool mSoundPool;
    private HashMap<String, Integer> mSounds = null;
    private HashMap<String, Integer> huntMap = new HashMap<>();
    private HashMap<Integer, Integer> huntMusic = new HashMap<>();
    private int currSound = 0;
    private boolean isPlay = false;
    protected Context mContext = MyApplication.getContext();

    public SoundIdPoolUntil(int i) {
        this.mMaxStreams = 10;
        this.mMaxStreams = i;
        initSoundPool();
    }

    private void initSoundPool() {
        if (this.mSoundPool != null) {
            return;
        }
        if (Build.VERSION.SDK_INT > 21) {
            this.mSoundPool = new SoundPool.Builder().setMaxStreams(this.mMaxStreams).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).setContentType(4).build()).build();
            return;
        }
        this.mSoundPool = new SoundPool(this.mMaxStreams, 3, 0);
    }

    public static SoundIdPoolUntil getInstance() {
        if (mInstance == null) {
            mInstance = new SoundIdPoolUntil(13);
        }
        return mInstance;
    }

    public void play(int i) {
        final int load = this.mSoundPool.load(this.mContext, i, 1);
        this.mSoundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.living.emo.util.SoundIdPoolUntil.1
            @Override // android.media.SoundPool.OnLoadCompleteListener
            public void onLoadComplete(SoundPool soundPool, int i2, int i3) {
                SoundIdPoolUntil.this.mSoundPool.play(load, 1.0f, 1.0f, 1, 0, 1.0f);
                SoundIdPoolUntil.this.mSoundPool.unload(load);
            }
        });
    }

    public void load() {
        if (this.huntMap.size() <= 0) {
            this.huntMap.put("effect_1", Integer.valueOf(this.mSoundPool.load(this.mContext, R.raw.treasure_hunt_radar_sound_effect_1, 1)));
            this.huntMap.put("effect_2", Integer.valueOf(this.mSoundPool.load(this.mContext, R.raw.treasure_hunt_radar_sound_effect_2, 1)));
            this.huntMap.put("effect_3", Integer.valueOf(this.mSoundPool.load(this.mContext, R.raw.treasure_hunt_radar_sound_effect_3, 1)));
            this.huntMap.put("hunt_effect", Integer.valueOf(this.mSoundPool.load(this.mContext, R.raw.game_interface__sound_effect, 1)));
            this.huntMap.put("hunt_android", Integer.valueOf(this.mSoundPool.load(this.mContext, R.raw.game_interface_android, 1)));
            this.huntMap.put("last_3", Integer.valueOf(this.mSoundPool.load(this.mContext, R.raw.hunt_last_3, 1)));
            this.huntMap.put("no_reward", Integer.valueOf(this.mSoundPool.load(this.mContext, R.raw.emo_no_reward, 1)));
            this.huntMap.put("time_out1", Integer.valueOf(this.mSoundPool.load(this.mContext, R.raw.time_out1, 1)));
        }
    }

    public void play(String str, int i) {
        Integer num = this.huntMap.get(str);
        if (num != null) {
            this.currSound = this.mSoundPool.play(num.intValue(), 1.0f, 1.0f, 1, i, 1.0f);
            str.hashCode();
            if (!str.equals("last_3") && !str.equals("time_out1")) {
                this.huntMusic.put(Integer.valueOf(this.currSound), Integer.valueOf(this.currSound));
            }
            this.isPlay = true;
        }
    }

    public void stop() {
        if (this.currSound != 0) {
            for (Integer num : this.huntMusic.keySet()) {
                Integer num2 = this.huntMusic.get(num);
                if (num2 != null) {
                    this.mSoundPool.stop(num2.intValue());
                }
            }
            this.huntMusic.clear();
            this.isPlay = false;
        }
    }

    public boolean isPlay() {
        return this.isPlay;
    }
}
