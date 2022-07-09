package com.living.emo.fragment;

import butterknife.BindView;
import com.living.emo.MyApplication;
import com.living.emo.adapter.BannerTextAdpter;
import com.living.emo.bean.TextBean;
import com.livingai.emopet.R;
import com.youth.banner.Banner;
import com.youth.banner.indicator.CircleIndicator;
import com.youth.banner.util.BannerUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class InfoFragment extends AbstractBaseFragment {
    List<TextBean> data = new ArrayList();
    @BindView(R.id.info_banner)
    Banner infoBanner;

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_info;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    void initView() {
        BannerTextAdpter bannerTextAdpter = new BannerTextAdpter(this.data);
        this.infoBanner.setAdapter(bannerTextAdpter).addBannerLifecycleObserver(this).setIndicator(new CircleIndicator(MyApplication.getContext())).setIndicatorSelectedWidth((int) BannerUtils.dp2px(5.0f)).isAutoLoop(false).setIndicatorSelectedColorRes(R.color.InfoIndicatorSelectedColorRes).setIndicatorNormalColorRes(R.color.InfoIndicatorNormalColorRes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setData(List<TextBean> list) {
        this.data = list;
    }
}
