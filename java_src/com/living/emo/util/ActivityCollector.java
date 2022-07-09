package com.living.emo.util;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ActivityCollector {
    private static List<Activity> activityLists = new ArrayList();

    public static void addActivity(Activity activity) {
        activityLists.add(activity);
    }

    public static void removeActivity(Activity activity) {
        activityLists.remove(activity);
    }

    public static void finishAll() {
        LogUtil.m64e("ActivityCollector", "activity 个数" + activityLists.size());
        for (Activity activity : activityLists) {
            if (activity != null) {
                activity.finish();
            }
        }
    }
}
