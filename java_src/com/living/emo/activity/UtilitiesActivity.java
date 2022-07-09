package com.living.emo.activity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.living.emo.MainActivity;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MusicPlayerUtil;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class UtilitiesActivity extends BaseActivity {
    private Unbinder mBind;
    @BindView(R.id.home_set_iv)
    ImageView mHomeSet;
    @BindView(R.id.home_music_iv)
    ImageView mMusicIv;
    @BindView(R.id.top_txt_iv)
    ImageView mTopTxtIv;

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_utilities);
        this.mBind = ButterKnife.bind(this);
        initViews();
        initMusic();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        MusicPlayerUtil instance = MusicPlayerUtil.getInstance(this);
        int userIsPause = instance.getUserIsPause();
        if (userIsPause == 2) {
            instance.userPause();
        } else if (userIsPause == 1) {
            instance.userPlay();
        } else if (!instance.isPlaying()) {
            instance.play();
        }
        instance.backgroundImage(findViewById(R.id.home_music_iv));
    }

    protected void initMusic() {
        final TextView textView = (TextView) findViewById(R.id.home_music_text_tv);
        textView.setText(MusicPlayerUtil.getInstance(this).getName());
        MusicPlayerUtil.getInstance(this).setOnChangeMusicName(new MusicPlayerUtil.OnChangeMusicName() { // from class: com.living.emo.activity.UtilitiesActivity.1
            @Override // com.living.emo.util.MusicPlayerUtil.OnChangeMusicName
            public void onChangeMusicName(String str) {
                textView.setText(str);
            }
        });
        playBackgroundMusicEvent(this.mMusicIv);
        MusicPlayerUtil.getInstance(this).backgroundImage(this.mMusicIv);
    }

    @OnClick({R.id.util_music})
    public void goMusic() {
        LogUtil.m65d(UtilitiesActivity.class.getSimpleName(), "goMusic: ");
        goToActivity(ToolMusicActivity.class);
    }

    private void goToActivity(Class cls) {
        startActivity(new Intent(this, cls));
    }

    @OnClick({R.id.util_alert})
    public void goAlert() {
        goToActivity(ToolAlertActivity.class);
    }

    @OnClick({R.id.util_photo})
    public void goPhoto() {
        goToActivity(ToolPhotoActivity.class);
    }

    @OnClick({R.id.util_weather})
    public void goWeather() {
        goToActivity(ToolWeatherActivity.class);
    }

    @OnClick({R.id.util_light})
    public void goLight() {
        goToActivity(ToolLightActivity.class);
    }

    @OnClick({R.id.util_more})
    public void goMore() {
        goToActivity(ToolMoreActivity.class);
    }

    @OnClick({R.id.util_back})
    public void goBack() {
        goToActivity(MainActivity.class);
        finish();
    }

    private void initViews() {
        ImageView imageView = (ImageView) findViewById(R.id.top_txt_iv);
        this.mTopTxtIv = imageView;
        imageView.setBackgroundResource(R.drawable.txt_utilities);
        this.mHomeSet.setVisibility(8);
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mBind.unbind();
    }
}
