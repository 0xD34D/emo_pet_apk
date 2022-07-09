package com.living.emo.fragment;

import android.view.View;
import android.widget.ImageView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class LiftTimeFragment_ViewBinding implements Unbinder {
    private LiftTimeFragment target;

    public LiftTimeFragment_ViewBinding(LiftTimeFragment liftTimeFragment, View view) {
        this.target = liftTimeFragment;
        liftTimeFragment.mDanceList = (ImageView) Utils.findRequiredViewAsType(view, R.id.lt_dance_iv, "field 'mDanceList'", ImageView.class);
        liftTimeFragment.mAchievment = (ImageView) Utils.findRequiredViewAsType(view, R.id.lt_achi_iv, "field 'mAchievment'", ImageView.class);
        liftTimeFragment.mUpcoming = (ImageView) Utils.findRequiredViewAsType(view, R.id.lt_upcom_iv, "field 'mUpcoming'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        LiftTimeFragment liftTimeFragment = this.target;
        if (liftTimeFragment != null) {
            this.target = null;
            liftTimeFragment.mDanceList = null;
            liftTimeFragment.mAchievment = null;
            liftTimeFragment.mUpcoming = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
