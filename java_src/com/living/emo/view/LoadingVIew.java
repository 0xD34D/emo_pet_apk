package com.living.emo.view;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.livingai.emopet.R;
import com.youth.banner.util.BannerUtils;
/* loaded from: classes.dex */
public class LoadingVIew extends DialogFragment {
    private static LoadingVIew sLoadingVIew;
    private View mView;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().requestWindowFeature(1);
        this.mView = layoutInflater.inflate(R.layout.dialog_loading_view, viewGroup, false);
        setStyle(2, R.style.CustomDialog);
        return this.mView;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        WindowManager.LayoutParams attributes = getDialog().getWindow().getAttributes();
        attributes.dimAmount = 0.0f;
        attributes.width = (int) BannerUtils.dp2px(100.0f);
        attributes.gravity = 17;
        attributes.height = (int) BannerUtils.dp2px(100.0f);
        getDialog().getWindow().setAttributes(attributes);
        getDialog().getWindow().addFlags(2);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
    }

    private LoadingVIew() {
    }

    public static void showDialog(FragmentManager fragmentManager) {
        if (sLoadingVIew == null) {
            sLoadingVIew = new LoadingVIew();
        }
        sLoadingVIew.setCancelable(false);
        sLoadingVIew.show(fragmentManager, "loading");
    }

    public static void dismissDialog() {
        LoadingVIew loadingVIew = sLoadingVIew;
        if (loadingVIew != null) {
            loadingVIew.dismiss();
        }
    }
}
