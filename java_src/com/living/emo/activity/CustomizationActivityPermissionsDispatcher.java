package com.living.emo.activity;

import androidx.core.app.ActivityCompat;
import permissions.dispatcher.PermissionUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class CustomizationActivityPermissionsDispatcher {
    private static final String[] PERMISSION_PHOTOPERMISSIONCHECK = {"android.permission.WRITE_EXTERNAL_STORAGE"};
    private static final int REQUEST_PHOTOPERMISSIONCHECK = 0;

    private CustomizationActivityPermissionsDispatcher() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void photoPermissionCheckWithPermissionCheck(CustomizationActivity customizationActivity) {
        String[] strArr = PERMISSION_PHOTOPERMISSIONCHECK;
        if (PermissionUtils.hasSelfPermissions(customizationActivity, strArr)) {
            customizationActivity.photoPermissionCheck();
        } else {
            ActivityCompat.requestPermissions(customizationActivity, strArr, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onRequestPermissionsResult(CustomizationActivity customizationActivity, int i, int[] iArr) {
        if (i == 0) {
            if (PermissionUtils.verifyPermissions(iArr)) {
                customizationActivity.photoPermissionCheck();
            } else {
                customizationActivity.showDeniedForCamera();
            }
        }
    }
}
