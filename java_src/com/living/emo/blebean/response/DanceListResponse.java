package com.living.emo.blebean.response;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class DanceListResponse {
    private DataBean data;
    private String type;

    public static DanceListResponse objectFromData(String str) {
        return (DanceListResponse) new Gson().fromJson(str, (Class<Object>) DanceListResponse.class);
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public DataBean getData() {
        return this.data;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    /* loaded from: classes.dex */
    public static class DataBean {
        private DancesBean dances;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public DancesBean getDances() {
            return this.dances;
        }

        public void setDances(DancesBean dancesBean) {
            this.dances = dancesBean;
        }

        /* loaded from: classes.dex */
        public static class DancesBean {
            private List<Integer> joris_unlocked;

            public static DancesBean objectFromData(String str) {
                return (DancesBean) new Gson().fromJson(str, (Class<Object>) DancesBean.class);
            }

            public List<Integer> getJoris_unlocked() {
                return this.joris_unlocked;
            }

            public void setJoris_unlocked(List<Integer> list) {
                this.joris_unlocked = list;
            }
        }
    }
}
