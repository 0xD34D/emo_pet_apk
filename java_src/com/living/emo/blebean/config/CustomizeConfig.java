package com.living.emo.blebean.config;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class CustomizeConfig {
    private DataBean data;
    private String type;

    public static CustomizeConfig objectFromData(String str) {
        return (CustomizeConfig) new Gson().fromJson(str, (Class<Object>) CustomizeConfig.class);
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
        private List<Integer> color;
        private ImageBean image;

        /* renamed from: op */
        private String f964op;
        private ServerBean server;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getOp() {
            return this.f964op;
        }

        public void setOp(String str) {
            this.f964op = str;
        }

        public List<Integer> getColor() {
            return this.color;
        }

        public void setColor(List<Integer> list) {
            this.color = list;
        }

        public ServerBean getServer() {
            return this.server;
        }

        public void setServer(ServerBean serverBean) {
            this.server = serverBean;
        }

        public ImageBean getImage() {
            return this.image;
        }

        public void setImage(ImageBean imageBean) {
            this.image = imageBean;
        }

        /* loaded from: classes.dex */
        public static class ServerBean {

            /* renamed from: ip */
            private String f965ip;
            private int port;

            public static ServerBean objectFromData(String str) {
                return (ServerBean) new Gson().fromJson(str, (Class<Object>) ServerBean.class);
            }

            public String getIp() {
                return this.f965ip;
            }

            public void setIp(String str) {
                this.f965ip = str;
            }

            public int getPort() {
                return this.port;
            }

            public void setPort(int i) {
                this.port = i;
            }
        }

        /* loaded from: classes.dex */
        public static class ImageBean {
            private int length;
            private String name;
            private int tran;

            public static ImageBean objectFromData(String str) {
                return (ImageBean) new Gson().fromJson(str, (Class<Object>) ImageBean.class);
            }

            public String getName() {
                return this.name;
            }

            public void setName(String str) {
                this.name = str;
            }

            public int getLength() {
                return this.length;
            }

            public void setLength(int i) {
                this.length = i;
            }

            public int getTran() {
                return this.tran;
            }

            public void setTran(int i) {
                this.tran = i;
            }
        }
    }
}
