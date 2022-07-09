package com.living.emo.fragment;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.jaygoo.widget.RangeSeekBar;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class VolumeFragment_ViewBinding implements Unbinder {
    private VolumeFragment target;

    public VolumeFragment_ViewBinding(VolumeFragment volumeFragment, View view) {
        this.target = volumeFragment;
        volumeFragment.mVolume = (RangeSeekBar) Utils.findRequiredViewAsType(view, R.id.seekBar_volume, "field 'mVolume'", RangeSeekBar.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        VolumeFragment volumeFragment = this.target;
        if (volumeFragment != null) {
            this.target = null;
            volumeFragment.mVolume = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
