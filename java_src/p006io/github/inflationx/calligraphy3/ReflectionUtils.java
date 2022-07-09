package p006io.github.inflationx.calligraphy3;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: io.github.inflationx.calligraphy3.ReflectionUtils */
/* loaded from: classes.dex */
class ReflectionUtils {
    private static final String TAG = "ReflectionUtils";

    ReflectionUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Method getMethod(Class cls, String str) {
        Method[] methods = cls.getMethods();
        for (Method method : methods) {
            if (method.getName().equals(str)) {
                method.setAccessible(true);
                return method;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void invokeMethod(Object obj, Method method, Object... objArr) {
        if (method != null) {
            try {
                method.invoke(obj, objArr);
            } catch (IllegalAccessException e) {
                Log.d(TAG, "Can't access method using reflection", e);
            } catch (InvocationTargetException e2) {
                Log.d(TAG, "Can't invoke method using reflection", e2);
            }
        }
    }
}
