package com.caesar.musicspectrumbarlibrary;
/* loaded from: classes.dex */
public class SpectrumData {
    private float bottom;
    private String color;
    private float left;
    private float right;
    private float top;

    public SpectrumData(float f, float f2, float f3, float f4, String str) {
        this.left = f;
        this.right = f2;
        this.top = f3;
        this.bottom = f4;
        this.color = str;
    }

    public float getLeft() {
        return this.left;
    }

    public void setLeft(float f) {
        this.left = f;
    }

    public float getRight() {
        return this.right;
    }

    public void setRight(float f) {
        this.right = f;
    }

    public float getTop() {
        return this.top;
    }

    public void setTop(float f) {
        this.top = f;
    }

    public float getBottom() {
        return this.bottom;
    }

    public void setBottom(float f) {
        this.bottom = f;
    }

    public String getColor() {
        return this.color;
    }

    public void setColor(String str) {
        this.color = str;
    }
}
