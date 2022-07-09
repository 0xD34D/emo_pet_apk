package com.living.emo.view;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.ImageButton;
import com.living.emo.view.PhotoDialogView;
import com.livingai.emopet.R;
/* loaded from: classes.dex */
public class PhotoDialogView {

    /* loaded from: classes.dex */
    public interface OnClickListener {
        void onCancel(Dialog dialog);

        void onOk(Dialog dialog);
    }

    public static void showDialog(Context context, int i, int i2, int i3, final OnClickListener onClickListener) {
        final Dialog dialog = new Dialog(context, R.style.CustomDialogTheme);
        View inflate = View.inflate(context, i, null);
        ((ImageButton) inflate.findViewById(i2)).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$PhotoDialogView$sv7lqRWRS_ZLcxunHsB-VGhw-Hg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhotoDialogView.lambda$showDialog$0(dialog, onClickListener, view);
            }
        });
        ((ImageButton) inflate.findViewById(i3)).setOnClickListener(new View.OnClickListener() { // from class: com.living.emo.view.-$$Lambda$PhotoDialogView$KueFXZfIdYlhOFVTFWVASDRmBLg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhotoDialogView.OnClickListener.this.onOk(dialog);
            }
        });
        dialog.setContentView(inflate);
        dialog.setCanceledOnTouchOutside(false);
        dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$showDialog$0(Dialog dialog, OnClickListener onClickListener, View view) {
        dialog.dismiss();
        onClickListener.onCancel(dialog);
    }
}
