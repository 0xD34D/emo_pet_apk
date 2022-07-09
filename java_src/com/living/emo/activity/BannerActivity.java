package com.living.emo.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.living.emo.MainActivity;
import com.living.emo.adapter.ImageAdapter;
import com.living.emo.bean.DataBean;
import com.living.emo.util.LogUtil;
import com.living.emo.util.MusicPlayerUtil;
import com.living.emo.util.SoundIdPoolUntil;
import com.livingai.emopet.R;
import com.youth.banner.Banner;
import com.youth.banner.indicator.CircleIndicator;
import com.youth.banner.listener.OnBannerListener;
import com.youth.banner.listener.OnPageChangeListener;
import com.youth.banner.transformer.AlphaPageTransformer;
import com.youth.banner.util.LogUtils;
/* loaded from: classes.dex */
public class BannerActivity extends BaseActivity implements OnPageChangeListener {
    private static final String TAG = "zxl::" + BannerActivity.class.getSimpleName();
    private Banner mBanner;
    private ImageView mGameReturn;
    private ImageView mHomeMusic;
    private ImageView mHomeSet;
    private ImageView mTopTxtIv;

    @Override // com.youth.banner.listener.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
    }

    @Override // com.youth.banner.listener.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_banner);
        initViews();
        initEvent();
    }

    private void initEvent() {
        ImageView imageView = (ImageView) findViewById(R.id.home_music_iv);
        this.mHomeMusic = imageView;
        playBackgroundMusicEvent(imageView);
        final TextView textView = (TextView) findViewById(R.id.home_music_text_tv);
        MusicPlayerUtil instance = MusicPlayerUtil.getInstance(this);
        textView.setText(instance.getName());
        instance.setOnChangeMusicName(new MusicPlayerUtil.OnChangeMusicName() { // from class: com.living.emo.activity.BannerActivity.1
            @Override // com.living.emo.util.MusicPlayerUtil.OnChangeMusicName
            public void onChangeMusicName(String str) {
                textView.setText(str);
            }
        });
        instance.backgroundImage(this.mHomeMusic);
    }

    private void initViews() {
        this.mTopTxtIv = (ImageView) findViewById(R.id.top_txt_iv);
        ImageView imageView = (ImageView) findViewById(R.id.home_set_iv);
        this.mHomeSet = imageView;
        imageView.setVisibility(8);
        this.mTopTxtIv.setBackgroundResource(R.drawable.txt_game);
        this.mGameReturn = (ImageView) findViewById(R.id.home_back_iv);
        this.mBanner = (Banner) findViewById(R.id.banner_gallery);
        this.mGameReturn.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.BannerActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerActivity.this.startActivity(new Intent(BannerActivity.this, MainActivity.class));
                BannerActivity.this.finish();
            }
        });
        this.mBanner.setAdapter(new ImageAdapter(DataBean.getData())).setIndicator((CircleIndicator) findViewById(R.id.indicator), false).addOnPageChangeListener(this).setOnBannerListener(new OnBannerListener() { // from class: com.living.emo.activity.BannerActivity.3
            @Override // com.youth.banner.listener.OnBannerListener
            public void OnBannerClick(Object obj, int i) {
                BannerActivity.this.mBanner.setEnabled(false);
                DataBean dataBean = (DataBean) obj;
                String str = BannerActivity.TAG;
                LogUtil.m65d(str, "position->>:" + i + "list<dataBean>---->:" + dataBean.viewType);
                if (dataBean.viewType == 1) {
                    BannerActivity.this.playMusic();
                    BannerActivity.this.startActivity(new Intent(BannerActivity.this, LudoGameActivity.class));
                }
                if (dataBean.viewType == 2) {
                    BannerActivity.this.playMusic();
                    SoundIdPoolUntil.getInstance().play(R.raw.selected);
                    BannerActivity.this.startActivity(new Intent(BannerActivity.this, WakeDemonActivity.class));
                }
                if (dataBean.viewType == 3) {
                    BannerActivity.this.playMusic();
                    SoundIdPoolUntil.getInstance().play(R.raw.select);
                    BannerActivity.this.startActivity(new Intent(BannerActivity.this, MemoryActivity.class));
                }
                if (dataBean.viewType == 4) {
                    BannerActivity bannerActivity = BannerActivity.this;
                    bannerActivity.showToast(bannerActivity.getResources().getString(R.string.coming_soon));
                }
                if (dataBean.viewType == 5) {
                    BannerActivity.this.playMusic();
                    BannerActivity.this.startActivity(new Intent(BannerActivity.this, DrumActivity.class));
                }
                if (dataBean.viewType == 6) {
                    BannerActivity.this.playMusic();
                    BannerActivity.this.startActivity(new Intent(BannerActivity.this, HuntActivity.class));
                }
                BannerActivity.this.mBanner.setEnabled(true);
            }
        });
        this.mBanner.setBannerGalleryEffect(200, 15, 0.85f);
        this.mBanner.addPageTransformer(new AlphaPageTransformer());
    }

    public void playMusic() {
        MusicPlayerUtil instance = MusicPlayerUtil.getInstance(this);
        if (instance.isPlaying()) {
            instance.pause();
            instance.backgroundImage(this.mHomeMusic);
        }
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
        instance.backgroundImage(this.mHomeMusic);
    }

    @Override // com.youth.banner.listener.OnPageChangeListener
    public void onPageSelected(int i) {
        LogUtils.m43d("onPageSelected:" + i);
    }
}
