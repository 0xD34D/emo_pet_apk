package com.living.emo.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.view.View;
import com.livingai.emopet.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes.dex */
public class MusicPlayerUtil {
    private static String SHARECACHECONTENTPATH = "emo_music_info";
    private static String SHARECACHECONTENTPRE = "emo_music_info_userIsPause";
    private static final String TAG = "zxl::" + MusicPlayerUtil.class.getSimpleName();
    private static MusicPlayerUtil sMusicPlayerUtil;
    private MediaPlayer mBackgroundMediaPlayer;
    private Context mContext;
    private final SharedPreferences.Editor mEdit;
    private List<MusicList> mMusicLists;
    private final SharedPreferences mSharedPreferences;
    private int userIsPause;
    private int mCurrentPosition = 0;
    private boolean isPause = true;
    private boolean init = false;
    List<OnChangeMusicName> mCallBack = new ArrayList();

    /* loaded from: classes.dex */
    public interface OnChangeMusicName {
        void onChangeMusicName(String str);
    }

    private MusicPlayerUtil(Context context) {
        this.userIsPause = 0;
        this.mContext = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences(SHARECACHECONTENTPATH, 0);
        this.mSharedPreferences = sharedPreferences;
        this.mEdit = sharedPreferences.edit();
        this.userIsPause = sharedPreferences.getInt(SHARECACHECONTENTPRE, 0);
        initData();
        initMusic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initMusic() {
        if (this.mBackgroundMediaPlayer == null) {
            this.mCurrentPosition = new Random().nextInt(this.mMusicLists.size() - 1);
            if (this.mMusicLists.size() <= this.mCurrentPosition) {
                this.mCurrentPosition = 0;
            }
            this.mBackgroundMediaPlayer = createMediaplayerFromAssets(this.mMusicLists.get(this.mCurrentPosition).getPath());
        }
    }

    public void init() {
        if (!this.init) {
            play();
            this.init = true;
            changName(getName());
        }
    }

    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer == null) {
            return false;
        }
        return mediaPlayer.isPlaying();
    }

    public void play() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer != null && !mediaPlayer.isPlaying()) {
            this.mBackgroundMediaPlayer.start();
            this.isPause = false;
        }
    }

    public void onClick(View view) {
        if (isPlaying()) {
            userPause();
            view.setBackgroundResource(R.drawable.home_music_off);
            return;
        }
        userPlay();
        view.setBackgroundResource(R.drawable.home_music_on);
    }

    public void backgroundImage(View view) {
        if (isPlaying()) {
            view.setBackgroundResource(R.drawable.home_music_on);
        } else {
            view.setBackgroundResource(R.drawable.home_music_off);
        }
    }

    public void pause() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer != null && mediaPlayer.isPlaying()) {
            this.mBackgroundMediaPlayer.pause();
            this.isPause = true;
        }
    }

    public void userPause() {
        this.userIsPause = 2;
        this.mEdit.putInt(SHARECACHECONTENTPRE, 2);
        this.mEdit.apply();
        pause();
    }

    public void userPlay() {
        this.userIsPause = 1;
        this.mEdit.putInt(SHARECACHECONTENTPRE, 1);
        this.mEdit.apply();
        play();
    }

    public int getUserIsPause() {
        return this.userIsPause;
    }

    public String getName() {
        return this.mMusicLists.get(this.mCurrentPosition).getName();
    }

    private void initData() {
        ArrayList arrayList = new ArrayList();
        this.mMusicLists = arrayList;
        arrayList.add(new MusicList("disc/blame_yourself_revolt.mp3", "TBlame Yourself - Revolt"));
        this.mMusicLists.add(new MusicList("disc/blindless_revolt.mp3", "Blindless - Revolt"));
        this.mMusicLists.add(new MusicList("disc/can_i_take_you_there_revolt.mp3", "Can I Take You There - Revolt"));
        this.mMusicLists.add(new MusicList("disc/click_original_mix_revolt.mp3", "Click (Original Mix) - Revolt"));
        this.mMusicLists.add(new MusicList("disc/complex_revolt.mp3", "Complex - Revolt"));
        this.mMusicLists.add(new MusicList("disc/flashback_revolt.mp3", "Flashback - Revolt"));
        this.mMusicLists.add(new MusicList("disc/ocean_blue_revolt.mp3", "Ocean Blue - Revolt"));
        this.mMusicLists.add(new MusicList("disc/rollercoaster_revolt.mp3", "Rollercoaster - Revolt"));
        this.mMusicLists.add(new MusicList("disc/stars_instrumental_revolt.mp3", "Stars (Instrumental) - Revolt"));
        this.mMusicLists.add(new MusicList("disc/time_of_my_life_revolt.mp3", "Time of My Life - Revolt"));
        this.mMusicLists.add(new MusicList("disc/wont_let_go_revolt.mp3", "Won't Let Go - Revolt"));
        this.mMusicLists.add(new MusicList("disc/you_want_me_revolt.mp3", "You Want Me - Revolt"));
    }

    public static MusicPlayerUtil getInstance(Context context) {
        if (sMusicPlayerUtil == null) {
            sMusicPlayerUtil = new MusicPlayerUtil(context);
        }
        return sMusicPlayerUtil;
    }

    private MediaPlayer createMediaplayerFromAssets(String str) {
        try {
            AssetFileDescriptor openFd = this.mContext.getAssets().openFd(str);
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
            mediaPlayer.prepare();
            mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.living.emo.util.MusicPlayerUtil.1
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer2) {
                    MusicPlayerUtil.this.isPause = true;
                    LogUtil.m64e(MusicPlayerUtil.TAG, "onCompletion: 播放完成");
                    if (MusicPlayerUtil.this.mMusicLists.size() <= MusicPlayerUtil.this.mCurrentPosition) {
                        MusicPlayerUtil.this.mCurrentPosition = 0;
                    } else {
                        MusicPlayerUtil.this.mCurrentPosition++;
                        LogUtil.m64e(MusicPlayerUtil.TAG, "onCompletion: " + MusicPlayerUtil.this.mCurrentPosition);
                    }
                    if (MusicPlayerUtil.this.mBackgroundMediaPlayer != null) {
                        MusicPlayerUtil.this.mBackgroundMediaPlayer.release();
                        MusicPlayerUtil.this.mBackgroundMediaPlayer = null;
                        MusicPlayerUtil.this.initMusic();
                        MusicPlayerUtil.this.play();
                        MusicPlayerUtil musicPlayerUtil = MusicPlayerUtil.this;
                        musicPlayerUtil.changName(musicPlayerUtil.getName());
                    }
                }
            });
            return mediaPlayer;
        } catch (Exception e) {
            String str2 = TAG;
            LogUtil.m64e(str2, "error: " + e.getMessage());
            return null;
        }
    }

    /* loaded from: classes.dex */
    public class MusicList {
        private String name;
        private String path;

        public MusicList(String str, String str2) {
            this.path = null;
            this.name = null;
            this.path = str;
            this.name = str2;
        }

        public String getPath() {
            return this.path;
        }

        public void setPath(String str) {
            this.path = str;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    public void setOnChangeMusicName(OnChangeMusicName onChangeMusicName) {
        if (!this.mCallBack.contains(onChangeMusicName)) {
            this.mCallBack.add(onChangeMusicName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changName(String str) {
        for (int i = 0; i < this.mCallBack.size(); i++) {
            this.mCallBack.get(i).onChangeMusicName(str);
        }
    }

    public void end() {
        MediaPlayer mediaPlayer = this.mBackgroundMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mBackgroundMediaPlayer.release();
            this.mBackgroundMediaPlayer = null;
            sMusicPlayerUtil = null;
        }
    }
}
