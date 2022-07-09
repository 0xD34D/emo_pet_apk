package com.living.emo.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class AbstractBaseActivity_ViewBinding implements Unbinder {
    private AbstractBaseActivity target;

    public AbstractBaseActivity_ViewBinding(AbstractBaseActivity abstractBaseActivity) {
        this(abstractBaseActivity, abstractBaseActivity.getWindow().getDecorView());
    }

    public AbstractBaseActivity_ViewBinding(AbstractBaseActivity abstractBaseActivity, View view) {
        this.target = abstractBaseActivity;
        abstractBaseActivity.mTopTxtIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.top_txt_iv, "field 'mTopTxtIv'", ImageView.class);
        abstractBaseActivity.mRoot = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.root_back_rel, "field 'mRoot'", RelativeLayout.class);
        abstractBaseActivity.mUtilities_back = (ImageView) Utils.findRequiredViewAsType(view, R.id.utilities_back, "field 'mUtilities_back'", ImageView.class);
        abstractBaseActivity.mFrameLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.util_frame, "field 'mFrameLayout'", FrameLayout.class);
        abstractBaseActivity.mSet = (ImageView) Utils.findRequiredViewAsType(view, R.id.home_set_iv, "field 'mSet'", ImageView.class);
        abstractBaseActivity.mMusicIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.home_music_iv, "field 'mMusicIv'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        AbstractBaseActivity abstractBaseActivity = this.target;
        if (abstractBaseActivity != null) {
            this.target = null;
            abstractBaseActivity.mTopTxtIv = null;
            abstractBaseActivity.mRoot = null;
            abstractBaseActivity.mUtilities_back = null;
            abstractBaseActivity.mFrameLayout = null;
            abstractBaseActivity.mSet = null;
            abstractBaseActivity.mMusicIv = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
