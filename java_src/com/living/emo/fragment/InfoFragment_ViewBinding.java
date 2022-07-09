package com.living.emo.fragment;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
import com.youth.banner.Banner;
/* loaded from: classes.dex */
public class InfoFragment_ViewBinding implements Unbinder {
    private InfoFragment target;

    public InfoFragment_ViewBinding(InfoFragment infoFragment, View view) {
        this.target = infoFragment;
        infoFragment.infoBanner = (Banner) Utils.findRequiredViewAsType(view, R.id.info_banner, "field 'infoBanner'", Banner.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        InfoFragment infoFragment = this.target;
        if (infoFragment != null) {
            this.target = null;
            infoFragment.infoBanner = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
