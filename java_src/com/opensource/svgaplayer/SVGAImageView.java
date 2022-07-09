package com.opensource.svgaplayer;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.media.SoundPool;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.entities.SVGAAudioEntity;
import com.opensource.svgaplayer.utils.SVGARange;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SVGAImageView.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001HB\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nB+\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\fJ\b\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020.2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\b\u00100\u001a\u00020.H\u0014J\u0012\u00101\u001a\u00020\u00162\b\u00102\u001a\u0004\u0018\u000103H\u0017J\u0006\u00104\u001a\u00020.J\u000e\u00105\u001a\u00020.2\u0006\u00106\u001a\u00020*J\b\u00107\u001a\u00020.H\u0002J\u0010\u00108\u001a\u00020.2\b\u00109\u001a\u0004\u0018\u00010,J\u001a\u00108\u001a\u00020.2\b\u00109\u001a\u0004\u0018\u00010,2\b\u0010:\u001a\u0004\u0018\u00010;J\u0006\u0010<\u001a\u00020.J\u001a\u0010<\u001a\u00020.2\b\u0010=\u001a\u0004\u0018\u00010>2\b\b\u0002\u0010?\u001a\u00020\u0016J\u0016\u0010@\u001a\u00020.2\u0006\u0010A\u001a\u00020\t2\u0006\u0010B\u001a\u00020\u0016J\u0016\u0010C\u001a\u00020.2\u0006\u0010D\u001a\u00020E2\u0006\u0010B\u001a\u00020\u0016J\u0006\u0010F\u001a\u00020.J\u000e\u0010F\u001a\u00020.2\u0006\u0010G\u001a\u00020\u0016R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\"\u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0016@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0018\"\u0004\b#\u0010\u001aR\u001a\u0010$\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006I"}, m35d2 = {"Lcom/opensource/svgaplayer/SVGAImageView;", "Landroid/widget/ImageView;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "animator", "Landroid/animation/ValueAnimator;", "callback", "Lcom/opensource/svgaplayer/SVGACallback;", "getCallback", "()Lcom/opensource/svgaplayer/SVGACallback;", "setCallback", "(Lcom/opensource/svgaplayer/SVGACallback;)V", "clearsAfterStop", "", "getClearsAfterStop", "()Z", "setClearsAfterStop", "(Z)V", "fillMode", "Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "getFillMode", "()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "setFillMode", "(Lcom/opensource/svgaplayer/SVGAImageView$FillMode;)V", "<set-?>", "isAnimating", "setAnimating", "loops", "getLoops", "()I", "setLoops", "(I)V", "mItemClickAreaListener", "Lcom/opensource/svgaplayer/SVGAClickAreaListener;", "mVideoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "clearAudio", "", "loadAttrs", "onDetachedFromWindow", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "pauseAnimation", "setOnAnimKeyClickListener", "clickListener", "setSoftwareLayerType", "setVideoItem", "videoItem", "dynamicItem", "Lcom/opensource/svgaplayer/SVGADynamicEntity;", "startAnimation", "range", "Lcom/opensource/svgaplayer/utils/SVGARange;", "reverse", "stepToFrame", "frame", "andPlay", "stepToPercentage", "percentage", "", "stopAnimation", "clear", "FillMode", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public class SVGAImageView extends ImageView {
    private HashMap _$_findViewCache;
    private ValueAnimator animator;
    private SVGACallback callback;
    private boolean clearsAfterStop = true;
    private FillMode fillMode = FillMode.Forward;
    private boolean isAnimating;
    private int loops;
    private SVGAClickAreaListener mItemClickAreaListener;
    private SVGAVideoEntity mVideoItem;

    /* compiled from: SVGAImageView.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m35d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "", "(Ljava/lang/String;I)V", "Backward", "Forward", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public enum FillMode {
        Backward,
        Forward
    }

    public void _$_clearFindViewByIdCache() {
        HashMap hashMap = this._$_findViewCache;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View findViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), findViewById);
        return findViewById;
    }

    private final void setAnimating(boolean z) {
        this.isAnimating = z;
    }

    public final boolean isAnimating() {
        return this.isAnimating;
    }

    public final int getLoops() {
        return this.loops;
    }

    public final void setLoops(int i) {
        this.loops = i;
    }

    public final boolean getClearsAfterStop() {
        return this.clearsAfterStop;
    }

    public final void setClearsAfterStop(boolean z) {
        this.clearsAfterStop = z;
    }

    public final FillMode getFillMode() {
        return this.fillMode;
    }

    public final void setFillMode(FillMode fillMode) {
        Intrinsics.checkParameterIsNotNull(fillMode, "<set-?>");
        this.fillMode = fillMode;
    }

    public final SVGACallback getCallback() {
        return this.callback;
    }

    public final void setCallback(SVGACallback sVGACallback) {
        this.callback = sVGACallback;
    }

    public SVGAImageView(Context context) {
        super(context);
        setSoftwareLayerType();
    }

    public SVGAImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setSoftwareLayerType();
        if (attributeSet != null) {
            loadAttrs(attributeSet);
        }
    }

    public SVGAImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setSoftwareLayerType();
        if (attributeSet != null) {
            loadAttrs(attributeSet);
        }
    }

    public SVGAImageView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        setSoftwareLayerType();
        if (attributeSet != null) {
            loadAttrs(attributeSet);
        }
    }

    private final void setSoftwareLayerType() {
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearAudio();
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.animator;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
        }
        ValueAnimator valueAnimator3 = this.animator;
        if (valueAnimator3 != null) {
            valueAnimator3.removeAllUpdateListeners();
        }
    }

    private final void clearAudio() {
        List<SVGAAudioEntity> audios$library_release;
        SoundPool soundPool$library_release;
        SVGAVideoEntity sVGAVideoEntity = this.mVideoItem;
        if (!(sVGAVideoEntity == null || (audios$library_release = sVGAVideoEntity.getAudios$library_release()) == null)) {
            for (SVGAAudioEntity sVGAAudioEntity : audios$library_release) {
                Integer playID = sVGAAudioEntity.getPlayID();
                if (playID != null) {
                    int intValue = playID.intValue();
                    SVGAVideoEntity sVGAVideoEntity2 = this.mVideoItem;
                    if (!(sVGAVideoEntity2 == null || (soundPool$library_release = sVGAVideoEntity2.getSoundPool$library_release()) == null)) {
                        soundPool$library_release.stop(intValue);
                    }
                }
                sVGAAudioEntity.setPlayID(null);
            }
        }
    }

    private final void loadAttrs(AttributeSet attributeSet) {
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1612R.styleable.SVGAImageView, 0, 0);
        this.loops = obtainStyledAttributes.getInt(C1612R.styleable.SVGAImageView_loopCount, 0);
        this.clearsAfterStop = obtainStyledAttributes.getBoolean(C1612R.styleable.SVGAImageView_clearsAfterStop, true);
        boolean z = obtainStyledAttributes.getBoolean(C1612R.styleable.SVGAImageView_antiAlias, true);
        boolean z2 = obtainStyledAttributes.getBoolean(C1612R.styleable.SVGAImageView_autoPlay, true);
        String string = obtainStyledAttributes.getString(C1612R.styleable.SVGAImageView_fillMode);
        if (string != null) {
            if (Intrinsics.areEqual(string, "0")) {
                this.fillMode = FillMode.Backward;
            } else if (Intrinsics.areEqual(string, "1")) {
                this.fillMode = FillMode.Forward;
            }
        }
        String string2 = obtainStyledAttributes.getString(C1612R.styleable.SVGAImageView_source);
        if (string2 != null) {
            new Thread(new SVGAImageView$loadAttrs$$inlined$let$lambda$1(string2, new SVGAParser(getContext()), this, z, z2)).start();
        }
        obtainStyledAttributes.recycle();
    }

    public final void startAnimation() {
        startAnimation(null, false);
    }

    public static /* synthetic */ void startAnimation$default(SVGAImageView sVGAImageView, SVGARange sVGARange, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                z = false;
            }
            sVGAImageView.startAnimation(sVGARange, z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startAnimation");
    }

    public final void startAnimation(final SVGARange sVGARange, final boolean z) {
        Field declaredField;
        stopAnimation(false);
        Drawable drawable = getDrawable();
        if (!(drawable instanceof SVGADrawable)) {
            drawable = null;
        }
        final SVGADrawable sVGADrawable = (SVGADrawable) drawable;
        if (sVGADrawable != null) {
            sVGADrawable.setCleared$library_release(false);
            ImageView.ScaleType scaleType = getScaleType();
            Intrinsics.checkExpressionValueIsNotNull(scaleType, "scaleType");
            sVGADrawable.setScaleType(scaleType);
            SVGAVideoEntity videoItem = sVGADrawable.getVideoItem();
            final int max = Math.max(0, sVGARange != null ? sVGARange.getLocation() : 0);
            final int min = Math.min(videoItem.getFrames() - 1, ((sVGARange != null ? sVGARange.getLocation() : 0) + (sVGARange != null ? sVGARange.getLength() : Integer.MAX_VALUE)) - 1);
            final ValueAnimator animator = ValueAnimator.ofInt(max, min);
            double d = 1.0d;
            try {
                Class<?> cls = Class.forName("android.animation.ValueAnimator");
                if (!(cls == null || (declaredField = cls.getDeclaredField("sDurationScale")) == null)) {
                    declaredField.setAccessible(true);
                    double d2 = declaredField.getFloat(cls);
                    if (d2 == 0.0d) {
                        try {
                            declaredField.setFloat(cls, 1.0f);
                            Log.e("SVGAPlayer", "The animation duration scale has been reset to 1.0x, because you closed it on developer options.");
                        } catch (Exception unused) {
                        }
                    }
                    d = d2;
                }
            } catch (Exception unused2) {
            }
            Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
            animator.setInterpolator(new LinearInterpolator());
            animator.setDuration((long) ((((min - max) + 1) * (1000 / videoItem.getFPS())) / d));
            int i = this.loops;
            animator.setRepeatCount(i <= 0 ? 99999 : i - 1);
            animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.opensource.svgaplayer.SVGAImageView$startAnimation$$inlined$let$lambda$1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SVGADrawable sVGADrawable2 = sVGADrawable;
                    ValueAnimator animator2 = animator;
                    Intrinsics.checkExpressionValueIsNotNull(animator2, "animator");
                    Object animatedValue = animator2.getAnimatedValue();
                    if (animatedValue != null) {
                        sVGADrawable2.setCurrentFrame$library_release(((Integer) animatedValue).intValue());
                        SVGACallback callback = this.getCallback();
                        if (callback != null) {
                            callback.onStep(sVGADrawable.getCurrentFrame(), (sVGADrawable.getCurrentFrame() + 1) / sVGADrawable.getVideoItem().getFrames());
                            return;
                        }
                        return;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
                }
            });
            animator.addListener(new Animator.AnimatorListener() { // from class: com.opensource.svgaplayer.SVGAImageView$startAnimation$$inlined$let$lambda$2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator2) {
                    SVGACallback callback = this.getCallback();
                    if (callback != null) {
                        callback.onRepeat();
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    this.isAnimating = false;
                    this.stopAnimation();
                    if (!this.getClearsAfterStop()) {
                        if (this.getFillMode() == SVGAImageView.FillMode.Backward) {
                            sVGADrawable.setCurrentFrame$library_release(max);
                        } else if (this.getFillMode() == SVGAImageView.FillMode.Forward) {
                            sVGADrawable.setCurrentFrame$library_release(min);
                        }
                    }
                    SVGACallback callback = this.getCallback();
                    if (callback != null) {
                        callback.onFinished();
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator2) {
                    this.isAnimating = false;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    this.isAnimating = true;
                }
            });
            if (z) {
                animator.reverse();
            } else {
                animator.start();
            }
            this.animator = animator;
        }
    }

    public final void pauseAnimation() {
        stopAnimation(false);
        SVGACallback sVGACallback = this.callback;
        if (sVGACallback != null) {
            sVGACallback.onPause();
        }
    }

    public final void stopAnimation() {
        stopAnimation(this.clearsAfterStop);
    }

    public final void stopAnimation(boolean z) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.animator;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
        }
        ValueAnimator valueAnimator3 = this.animator;
        if (valueAnimator3 != null) {
            valueAnimator3.removeAllUpdateListeners();
        }
        Drawable drawable = getDrawable();
        if (!(drawable instanceof SVGADrawable)) {
            drawable = null;
        }
        SVGADrawable sVGADrawable = (SVGADrawable) drawable;
        if (sVGADrawable != null) {
            sVGADrawable.setCleared$library_release(z);
        }
    }

    public final void setVideoItem(SVGAVideoEntity sVGAVideoEntity) {
        setVideoItem(sVGAVideoEntity, new SVGADynamicEntity());
    }

    public final void setVideoItem(SVGAVideoEntity sVGAVideoEntity, SVGADynamicEntity sVGADynamicEntity) {
        if (sVGAVideoEntity == null) {
            setImageDrawable(null);
            return;
        }
        if (sVGADynamicEntity == null) {
            sVGADynamicEntity = new SVGADynamicEntity();
        }
        SVGADrawable sVGADrawable = new SVGADrawable(sVGAVideoEntity, sVGADynamicEntity);
        sVGADrawable.setCleared$library_release(this.clearsAfterStop);
        setImageDrawable(sVGADrawable);
        this.mVideoItem = sVGAVideoEntity;
    }

    public final void stepToFrame(int i, boolean z) {
        pauseAnimation();
        Drawable drawable = getDrawable();
        if (!(drawable instanceof SVGADrawable)) {
            drawable = null;
        }
        SVGADrawable sVGADrawable = (SVGADrawable) drawable;
        if (sVGADrawable != null) {
            sVGADrawable.setCurrentFrame$library_release(i);
            if (z) {
                startAnimation();
                ValueAnimator valueAnimator = this.animator;
                if (valueAnimator != null) {
                    valueAnimator.setCurrentPlayTime(Math.max(0.0f, Math.min(1.0f, i / sVGADrawable.getVideoItem().getFrames())) * ((float) valueAnimator.getDuration()));
                }
            }
        }
    }

    public final void stepToPercentage(double d, boolean z) {
        Drawable drawable = getDrawable();
        if (!(drawable instanceof SVGADrawable)) {
            drawable = null;
        }
        SVGADrawable sVGADrawable = (SVGADrawable) drawable;
        if (sVGADrawable != null) {
            int frames = (int) (sVGADrawable.getVideoItem().getFrames() * d);
            if (frames >= sVGADrawable.getVideoItem().getFrames() && frames > 0) {
                frames = sVGADrawable.getVideoItem().getFrames() - 1;
            }
            stepToFrame(frames, z);
        }
    }

    public final void setOnAnimKeyClickListener(SVGAClickAreaListener clickListener) {
        Intrinsics.checkParameterIsNotNull(clickListener, "clickListener");
        this.mItemClickAreaListener = clickListener;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        SVGAClickAreaListener sVGAClickAreaListener;
        if (motionEvent != null && motionEvent.getAction() == 0) {
            Drawable drawable = getDrawable();
            if (!(drawable instanceof SVGADrawable)) {
                drawable = null;
            }
            SVGADrawable sVGADrawable = (SVGADrawable) drawable;
            if (sVGADrawable == null) {
                return false;
            }
            for (Map.Entry<String, int[]> entry : sVGADrawable.getDynamicItem().getMClickMap$library_release().entrySet()) {
                String key = entry.getKey();
                int[] value = entry.getValue();
                if (motionEvent.getX() >= value[0] && motionEvent.getX() <= value[2] && motionEvent.getY() >= value[1] && motionEvent.getY() <= value[3] && (sVGAClickAreaListener = this.mItemClickAreaListener) != null) {
                    sVGAClickAreaListener.onClick(key);
                    return true;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }
}
