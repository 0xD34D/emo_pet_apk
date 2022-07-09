package com.jaygoo.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import androidx.core.content.ContextCompat;
/* loaded from: classes.dex */
public class Utils {
    private static final String TAG = "RangeSeekBar";

    public static void print(String str) {
        Log.d(TAG, str);
    }

    public static void print(Object... objArr) {
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            sb.append(obj);
        }
        Log.d(TAG, sb.toString());
    }

    public static Bitmap drawableToBitmap(Context context, int i, int i2, int i3) {
        if (context == null || i <= 0 || i2 <= 0 || i3 == 0) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            return drawableToBitmap(i, i2, context.getResources().getDrawable(i3, null));
        }
        return drawableToBitmap(i, i2, context.getResources().getDrawable(i3));
    }

    public static Bitmap drawableToBitmap(int i, int i2, Drawable drawable) {
        Bitmap bitmap;
        try {
            if (!(drawable instanceof BitmapDrawable) || (bitmap = ((BitmapDrawable) drawable).getBitmap()) == null || bitmap.getHeight() <= 0) {
                Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
                return createBitmap;
            }
            Matrix matrix = new Matrix();
            matrix.postScale((i * 1.0f) / bitmap.getWidth(), (i2 * 1.0f) / bitmap.getHeight());
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void drawNinePath(Canvas canvas, Bitmap bitmap, Rect rect) {
        NinePatch.isNinePatchChunk(bitmap.getNinePatchChunk());
        new NinePatch(bitmap, bitmap.getNinePatchChunk(), null).draw(canvas, rect);
    }

    public static void drawBitmap(Canvas canvas, Paint paint, Bitmap bitmap, Rect rect) {
        try {
            if (NinePatch.isNinePatchChunk(bitmap.getNinePatchChunk())) {
                drawNinePath(canvas, bitmap, rect);
                return;
            }
        } catch (Exception unused) {
        }
        canvas.drawBitmap(bitmap, rect.left, rect.top, paint);
    }

    public static int dp2px(Context context, float f) {
        if (context == null || compareFloat(0.0f, f) == 0) {
            return 0;
        }
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int compareFloat(float f, float f2) {
        int round = Math.round(f * 1000000.0f);
        int round2 = Math.round(f2 * 1000000.0f);
        if (round > round2) {
            return 1;
        }
        return round < round2 ? -1 : 0;
    }

    public static int compareFloat(float f, float f2, int i) {
        if (Math.abs(f - f2) < Math.pow(0.1d, i)) {
            return 0;
        }
        return f < f2 ? -1 : 1;
    }

    public static float parseFloat(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return 0.0f;
        }
    }

    public static Rect measureText(String str, float f) {
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTextSize(f);
        paint.getTextBounds(str, 0, str.length(), rect);
        paint.reset();
        return rect;
    }

    public static boolean verifyBitmap(Bitmap bitmap) {
        return bitmap != null && !bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0;
    }

    public static int getColor(Context context, int i) {
        if (context != null) {
            return ContextCompat.getColor(context.getApplicationContext(), i);
        }
        return -1;
    }
}
