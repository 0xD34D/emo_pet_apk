package p005cn.bingoogolapple.badgeview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.TypedValue;
/* renamed from: cn.bingoogolapple.badgeview.BGABadgeViewUtil */
/* loaded from: classes.dex */
public class BGABadgeViewUtil {
    private BGABadgeViewUtil() {
    }

    public static int dp2px(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static int sp2px(Context context, float f) {
        return (int) TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }

    public static Bitmap createBitmapSafely(BGADragBadgeView bGADragBadgeView, Rect rect, int i) {
        try {
            bGADragBadgeView.setDrawingCacheEnabled(true);
            Bitmap drawingCache = bGADragBadgeView.getDrawingCache();
            int i2 = 0;
            int i3 = rect.left < 0 ? 0 : rect.left;
            if (rect.top >= 0) {
                i2 = rect.top;
            }
            return Bitmap.createBitmap(drawingCache, i3, i2, rect.width(), rect.height());
        } catch (OutOfMemoryError unused) {
            if (i <= 0) {
                return null;
            }
            System.gc();
            return createBitmapSafely(bGADragBadgeView, rect, i - 1);
        }
    }

    public static float getDistanceBetween2Points(PointF pointF, PointF pointF2) {
        return (float) Math.sqrt(Math.pow(pointF.y - pointF2.y, 2.0d) + Math.pow(pointF.x - pointF2.x, 2.0d));
    }

    public static PointF getMiddlePoint(PointF pointF, PointF pointF2) {
        return new PointF((pointF.x + pointF2.x) / 2.0f, (pointF.y + pointF2.y) / 2.0f);
    }

    public static PointF getPointByPercent(PointF pointF, PointF pointF2, float f) {
        return new PointF(evaluate(f, Float.valueOf(pointF.x), Float.valueOf(pointF2.x)).floatValue(), evaluate(f, Float.valueOf(pointF.y), Float.valueOf(pointF2.y)).floatValue());
    }

    public static Float evaluate(float f, Number number, Number number2) {
        float floatValue = number.floatValue();
        return Float.valueOf(floatValue + (f * (number2.floatValue() - floatValue)));
    }

    public static PointF[] getIntersectionPoints(PointF pointF, float f, Double d) {
        float f2;
        PointF[] pointFArr = new PointF[2];
        if (d != null) {
            double atan = (float) Math.atan(d.doubleValue());
            double d2 = f;
            f = (float) (Math.sin(atan) * d2);
            f2 = (float) (Math.cos(atan) * d2);
        } else {
            f2 = 0.0f;
        }
        pointFArr[0] = new PointF(pointF.x + f, pointF.y - f2);
        pointFArr[1] = new PointF(pointF.x - f, pointF.y + f2);
        return pointFArr;
    }
}
