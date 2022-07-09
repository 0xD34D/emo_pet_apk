package com.living.emo.presenter;

import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.os.Binder;
import android.os.Build;
import com.living.emo.MyApplication;
import com.living.emo.bean.MusicBean;
import com.living.emo.bean.MusicInfo;
import com.living.emo.interfaces.IPlayerControlPresenter;
import com.living.emo.interfaces.IPlayerControlView;
import com.living.emo.util.DateUtil;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MathUtil;
import java.io.IOException;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class PlayerControlPresenter2 extends Binder implements IPlayerControlPresenter {
    private static final String TAG = "com.living.emo.presenter.PlayerControlPresenter2";
    private IPlayerControlView mCallback;
    private MusicInfo mMusicInfo;
    private MyTask mMyTask;
    private ScheduledFuture<?> mScheduledFuture;
    private int mCurrentState = 3;
    private MediaPlayer mMediaPlayer = null;
    private MusicBean.DataBean mData = null;
    private boolean flag = true;
    private float mVolume = 50.0f;
    private float mSpeed = 1.0f;
    private ScheduledExecutorService mExecutorService = Executors.newScheduledThreadPool(1);

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void play() {
        if (this.mMediaPlayer != null) {
            int i = this.mCurrentState;
            if ((i == 3 || i == 2) && !isPlaying()) {
                this.mCurrentState = 1;
                this.mMediaPlayer.start();
                if (this.flag) {
                    this.mMediaPlayer.setVolume(0.5f, 0.5f);
                    this.flag = false;
                }
                speed(MathUtil.format2Decimal(getSpeed()));
                notificationChange();
                threadStart();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initMediaPlayer() {
        if (this.mMediaPlayer == null) {
            this.mMediaPlayer = new MediaPlayer();
        }
        if (this.mCurrentState == 3) {
            try {
                AssetFileDescriptor openFd = MyApplication.getContext().getAssets().openFd(this.mData.getPath());
                this.mMediaPlayer.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
                this.mMediaPlayer.prepare();
                this.mMediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.living.emo.presenter.PlayerControlPresenter2.1
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        LogUtil.m65d(PlayerControlPresenter2.TAG, "--------------setOnCompletionListener-------------------");
                        PlayerControlPresenter2.this.mCurrentState = 3;
                        PlayerControlPresenter2.this.notificationChange();
                        PlayerControlPresenter2.this.threadStop();
                        PlayerControlPresenter2.this.reset();
                        PlayerControlPresenter2.this.initMediaPlayer();
                    }
                });
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void pause() {
        if (this.mMediaPlayer != null && this.mCurrentState == 1 && isPlaying()) {
            this.mCurrentState = 2;
            this.mMediaPlayer.pause();
            notificationChange();
            threadStop();
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void stop() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            this.mCurrentState = 3;
            mediaPlayer.stop();
            notificationChange();
            threadStop();
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
        if (Build.VERSION.SDK_INT >= 23 && this.mMediaPlayer != null) {
            this.mSpeed = f;
            if (isPlaying()) {
                float format2Decimal = MathUtil.format2Decimal(f);
                String str = TAG;
                LogUtil.m65d(str, format2Decimal + "：decimal:");
                MediaPlayer mediaPlayer = this.mMediaPlayer;
                mediaPlayer.setPlaybackParams(mediaPlayer.getPlaybackParams().setSpeed(format2Decimal));
            }
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public float getSpeed() {
        return this.mSpeed;
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public int getPlayingState() {
        return this.mCurrentState;
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void reset() {
        if (this.mMediaPlayer != null) {
            if (this.mCurrentState != 3) {
                stop();
            }
            this.mMediaPlayer.reset();
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void setData(MusicBean.DataBean dataBean) {
        this.mData = dataBean;
        initMediaPlayer();
        if (this.mMediaPlayer != null) {
            this.mMusicInfo = null;
            MusicInfo musicInfo = new MusicInfo(this.mData.getName(), getDuration());
            this.mMusicInfo = musicInfo;
            this.mCallback.musicInfo(musicInfo);
            this.mCallback.onChangeSeekBar(getDuration(), 0);
        }
    }

    private String getDuration() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        return mediaPlayer != null ? DateUtil.formatDate(mediaPlayer.getDuration()) : "00:00";
    }

    private void threadStart() {
        if (this.mMyTask == null && this.mScheduledFuture == null) {
            MyTask myTask = new MyTask();
            this.mMyTask = myTask;
            this.mScheduledFuture = this.mExecutorService.scheduleAtFixedRate(myTask, 0L, 400L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void threadStop() {
        ScheduledFuture<?> scheduledFuture = this.mScheduledFuture;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.mScheduledFuture.cancel(false);
            this.mMyTask = null;
            this.mScheduledFuture = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getStayTime() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        return mediaPlayer != null ? DateUtil.formatDate(mediaPlayer.getDuration() - this.mMediaPlayer.getCurrentPosition()) : "00:00";
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void notificationChange() {
        this.mCallback.playOnChangeSate(this.mCurrentState);
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void setVolume(float f) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            this.mVolume = f;
            mediaPlayer.setVolume(f, f);
        }
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public float getVolume() {
        return this.mVolume;
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public boolean isData() {
        return this.mData != null;
    }

    @Override // com.living.emo.interfaces.IPlayerControlPresenter
    public void seekTo(int i) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            this.mMediaPlayer.seekTo((mediaPlayer.getDuration() * i) / 100);
            this.mCallback.onChangeSeekBar(getStayTime(), i);
        }
    }

    public void registerControlView(IPlayerControlView iPlayerControlView) {
        this.mCallback = iPlayerControlView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrPosition() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            return (int) ((mediaPlayer.getCurrentPosition() / this.mMediaPlayer.getDuration()) * 100.0d);
        }
        return 0;
    }

    @Override // com.living.emo.interfaces.IBasePresenter
    public void unRegisterControlView() {
        if (this.mCallback != null) {
            this.mCallback = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MyTask implements Runnable {
        private MyTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PlayerControlPresenter2.this.mCallback.onChangeSeekBar(PlayerControlPresenter2.this.getStayTime(), PlayerControlPresenter2.this.getCurrPosition());
        }
    }
}
