package com.living.emo.view;

import android.app.Activity;
/* loaded from: classes.dex */
public class WaitScanView {
    private static RescanPopWindow sRescanPopWindow;

    public static void show(Activity activity) {
        if (sRescanPopWindow == null) {
            sRescanPopWindow = new RescanPopWindow();
        }
        sRescanPopWindow.showAsDropDown(activity.getWindow().getDecorView());
    }

    public static void dismiss() {
        RescanPopWindow rescanPopWindow = sRescanPopWindow;
        if (rescanPopWindow != null) {
            rescanPopWindow.dismiss();
            sRescanPopWindow = null;
        }
    }
}
