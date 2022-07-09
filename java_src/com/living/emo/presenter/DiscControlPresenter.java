package com.living.emo.presenter;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.os.Build;
import com.living.emo.bean.MusicBean;
import com.living.emo.bean.MusicInfo;
import com.living.emo.interfaces.IPlayerControlPresenter;
import com.living.emo.interfaces.IPlayerControlView;
import com.living.emo.util.DateUtil;
import com.living.emo.util.LogUtil;
import java.io.IOException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class DiscControlPresenter implements IPlayerControlPresenter {
    private static final String TAG = "zxl::" + DiscControlPresenter.class.getSimpleName();
    private final Context mContext;
    private MusicBean.DataBean mData;
    private MediaPlayer mMediaPlayer;
    private MyTask mMyTask;
    private ScheduledFuture<?> mScheduledFuture;
    private int currState = 3;
    private IPlayerControlView listener = null;
    private float speed = 1.0f;
    private float vol = 0.5f;
    private ScheduledExecutorService mExecutorService = Executors.newScheduledThreadPool(1);

    public DiscControlPresenter(Context context) {
        this.mContext = context;
        initMediaPlayer();
    }

    private void initMediaPlayer() {
        if (this.mMediaPlayer == null) {
            this.mMediaPlayer = new MediaPlayer();
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void play() {
        if (this.mMediaPlayer != null) {
            int i = this.currState;
            if (3 == i || 2 == i) {
                this.currState = 1;
                setVolume(this.vol);
                this.mMediaPlayer.start();
                notificationChange();
                speed(this.speed);
                threadStart();
            }
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void pause() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && 1 == this.currState) {
            this.currState = 2;
            mediaPlayer.pause();
            notificationChange();
            threadStop();
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void stop() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && 3 != this.currState) {
            this.currState = 3;
            mediaPlayer.stop();
            notificationChange();
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void speed(float f) {
        this.speed = f;
        if (this.currState == 1 && Build.VERSION.SDK_INT >= 23) {
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            mediaPlayer.setPlaybackParams(mediaPlayer.getPlaybackParams().setSpeed(this.speed));
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public float getSpeed() {
        return this.speed;
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public int getPlayingState() {
        return this.currState;
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void reset() {
        if (this.mMediaPlayer != null) {
            if (3 != this.currState) {
                stop();
            }
            this.mMediaPlayer.reset();
            threadStop();
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void setData(MusicBean.DataBean dataBean) {
        this.mData = dataBean;
        reset();
        loadResources();
        this.listener.musicInfo(new MusicInfo(dataBean.getName(), getStayTime()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadResources() {
        if (this.mMediaPlayer != null) {
            try {
                AssetFileDescriptor openFd = this.mContext.getAssets().openFd(this.mData.getPath());
                this.mMediaPlayer.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
                this.mMediaPlayer.prepare();
                this.mMediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.living.emo.presenter.DiscControlPresenter.1
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        DiscControlPresenter.this.currState = 3;
                        DiscControlPresenter.this.notificationChange();
                        DiscControlPresenter.this.reset();
                        DiscControlPresenter.this.loadResources();
                    }
                });
            } catch (IOException e) {
                String str = TAG;
                LogUtil.m64e(str, "loadResources: " + e.getMessage());
            }
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void notificationChange() {
        this.listener.playOnChangeSate(this.currState);
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void setVolume(float f) {
        this.vol = f;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f, f);
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public float getVolume() {
        return this.vol;
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public boolean isData() {
        return this.mData != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getStayTime() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return "00:00";
        }
        long duration = mediaPlayer.getDuration() - this.mMediaPlayer.getCurrentPosition();
        return duration <= 0 ? "00:00" : DateUtil.formatDate(duration);
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void seekTo(int i) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            this.mMediaPlayer.seekTo((mediaPlayer.getDuration() * i) / 100);
            this.listener.onChangeSeekBar(getStayTime(), i);
        }
    }

    public void registerControlView(IPlayerControlView iPlayerControlView) {
        this.listener = iPlayerControlView;
    }

    @Override // com.living.emo.interfaces.IBasePresenter
    public void unRegisterControlView() {
        this.listener = null;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrPosition() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            return (int) ((mediaPlayer.getCurrentPosition() / this.mMediaPlayer.getDuration()) * 100.0d);
        }
        return 0;
    }

    private void threadStart() {
        if (this.mMyTask == null && this.mScheduledFuture == null) {
            MyTask myTask = new MyTask();
            this.mMyTask = myTask;
            this.mScheduledFuture = this.mExecutorService.scheduleAtFixedRate(myTask, 0L, 400L, TimeUnit.MILLISECONDS);
        }
    }

    private void threadStop() {
        ScheduledFuture<?> scheduledFuture = this.mScheduledFuture;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.mScheduledFuture.cancel(false);
            this.mMyTask = null;
            this.mScheduledFuture = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MyTask implements Runnable {
        private MyTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DiscControlPresenter.this.listener.onChangeSeekBar(DiscControlPresenter.this.getStayTime(), DiscControlPresenter.this.getCurrPosition());
        }
    }
}
