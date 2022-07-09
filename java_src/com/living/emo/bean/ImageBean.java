package com.living.emo.bean;
/* loaded from: classes.dex */
public class ImageBean {
    private static ImageBean INSTANCE;
    byte[] imageRaw;
    String name = "image.jpeg";

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public byte[] getImageRaw() {
        return this.imageRaw;
    }

    public void setImageRaw(byte[] bArr) {
        this.imageRaw = bArr;
    }

    private ImageBean() {
    }

    public static synchronized ImageBean getInstance() {
        ImageBean imageBean;
        synchronized (ImageBean.class) {
            if (INSTANCE == null) {
                INSTANCE = new ImageBean();
            }
            imageBean = INSTANCE;
        }
        return imageBean;
    }
}
