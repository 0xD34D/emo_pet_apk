package com.living.emo.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.bean.DataBean;
import com.livingai.emopet.R;
import com.youth.banner.adapter.BannerAdapter;
import com.youth.banner.util.BannerUtils;
import java.util.List;
/* loaded from: classes.dex */
public class ImageAdapter extends BannerAdapter<DataBean, InnerHolder> {
    public ImageAdapter(List<DataBean> list) {
        super(list);
    }

    @Override // com.youth.banner.adapter.IViewHolder
    public InnerHolder onCreateHolder(ViewGroup viewGroup, int i) {
        return new InnerHolder(BannerUtils.getView(viewGroup, R.layout.image_banner_gallery));
    }

    public void onBindView(InnerHolder innerHolder, DataBean dataBean, int i, int i2) {
        innerHolder.mBody.setScaleType(ImageView.ScaleType.FIT_XY);
        innerHolder.mTitle.setImageResource(dataBean.title.intValue());
        innerHolder.mBody.setImageResource(dataBean.imageRes.intValue());
    }

    /* loaded from: classes.dex */
    public class InnerHolder extends RecyclerView.ViewHolder {
        private final ImageView mBody;
        private final ImageView mTitle;

        public InnerHolder(View view) {
            super(view);
            this.mTitle = (ImageView) view.findViewById(R.id.banner_title_iv);
            this.mBody = (ImageView) view.findViewById(R.id.banner_body);
        }
    }
}
