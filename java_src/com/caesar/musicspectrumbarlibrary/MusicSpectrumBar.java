package com.caesar.musicspectrumbarlibrary;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class MusicSpectrumBar extends View {
    private String[] ColorStr;
    private float SpectMultiple;
    private int colorGradient;
    private int currentT;
    private float gapMultiple;
    private int[] highD;
    private OnSeekChangeListener listener;
    private float mLastXIntercept;
    private float mLastYIntercept;
    private ArrayList<SpectrumData> myCData;
    private Paint paint;
    private int poseType;
    private int roundAngle;
    private int unSelectColor;
    private int viewAllHigh;
    private int viewAllWidth;

    /* loaded from: classes.dex */
    public interface OnSeekChangeListener {
        void onProgressChanged(int i, boolean z);

        void onStartTrackingTouch();

        void onStopTrackingTouch(int i);
    }

    public MusicSpectrumBar(Context context) {
        this(context, null);
    }

    public MusicSpectrumBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MusicSpectrumBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLastXIntercept = 0.0f;
        this.mLastYIntercept = 0.0f;
        this.highD = new int[]{1, 3, 5, 4, 6, 2, 7, 5, 6, 3, 2, 1, 2, 1, 2, 6, 5, 4, 2, 7, 5, 2, 3, 1, 2, 1, 3, 2, 1};
        this.ColorStr = new String[]{"#0050dc", "#0650dc", "#0b51dd", "#1151dd", "#1951de", "#2052de", "#2852df", "#3153df", "#3a53e0", "#4454e0", "#4e54e1", "#5855e2", "#6255e2", "#6d56e3", "#7756e3", "#8257e4", "#8c58e5", "#9758e5", "#a159e6", "#ab59e7", "#b45ae7", "#be5ae8", "#c65be8", "#ce5be9", "#d65ce9", "#dd5cea", "#e45cea", "#e95deb", "#ee5deb"};
        this.currentT = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0651R.styleable.MusicSpectrumBar);
        this.roundAngle = obtainStyledAttributes.getInt(C0651R.styleable.MusicSpectrumBar_roundAngle, 5);
        this.poseType = obtainStyledAttributes.getInt(C0651R.styleable.MusicSpectrumBar_poseType, 0);
        this.gapMultiple = obtainStyledAttributes.getFloat(C0651R.styleable.MusicSpectrumBar_gapMultiple, 2.0f);
        this.unSelectColor = obtainStyledAttributes.getColor(C0651R.styleable.MusicSpectrumBar_unSelectColor, -1);
        this.colorGradient = obtainStyledAttributes.getInt(C0651R.styleable.MusicSpectrumBar_colorGradient, 0);
        this.SpectMultiple = obtainStyledAttributes.getFloat(C0651R.styleable.MusicSpectrumBar_SpectMultiple, 0.5f);
        obtainStyledAttributes.recycle();
        clearItems();
    }

    @Override // android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.myCData.isEmpty()) {
            if (this.paint == null) {
                Paint paint = new Paint();
                this.paint = paint;
                paint.setAntiAlias(true);
            }
            int i = 0;
            while (true) {
                int[] iArr = this.highD;
                if (i < iArr.length) {
                    int i2 = this.currentT;
                    if (i > i2) {
                        this.paint.setColor(this.unSelectColor);
                    } else if (i2 <= 0) {
                        this.paint.setColor(Color.parseColor(this.ColorStr[0]));
                    } else if (this.colorGradient == 0) {
                        int length = (iArr.length * i) / i2;
                        if (length < 0) {
                            length = 0;
                        } else if (length > iArr.length - 1) {
                            length = iArr.length - 1;
                        }
                        this.paint.setColor(Color.parseColor(this.ColorStr[length]));
                    } else {
                        this.paint.setColor(Color.parseColor(this.ColorStr[i]));
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        float left = this.myCData.get(i).getLeft();
                        float top = this.myCData.get(i).getTop();
                        float right = this.myCData.get(i).getRight();
                        float bottom = this.myCData.get(i).getBottom();
                        int i3 = this.roundAngle;
                        canvas.drawRoundRect(left, top, right, bottom, i3, i3, this.paint);
                    } else {
                        canvas.drawRect(this.myCData.get(i).getLeft(), this.myCData.get(i).getTop(), this.myCData.get(i).getRight(), this.myCData.get(i).getBottom(), this.paint);
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
        if (r0 != 2) goto L_0x0032;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        float f = 0.0f;
        if (action != 0) {
            if (action == 1) {
                if (this.listener != null) {
                    float x = motionEvent.getX();
                    if (x >= 0.0f) {
                        int i = this.viewAllWidth;
                        f = x > ((float) i) ? i : x;
                    }
                    this.listener.onStopTrackingTouch((int) ((f / this.viewAllWidth) * 100.0f));
                }
            }
            return super.onTouchEvent(motionEvent);
        }
        performClick();
        OnSeekChangeListener onSeekChangeListener = this.listener;
        if (onSeekChangeListener != null) {
            onSeekChangeListener.onStartTrackingTouch();
            float x2 = motionEvent.getX();
            if (x2 < 0.0f) {
                x2 = 0.0f;
            } else {
                int i2 = this.viewAllWidth;
                if (x2 > i2) {
                    x2 = i2;
                }
            }
            this.listener.onProgressChanged((int) ((x2 / this.viewAllWidth) * 100.0f), true);
        }
        float x3 = motionEvent.getX() / this.viewAllWidth;
        int[] iArr = this.highD;
        int length = (int) (x3 * iArr.length);
        this.currentT = length;
        if (length > iArr.length) {
            this.currentT = iArr.length;
        }
        invalidate();
        if (this.listener != null) {
            float x4 = motionEvent.getX();
            if (x4 >= 0.0f) {
                int i3 = this.viewAllWidth;
                f = x4 > ((float) i3) ? i3 : x4;
            }
            this.listener.onProgressChanged((int) ((f / this.viewAllWidth) * 100.0f), true);
        }
        return true;
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (action == 2) {
            float f = x - this.mLastXIntercept;
            float f2 = y - this.mLastYIntercept;
            if (Math.abs(f) >= 1.0f || Math.abs(f2) <= Math.abs(f) * 10.0f) {
                getParent().requestDisallowInterceptTouchEvent(true);
            } else {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        this.mLastXIntercept = x;
        this.mLastYIntercept = y;
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.viewAllWidth = View.MeasureSpec.getSize(i);
        this.viewAllHigh = View.MeasureSpec.getSize(i2);
        setItems();
    }

    private void setItems() {
        float length = this.viewAllWidth / (((this.highD.length - 1) * (this.gapMultiple + 1.0f)) + 1.0f);
        float maxIntArr = this.viewAllHigh / getMaxIntArr();
        float maxIntArr2 = (this.viewAllHigh * (1.0f - this.SpectMultiple)) / (getMaxIntArr() - 1);
        if (this.myCData.isEmpty()) {
            int i = 0;
            while (true) {
                int[] iArr = this.highD;
                if (i < iArr.length) {
                    float f = i * (this.gapMultiple + 1.0f) * length;
                    int i2 = this.poseType;
                    if (i2 == 0) {
                        float f2 = (this.viewAllHigh - (iArr[i] * maxIntArr)) / 2.0f;
                        this.myCData.add(new SpectrumData(f, f + length, f2, f2 + (iArr[i] * maxIntArr), this.ColorStr[i]));
                    } else if (i2 == 1) {
                        float f3 = this.viewAllHigh - (iArr[i] * maxIntArr);
                        this.myCData.add(new SpectrumData(f, f + length, f3, f3 + (iArr[i] * maxIntArr), this.ColorStr[i]));
                    } else if (i2 == 2) {
                        this.myCData.add(new SpectrumData(f, f + length, 0.0f, (iArr[i] * maxIntArr) + 0.0f, this.ColorStr[i]));
                    } else {
                        this.myCData.add(new SpectrumData(f, f + length, maxIntArr2 * (iArr[i] - 1), ((iArr[i] - 1) * maxIntArr2) + (this.viewAllHigh * this.SpectMultiple), this.ColorStr[i]));
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    private int getMaxIntArr() {
        int[] iArr = this.highD;
        int i = 0;
        for (int i2 : iArr) {
            if (i2 > i) {
                i = i2;
            }
        }
        return i;
    }

    private void clearItems() {
        if (this.myCData == null) {
            this.myCData = new ArrayList<>();
        }
        this.myCData.clear();
    }

    public void setDatas(int[] iArr, String[] strArr) {
        this.highD = iArr;
        this.ColorStr = strArr;
    }

    public void setCurrent(int i) {
        this.currentT = (this.highD.length * i) / 100;
        invalidate();
        OnSeekChangeListener onSeekChangeListener = this.listener;
        if (onSeekChangeListener != null) {
            onSeekChangeListener.onProgressChanged(i, false);
        }
    }

    public void setOnSeekBarChangeListener(OnSeekChangeListener onSeekChangeListener) {
        this.listener = onSeekChangeListener;
    }
}
