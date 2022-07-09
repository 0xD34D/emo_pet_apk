package com.living.emo.blebean.parse;

import com.living.emo.blebean.response.AchievementsResponse;
import java.util.List;
/* loaded from: classes.dex */
public class BleAchievementsResponseParse {

    /* loaded from: classes.dex */
    public interface Callback {
        void response(List<Integer> list);
    }

    public static void achievements(String str, Callback callback) {
        AchievementsResponse objectFromData = AchievementsResponse.objectFromData(str);
        if (objectFromData != null && objectFromData.getData() != null && objectFromData.getData().getAchievements() != null) {
            AchievementsResponse.DataBean.AchievementsBean achievements = objectFromData.getData().getAchievements();
            if (achievements.getUnlocked() != null) {
                callback.response(achievements.getUnlocked());
            }
        }
    }
}
