package p005cn.bingoogolapple.badgeview;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.Random;
/* renamed from: cn.bingoogolapple.badgeview.BGAExplosionAnimator */
/* loaded from: classes.dex */
public class BGAExplosionAnimator extends ValueAnimator {
    public static final int ANIM_DURATION = 300;
    private static final Interpolator DEFAULT_INTERPOLATOR = new AccelerateInterpolator(0.6f);
    private static final float END_VALUE = 1.4f;
    private static final int REFRESH_RATIO = 3;

    /* renamed from: V */
    private static float f76V;

    /* renamed from: W */
    private static float f77W;

    /* renamed from: X */
    private static float f78X;

    /* renamed from: Y */
    private static float f79Y;
    private BGADragBadgeView mDragBadgeView;
    private Rect mInvalidateRect;
    private Paint mPaint = new Paint();
    private Particle[] mParticles = new Particle[225];
    private Rect mRect;

    public BGAExplosionAnimator(BGADragBadgeView bGADragBadgeView, Rect rect, Bitmap bitmap) {
        setFloatValues(0.0f, END_VALUE);
        setDuration(300L);
        setInterpolator(DEFAULT_INTERPOLATOR);
        f78X = BGABadgeViewUtil.dp2px(bGADragBadgeView.getContext(), 5.0f);
        f79Y = BGABadgeViewUtil.dp2px(bGADragBadgeView.getContext(), 20.0f);
        f76V = BGABadgeViewUtil.dp2px(bGADragBadgeView.getContext(), 2.0f);
        f77W = BGABadgeViewUtil.dp2px(bGADragBadgeView.getContext(), 1.0f);
        this.mDragBadgeView = bGADragBadgeView;
        this.mRect = rect;
        this.mInvalidateRect = new Rect(this.mRect.left - (this.mRect.width() * 3), this.mRect.top - (this.mRect.height() * 3), this.mRect.right + (this.mRect.width() * 3), this.mRect.bottom + (this.mRect.height() * 3));
        Random random = new Random(System.currentTimeMillis());
        int width = bitmap.getWidth() / 17;
        int height = bitmap.getHeight() / 17;
        for (int i = 0; i < 15; i++) {
            int i2 = 0;
            while (i2 < 15) {
                int i3 = (i * 15) + i2;
                i2++;
                this.mParticles[i3] = generateParticle(bitmap.getPixel(i2 * width, (i + 1) * height), random);
            }
        }
    }

    private Particle generateParticle(int i, Random random) {
        float f;
        float f2;
        float f3;
        Particle particle = new Particle();
        particle.color = i;
        particle.radius = f76V;
        if (random.nextFloat() < 0.2f) {
            float f4 = f76V;
            particle.baseRadius = f4 + ((f78X - f4) * random.nextFloat());
        } else {
            float f5 = f77W;
            particle.baseRadius = f5 + ((f76V - f5) * random.nextFloat());
        }
        float nextFloat = random.nextFloat();
        particle.top = this.mRect.height() * ((random.nextFloat() * 0.18f) + 0.2f);
        int i2 = (nextFloat > 0.2f ? 1 : (nextFloat == 0.2f ? 0 : -1));
        particle.top = i2 < 0 ? particle.top : particle.top + (particle.top * 0.2f * random.nextFloat());
        particle.bottom = this.mRect.height() * (random.nextFloat() - 0.5f) * 1.8f;
        if (i2 < 0) {
            f = particle.bottom;
        } else {
            if (nextFloat < 0.8f) {
                f2 = particle.bottom;
                f3 = 0.6f;
            } else {
                f2 = particle.bottom;
                f3 = 0.3f;
            }
            f = f2 * f3;
        }
        particle.bottom = f;
        particle.mag = (particle.top * 4.0f) / particle.bottom;
        particle.neg = (-particle.mag) / particle.bottom;
        particle.baseCx = this.mRect.centerX() + (f79Y * (random.nextFloat() - 0.5f)) + (this.mRect.width() / 2);
        particle.f80cx = particle.baseCx;
        float centerY = this.mRect.centerY() + (f79Y * (random.nextFloat() - 0.5f));
        particle.baseCy = centerY;
        particle.f81cy = centerY;
        particle.life = random.nextFloat() * 0.14f;
        particle.overflow = random.nextFloat() * 0.4f;
        particle.alpha = 1.0f;
        return particle;
    }

    public void draw(Canvas canvas) {
        if (isStarted()) {
            Particle[] particleArr = this.mParticles;
            for (Particle particle : particleArr) {
                particle.advance(((Float) getAnimatedValue()).floatValue());
                if (particle.alpha > 0.0f) {
                    this.mPaint.setColor(particle.color);
                    this.mPaint.setAlpha((int) (Color.alpha(particle.color) * particle.alpha));
                    canvas.drawCircle(particle.f80cx, particle.f81cy, particle.radius, this.mPaint);
                }
            }
            postInvalidate();
        }
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void start() {
        super.start();
        postInvalidate();
    }

    private void postInvalidate() {
        this.mDragBadgeView.postInvalidate(this.mInvalidateRect.left, this.mInvalidateRect.top, this.mInvalidateRect.right, this.mInvalidateRect.bottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cn.bingoogolapple.badgeview.BGAExplosionAnimator$Particle */
    /* loaded from: classes.dex */
    public class Particle {
        float alpha;
        float baseCx;
        float baseCy;
        float baseRadius;
        float bottom;
        int color;

        /* renamed from: cx */
        float f80cx;

        /* renamed from: cy */
        float f81cy;
        float life;
        float mag;
        float neg;
        float overflow;
        float radius;
        float top;

        private Particle() {
        }

        public void advance(float f) {
            float f2 = f / BGAExplosionAnimator.END_VALUE;
            float f3 = this.life;
            float f4 = 0.0f;
            if (f2 >= f3) {
                float f5 = this.overflow;
                if (f2 <= 1.0f - f5) {
                    float f6 = (f2 - f3) / ((1.0f - f3) - f5);
                    float f7 = BGAExplosionAnimator.END_VALUE * f6;
                    if (f6 >= 0.7f) {
                        f4 = (f6 - 0.7f) / 0.3f;
                    }
                    this.alpha = 1.0f - f4;
                    float f8 = this.bottom * f7;
                    this.f80cx = this.baseCx + f8;
                    this.f81cy = ((float) (this.baseCy - (this.neg * Math.pow(f8, 2.0d)))) - (f8 * this.mag);
                    this.radius = BGAExplosionAnimator.f76V + ((this.baseRadius - BGAExplosionAnimator.f76V) * f7);
                    return;
                }
            }
            this.alpha = 0.0f;
        }
    }
}
