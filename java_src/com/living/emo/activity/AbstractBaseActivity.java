package com.living.emo.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.living.emo.bean.TextBean;
import com.living.emo.fragment.NavToolFragment;
import com.living.emo.util.MusicPlayerUtil;
import com.livingai.emopet.R;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public abstract class AbstractBaseActivity extends BaseActivity {
    private Unbinder mBind;
    @BindView(R.id.util_frame)
    public FrameLayout mFrameLayout;
    @BindView(R.id.home_music_iv)
    ImageView mMusicIv;
    HashMap<String, Integer> mRadio = new HashMap<>();
    @BindView(R.id.root_back_rel)
    public RelativeLayout mRoot;
    @BindView(R.id.home_set_iv)
    ImageView mSet;
    @BindView(R.id.top_txt_iv)
    public ImageView mTopTxtIv;
    @BindView(R.id.utilities_back)
    public ImageView mUtilities_back;

    protected abstract int setTopBg();

    public void goBack() {
        finish();
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_utilites_base);
        this.mBind = ButterKnife.bind(this);
        this.mSet.setVisibility(8);
        initView();
        initMusic();
    }

    protected void initMusic() {
        final TextView textView = (TextView) findViewById(R.id.home_music_text_tv);
        textView.setText(MusicPlayerUtil.getInstance(this).getName());
        MusicPlayerUtil.getInstance(this).setOnChangeMusicName(new MusicPlayerUtil.OnChangeMusicName() { // from class: com.living.emo.activity.AbstractBaseActivity.1
            @Override // com.living.emo.util.MusicPlayerUtil.OnChangeMusicName
            public void onChangeMusicName(String str) {
                textView.setText(str);
            }
        });
        playBackgroundMusicEvent(this.mMusicIv);
        MusicPlayerUtil.getInstance(this).backgroundImage(this.mMusicIv);
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

    protected void initFragment(List<TextBean> list) {
        NavToolFragment navToolFragment = new NavToolFragment();
        navToolFragment.setData(this.mRadio, list);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.add(this.mFrameLayout.getId(), navToolFragment);
        beginTransaction.commit();
    }

    public void initView() {
        this.mTopTxtIv.setBackgroundResource(setTopBg());
        this.mUtilities_back.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.activity.-$$Lambda$AbstractBaseActivity$fV2cKLU_3PSgZ_INQYzGuFzQq8A
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AbstractBaseActivity.this.lambda$initView$0$AbstractBaseActivity(view);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$AbstractBaseActivity(View view) {
        goBack();
    }

    @Override // com.living.emo.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mBind.unbind();
    }
}
