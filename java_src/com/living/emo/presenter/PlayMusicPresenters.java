package com.living.emo.presenter;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import com.living.emo.bean.MemoryMusicBean;
import com.living.emo.util.LogUtil;
import java.io.IOException;
/* loaded from: classes.dex */
public class PlayMusicPresenters {
    private static final String TAG = "zxl::" + PlayMusicPresenters.class.getSimpleName();
    private final Context mContext;
    private MemoryMusicBean mData;
    private MediaPlayer mMediaPlayer = null;
    private boolean isLoop = false;
    private float vol = -1.0f;

    public boolean isLoop() {
        return this.isLoop;
    }

    public PlayMusicPresenters setLoop(boolean z) {
        this.isLoop = z;
        return this;
    }

    public float getVol() {
        return this.vol;
    }

    public PlayMusicPresenters setVol(float f) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f, f);
        } else {
            this.vol = f;
        }
        return this;
    }

    public PlayMusicPresenters(Context context) {
        this.mContext = context;
        initMediaPlayer();
    }

    protected void initMediaPlayer() {
        if (this.mMediaPlayer == null) {
            this.mMediaPlayer = new MediaPlayer();
        }
    }

    public void setResources(MemoryMusicBean memoryMusicBean) {
        this.mData = memoryMusicBean;
        loadResources();
    }

    private void loadResources() {
        if (this.mMediaPlayer != null) {
            try {
                AssetFileDescriptor openFd = this.mContext.getAssets().openFd(this.mData.getPath());
                this.mMediaPlayer.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
                this.mMediaPlayer.prepare();
                this.mMediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.living.emo.presenter.PlayMusicPresenters.1
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        if (PlayMusicPresenters.this.isLoop) {
                            mediaPlayer.start();
                        } else {
                            mediaPlayer.stop();
                        }
                    }
                });
            } catch (IOException e) {
                String str = TAG;
                LogUtil.m65d(str, "loadResources: " + e.getMessage());
            }
        }
    }

    public void play() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            float f = this.vol;
            if (f >= 0.0f) {
                mediaPlayer.setVolume(f, f);
            }
            this.mMediaPlayer.start();
        }
    }

    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.isPlaying();
        }
        return false;
    }

    public void pause() {
        if (this.mMediaPlayer != null && isPlaying()) {
            this.mMediaPlayer.pause();
        }
    }

    public void release() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }
}
