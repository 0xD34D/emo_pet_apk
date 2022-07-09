package com.living.emo.view;

import android.app.ProgressDialog;
import android.content.Context;
/* loaded from: classes.dex */
public class WaitDialogView {
    private static ProgressDialog sProgressDialog;

    public static void show(Context context, String str) {
        if (sProgressDialog == null) {
            sProgressDialog = new ProgressDialog(context);
        }
        sProgressDialog.setMessage(str);
        sProgressDialog.setCancelable(false);
        sProgressDialog.show();
    }

    public static void dismiss() {
        ProgressDialog progressDialog = sProgressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
            sProgressDialog = null;
        }
    }
}
