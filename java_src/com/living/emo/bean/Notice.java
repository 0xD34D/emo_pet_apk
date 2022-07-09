package com.living.emo.bean;

import com.google.gson.Gson;
import java.util.List;
/* loaded from: classes.dex */
public class Notice {
    private List<DataBean> data;
    private int errcode = 0;
    private String errmsg = "";
    private int version;

    public int getErrcode() {
        return this.errcode;
    }

    public void setErrcode(int i) {
        this.errcode = i;
    }

    public String getErrmsg() {
        return this.errmsg;
    }

    public void setErrmsg(String str) {
        this.errmsg = str;
    }

    public static Notice objectFromData(String str) {
        return (Notice) new Gson().fromJson(str, (Class<Object>) Notice.class);
    }

    public int getVersion() {
        return this.version;
    }

    public void setVersion(int i) {
        this.version = i;
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public void setData(List<DataBean> list) {
        this.data = list;
    }

    /* loaded from: classes.dex */
    public static class DataBean {
        private List<ArticleBean> article;
        private String category;
        private int category_id;
        private boolean hasnew;

        public static DataBean objectFromData(String str) {
            return (DataBean) new Gson().fromJson(str, (Class<Object>) DataBean.class);
        }

        public String getCategory() {
            return this.category;
        }

        public void setCategory(String str) {
            this.category = str;
        }

        public int getCategory_id() {
            return this.category_id;
        }

        public void setCategory_id(int i) {
            this.category_id = i;
        }

        public boolean isHasnew() {
            return this.hasnew;
        }

        public void setHasnew(boolean z) {
            this.hasnew = z;
        }

        public List<ArticleBean> getArticle() {
            return this.article;
        }

        public void setArticle(List<ArticleBean> list) {
            this.article = list;
        }

        /* loaded from: classes.dex */
        public static class ArticleBean {
            private String content;
            private String created_at;

            /* renamed from: id */
            private int f956id;
            private boolean isnew;
            private String sub_title;
            private String title;

            public static ArticleBean objectFromData(String str) {
                return (ArticleBean) new Gson().fromJson(str, (Class<Object>) ArticleBean.class);
            }

            public int getId() {
                return this.f956id;
            }

            public void setId(int i) {
                this.f956id = i;
            }

            public String getTitle() {
                return this.title;
            }

            public void setTitle(String str) {
                this.title = str;
            }

            public String getSub_title() {
                return this.sub_title;
            }

            public void setSub_title(String str) {
                this.sub_title = str;
            }

            public boolean isIsnew() {
                return this.isnew;
            }

            public void setIsnew(boolean z) {
                this.isnew = z;
            }

            public String getCreated_at() {
                return this.created_at;
            }

            public void setCreated_at(String str) {
                this.created_at = str;
            }

            public String getContent() {
                return this.content;
            }

            public void setContent(String str) {
                this.content = str;
            }
        }
    }
}
