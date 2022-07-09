package com.living.emo.activity;

import android.view.View;
import android.widget.ImageView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class UtilitiesActivity_ViewBinding implements Unbinder {
    private UtilitiesActivity target;
    private View view7f090348;
    private View view7f090349;
    private View view7f09034b;
    private View view7f09034c;
    private View view7f09034d;
    private View view7f09034e;
    private View view7f09034f;

    public UtilitiesActivity_ViewBinding(UtilitiesActivity utilitiesActivity) {
        this(utilitiesActivity, utilitiesActivity.getWindow().getDecorView());
    }

    public UtilitiesActivity_ViewBinding(final UtilitiesActivity utilitiesActivity, View view) {
        this.target = utilitiesActivity;
        utilitiesActivity.mTopTxtIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.top_txt_iv, "field 'mTopTxtIv'", ImageView.class);
        utilitiesActivity.mMusicIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.home_music_iv, "field 'mMusicIv'", ImageView.class);
        utilitiesActivity.mHomeSet = (ImageView) Utils.findRequiredViewAsType(view, R.id.home_set_iv, "field 'mHomeSet'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.util_music, "method 'goMusic'");
        this.view7f09034d = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.living.emo.activity.UtilitiesActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                utilitiesActivity.goMusic();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.util_alert, "method 'goAlert'");
        this.view7f090348 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.living.emo.activity.UtilitiesActivity_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                utilitiesActivity.goAlert();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.util_photo, "method 'goPhoto'");
        this.view7f09034e = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: com.living.emo.activity.UtilitiesActivity_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                utilitiesActivity.goPhoto();
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.util_weather, "method 'goWeather'");
        this.view7f09034f = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: com.living.emo.activity.UtilitiesActivity_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                utilitiesActivity.goWeather();
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.util_light, "method 'goLight'");
        this.view7f09034b = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: com.living.emo.activity.UtilitiesActivity_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                utilitiesActivity.goLight();
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.util_more, "method 'goMore'");
        this.view7f09034c = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() { // from class: com.living.emo.activity.UtilitiesActivity_ViewBinding.6
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                utilitiesActivity.goMore();
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, R.id.util_back, "method 'goBack'");
        this.view7f090349 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() { // from class: com.living.emo.activity.UtilitiesActivity_ViewBinding.7
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                utilitiesActivity.goBack();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        UtilitiesActivity utilitiesActivity = this.target;
        if (utilitiesActivity != null) {
            this.target = null;
            utilitiesActivity.mTopTxtIv = null;
            utilitiesActivity.mMusicIv = null;
            utilitiesActivity.mHomeSet = null;
            this.view7f09034d.setOnClickListener(null);
            this.view7f09034d = null;
            this.view7f090348.setOnClickListener(null);
            this.view7f090348 = null;
            this.view7f09034e.setOnClickListener(null);
            this.view7f09034e = null;
            this.view7f09034f.setOnClickListener(null);
            this.view7f09034f = null;
            this.view7f09034b.setOnClickListener(null);
            this.view7f09034b = null;
            this.view7f09034c.setOnClickListener(null);
            this.view7f09034c = null;
            this.view7f090349.setOnClickListener(null);
            this.view7f090349 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
