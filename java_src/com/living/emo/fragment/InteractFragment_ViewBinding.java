package com.living.emo.fragment;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class InteractFragment_ViewBinding implements Unbinder {
    private InteractFragment target;

    public InteractFragment_ViewBinding(InteractFragment interactFragment, View view) {
        this.target = interactFragment;
        interactFragment.mInteractList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recy_interact_list, "field 'mInteractList'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        InteractFragment interactFragment = this.target;
        if (interactFragment != null) {
            this.target = null;
            interactFragment.mInteractList = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
