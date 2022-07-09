package com.living.emo.fragment;

import android.view.View;
import android.widget.ImageButton;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class LightFragment_ViewBinding implements Unbinder {
    private LightFragment target;

    public LightFragment_ViewBinding(LightFragment lightFragment, View view) {
        this.target = lightFragment;
        lightFragment.mLightList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rec_light_list, "field 'mLightList'", RecyclerView.class);
        lightFragment.mRefresh = (ImageButton) Utils.findRequiredViewAsType(view, R.id.light_refresh, "field 'mRefresh'", ImageButton.class);
        lightFragment.mUnbind = (ImageButton) Utils.findRequiredViewAsType(view, R.id.light_unbind_all, "field 'mUnbind'", ImageButton.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        LightFragment lightFragment = this.target;
        if (lightFragment != null) {
            this.target = null;
            lightFragment.mLightList = null;
            lightFragment.mRefresh = null;
            lightFragment.mUnbind = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
