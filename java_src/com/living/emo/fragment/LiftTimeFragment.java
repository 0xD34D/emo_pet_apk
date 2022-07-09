package com.living.emo.fragment;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import com.living.emo.activity.DanceListActivity;
import com.living.emo.activity.LifeTimeActivity;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class LiftTimeFragment extends AbstractBaseFragment {
    private AchievementsFragment mAchievementsFragment;
    @BindView(R.id.lt_achi_iv)
    public ImageView mAchievment;
    @BindView(R.id.lt_dance_iv)
    public ImageView mDanceList;
    private FragmentManager mFm;
    private LifeTimeActivity mLiftTime;
    @BindView(R.id.lt_upcom_iv)
    public ImageView mUpcoming;

    public static /* synthetic */ void lambda$initEvent$2(View view) {
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_lift_time;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        LifeTimeActivity lifeTimeActivity = (LifeTimeActivity) requireActivity();
        this.mLiftTime = lifeTimeActivity;
        lifeTimeActivity.mUtilities_back.setOnClickListener(null);
        this.mFm = this.mLiftTime.getSupportFragmentManager();
        this.mLiftTime.mTopTxtIv.setBackgroundResource(R.drawable.txt_lifetime);
        this.mLiftTime.mRoot.setBackgroundResource(R.drawable.life_bg);
        this.mAchievementsFragment = new AchievementsFragment();
    }

    private void switchFragment(AbstractBaseFragment abstractBaseFragment) {
        FragmentTransaction beginTransaction = this.mFm.beginTransaction();
        beginTransaction.replace(this.mLiftTime.mFrameLayout.getId(), abstractBaseFragment);
        beginTransaction.commit();
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mDanceList.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$LiftTimeFragment$CQYKAkRuy5Oqv8Dycv6gnQuIRMo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiftTimeFragment.this.lambda$initEvent$0$LiftTimeFragment(view);
            }
        });
        this.mAchievment.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$LiftTimeFragment$18JLxVTRNd2PrSLfEkU3gJkkOlk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiftTimeFragment.this.lambda$initEvent$1$LiftTimeFragment(view);
            }
        });
        this.mUpcoming.setOnClickListener($$Lambda$LiftTimeFragment$PcHwp0VDwudu4fzburdNOeTr9CE.INSTANCE);
        this.mLiftTime.mUtilities_back.setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.fragment.-$$Lambda$LiftTimeFragment$NQEQh7oGFfUsvk5B6AguUr6Tq4c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiftTimeFragment.this.lambda$initEvent$3$LiftTimeFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initEvent$0$LiftTimeFragment(View view) {
        startActivity(new Intent(requireActivity(), DanceListActivity.class));
    }

    public /* synthetic */ void lambda$initEvent$1$LiftTimeFragment(View view) {
        switchFragment(this.mAchievementsFragment);
    }

    public /* synthetic */ void lambda$initEvent$3$LiftTimeFragment(View view) {
        this.mLiftTime.goBack();
    }
}
