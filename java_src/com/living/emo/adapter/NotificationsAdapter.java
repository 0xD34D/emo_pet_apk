package com.living.emo.adapter;

import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.living.emo.bean.Notice;
import com.livingai.emopet.R;
import p005cn.bingoogolapple.badgeview.BGABadgeRelativeLayout;
import p005cn.bingoogolapple.baseadapter.BGARecyclerViewAdapter;
import p005cn.bingoogolapple.baseadapter.BGAViewHolderHelper;
/* loaded from: classes.dex */
public class NotificationsAdapter extends BGARecyclerViewAdapter<Notice.DataBean.ArticleBean> {
    private int currIndex = 0;

    public void setCurrIndex(int i) {
        this.currIndex = i;
    }

    public NotificationsAdapter(RecyclerView recyclerView) {
        super(recyclerView, R.layout.item_article);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fillData(BGAViewHolderHelper bGAViewHolderHelper, int i, Notice.DataBean.ArticleBean articleBean) {
        bGAViewHolderHelper.setText(R.id.recy_noti_title, articleBean.getTitle());
        bGAViewHolderHelper.setText(R.id.recy_noti_sub_title, articleBean.getSub_title());
        BGABadgeRelativeLayout bGABadgeRelativeLayout = (BGABadgeRelativeLayout) bGAViewHolderHelper.getConvertView();
        bGAViewHolderHelper.getRecyclerViewHolder().setIsRecyclable(false);
        LinearLayout linearLayout = (LinearLayout) bGABadgeRelativeLayout.findViewById(R.id.recy_badgeView_new);
        View findViewById = bGABadgeRelativeLayout.findViewById(R.id.recy_round);
        View findViewById2 = bGABadgeRelativeLayout.findViewById(R.id.recy_noti_dot_round);
        View findViewById3 = bGABadgeRelativeLayout.findViewById(R.id.recy_noti_dot);
        bGAViewHolderHelper.setItemChildClickListener(R.id.recy_badgeView_new);
        if (i == this.currIndex) {
            linearLayout.setBackgroundResource(R.drawable.noti_item_bg_s);
            findViewById.setVisibility(0);
            findViewById2.setVisibility(0);
            findViewById3.setVisibility(8);
        } else {
            findViewById.setVisibility(8);
            findViewById2.setVisibility(8);
            findViewById3.setVisibility(0);
        }
        if (articleBean.isIsnew()) {
            bGABadgeRelativeLayout.showTextBadge("NEW");
        }
    }
}
