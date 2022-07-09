package com.living.emo.interfaces;

import com.living.emo.bean.MusicBean;
/* loaded from: classes.dex */
public interface IPlayerControlPresenter extends IBasePresenter<IPlayerControlView> {
    public static final int MEDIA_PAUSE_STATE = 2;
    public static final int MEDIA_PLAY_STATE = 1;
    public static final int MEDIA_STOP_STATE = 3;

    int getPlayingState();

    float getSpeed();

    float getVolume();

    boolean isData();

    boolean isPlaying();

    void notificationChange();

    void pause();

    void play();

    void reset();

    void seekTo(int i);

    void setData(MusicBean.DataBean dataBean);

    void setVolume(float f);

    void speed(float f);

    void stop();
}
