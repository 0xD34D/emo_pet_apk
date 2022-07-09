package com.living.emo.fragment;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class AchievementsFragment_ViewBinding implements Unbinder {
    private AchievementsFragment target;

    public AchievementsFragment_ViewBinding(AchievementsFragment achievementsFragment, View view) {
        this.target = achievementsFragment;
        achievementsFragment.mLifeRec = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.life_time_rec, "field 'mLifeRec'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        AchievementsFragment achievementsFragment = this.target;
        if (achievementsFragment != null) {
            this.target = null;
            achievementsFragment.mLifeRec = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
