package com.living.emo.util;

import android.content.Context;
import android.media.MediaPlayer;
/* loaded from: classes.dex */
public enum AudioUtil {
    INSTANCE;
    
    public static final int AUDIO_PAUSE_STATE = 2;
    public static final int AUDIO_PLAY_STATE = 1;
    public static final int AUDIO_STOP_STATE = 3;
    private MediaPlayer mMediaPlayer;
    private int currState = 3;
    private OnAudioPlayingState audioPlayState = null;

    /* loaded from: classes.dex */
    public interface OnAudioPlayingState {
        void audioState(int i);
    }

    AudioUtil() {
    }

    public void play(Context context, int i) {
        MediaPlayer create = MediaPlayer.create(context, i);
        this.mMediaPlayer = create;
        if (create != null) {
            int i2 = this.currState;
            if (i2 == 3 || i2 == 2) {
                this.currState = 1;
                notifyChange();
                this.mMediaPlayer.setLooping(true);
                this.mMediaPlayer.start();
            }
        }
    }

    public void stopPlay() {
        if (this.mMediaPlayer != null) {
            this.currState = 3;
            notifyChange();
            this.mMediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }

    public void setAudioPlayState(OnAudioPlayingState onAudioPlayingState) {
        if (this.audioPlayState == null) {
            this.audioPlayState = onAudioPlayingState;
        }
    }

    private void notifyChange() {
        OnAudioPlayingState onAudioPlayingState = this.audioPlayState;
        if (onAudioPlayingState != null) {
            onAudioPlayingState.audioState(this.currState);
        }
    }

    public void pause() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && this.currState == 1) {
            this.currState = 2;
            mediaPlayer.pause();
            notifyChange();
        }
    }

    public int getDuration() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getDuration();
        }
        return 0;
    }

    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.isPlaying();
        }
        return false;
    }
}
