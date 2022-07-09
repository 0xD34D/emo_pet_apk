package com.living.emo.bean.domain;

import com.google.gson.Gson;
/* loaded from: classes.dex */
public class Article {
    private int code;
    private String content;
    private int errcode = -1;
    private String errmsg;

    /* renamed from: id */
    private int f960id;
    private String message;

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

    public static Article objectFromData(String str) {
        return (Article) new Gson().fromJson(str, (Class<Object>) Article.class);
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public int getId() {
        return this.f960id;
    }

    public void setId(int i) {
        this.f960id = i;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public String toString() {
        return "Article{code=" + this.code + ", message='" + this.message + "', content='" + this.content + "'}";
    }
}
