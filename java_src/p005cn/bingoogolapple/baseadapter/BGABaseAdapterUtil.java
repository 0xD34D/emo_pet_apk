package p005cn.bingoogolapple.baseadapter;

import android.app.Application;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import java.util.List;
/* renamed from: cn.bingoogolapple.baseadapter.BGABaseAdapterUtil */
/* loaded from: classes.dex */
public class BGABaseAdapterUtil {
    private static final Application sApp;

    static {
        Throwable th;
        Exception e;
        Application application;
        Application application2 = null;
        try {
            application = (Application) Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", new Class[0]).invoke(null, new Object[0]);
            if (application == null) {
                try {
                    try {
                        throw new IllegalStateException("Static initialization of Applications must be on main thread.");
                    } catch (Exception e2) {
                        e = e2;
                        Log.e(BGABaseAdapterUtil.class.getSimpleName(), "Failed to get current application from AppGlobals." + e.getMessage());
                        try {
                            application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
                        } catch (Exception unused) {
                            Log.e(BGABaseAdapterUtil.class.getSimpleName(), "Failed to get current application from ActivityThread." + e.getMessage());
                        }
                        sApp = application;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    application2 = application;
                    sApp = application2;
                    throw th;
                }
            }
        } catch (Exception e3) {
            e = e3;
            application = null;
        } catch (Throwable th3) {
            th = th3;
            sApp = application2;
            throw th;
        }
        sApp = application;
    }

    private BGABaseAdapterUtil() {
    }

    public static Application getApp() {
        return sApp;
    }

    public static int dp2px(float f) {
        return (int) TypedValue.applyDimension(1, f, getApp().getResources().getDisplayMetrics());
    }

    public static int sp2px(float f) {
        return (int) TypedValue.applyDimension(2, f, getApp().getResources().getDisplayMetrics());
    }

    public static int getDimensionPixelOffset(int i) {
        return getApp().getResources().getDimensionPixelOffset(i);
    }

    public static int getColor(int i) {
        return getApp().getResources().getColor(i);
    }

    public static Drawable rotateBitmap(Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.setRotate(90.0f, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        matrix.postTranslate(bitmap.getHeight() - fArr[2], 0.0f - fArr[5]);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), Bitmap.Config.ARGB_8888);
        new Canvas(createBitmap).drawBitmap(bitmap, matrix, new Paint());
        return new BitmapDrawable((Resources) null, createBitmap);
    }

    public static boolean isListNotEmpty(List list) {
        return list != null && !list.isEmpty();
    }
}
