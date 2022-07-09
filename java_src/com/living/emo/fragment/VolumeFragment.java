package com.living.emo.fragment;

import butterknife.BindView;
import com.jaygoo.widget.OnRangeChangedListener;
import com.jaygoo.widget.RangeSeekBar;
import com.living.emo.util.LogUtil;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class VolumeFragment extends AbstractBaseFragment {
    @BindView(R.id.seekBar_volume)
    RangeSeekBar mVolume;
    long currtime = 0;
    float currgress = 0.0f;

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected int loadRootViewResId() {
        return R.layout.fragment_volume;
    }

    @Override // com.living.emo.fragment.AbstractBaseFragment
    protected void initEvent() {
        this.mVolume.setOnRangeChangedListener(new OnRangeChangedListener() { // from class: com.living.emo.fragment.VolumeFragment.1
            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStartTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onRangeChanged(RangeSeekBar rangeSeekBar, float f, float f2, boolean z) {
                LogUtil.m64e("TAG", String.format("onRangeChanged: isFromUser: %b ,leftValue : %f ,rightValue: %f", Boolean.valueOf(z), Float.valueOf(f), Float.valueOf(f2)));
            }

            @Override // com.jaygoo.widget.OnRangeChangedListener
            public void onStopTrackingTouch(RangeSeekBar rangeSeekBar, boolean z) {
                if (System.currentTimeMillis() - VolumeFragment.this.currtime > 2000) {
                    VolumeFragment.this.currtime = System.currentTimeMillis();
                    VolumeFragment volumeFragment = VolumeFragment.this;
                    volumeFragment.currgress = volumeFragment.mVolume.getLeftSeekBar().getProgress();
                } else {
                    VolumeFragment.this.mVolume.setProgress(VolumeFragment.this.currgress);
                }
                LogUtil.m64e("TAG", "initEvent: " + VolumeFragment.this.mVolume.getLeftSeekBar().getProgress());
            }
        });
    }
}
