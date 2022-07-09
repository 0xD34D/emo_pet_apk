package com.living.emo.blebean.response;

import com.google.gson.Gson;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ResultResponse {
    private DataBean data;
    private String type;

    public static ResultResponse objectFromData(String str) {
        return (ResultResponse) new Gson().fromJson(str, (Class<Object>) ResultResponse.class);
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
        private HashMap<String, String> faces;

        /* renamed from: id */
        private String f979id;
        private String name;
        private int result;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public int getResult() {
            return this.result;
        }

        public void setResult(int i) {
            this.result = i;
        }

        public String getId() {
            return this.f979id;
        }

        public void setId(String str) {
            this.f979id = str;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String str) {
            this.name = str;
        }

        public HashMap<String, String> getFaces() {
            return this.faces;
        }

        public void setFaces(HashMap<String, String> hashMap) {
            this.faces = hashMap;
        }
    }
}
