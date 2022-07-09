package p006io.github.inflationx.viewpump.internal;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: -ReflectionUtils.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u00000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003*\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0000\u001a/\u0010\u0006\u001a\u00020\u0007*\u0004\u0018\u00010\u00032\u0006\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\t0\u000b\"\u00020\tH\u0000¢\u0006\u0002\u0010\f\u001a\u001c\u0010\r\u001a\u00020\u0007*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m35d2 = {"TAG", "", "getAccessibleMethod", "Ljava/lang/reflect/Method;", "Ljava/lang/Class;", "methodName", "invokeMethod", "", "target", "", "args", "", "(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V", "setValueQuietly", "Ljava/lang/reflect/Field;", "obj", "value", "viewpump_release"}, m34k = 2, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.internal.-ReflectionUtils  reason: invalid class name */
/* loaded from: classes.dex */
public final class ReflectionUtils {
    private static final String TAG = "ReflectionUtils";

    public static final void setValueQuietly(Field receiver$0, Object obj, Object value) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        Intrinsics.checkParameterIsNotNull(value, "value");
        try {
            receiver$0.set(obj, value);
        } catch (IllegalAccessException unused) {
        }
    }

    public static final Method getAccessibleMethod(Class<?> receiver$0, String methodName) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(methodName, "methodName");
        Method[] methods = receiver$0.getMethods();
        for (Method method : methods) {
            Intrinsics.checkExpressionValueIsNotNull(method, "method");
            if (Intrinsics.areEqual(method.getName(), methodName)) {
                method.setAccessible(true);
                return method;
            }
        }
        return null;
    }

    public static final void invokeMethod(Method method, Object target, Object... args) {
        Intrinsics.checkParameterIsNotNull(target, "target");
        Intrinsics.checkParameterIsNotNull(args, "args");
        if (method != null) {
            try {
                method.invoke(target, Arrays.copyOf(args, args.length));
            } catch (IllegalAccessException e) {
                Log.d(TAG, "Can't access method using reflection", e);
            } catch (InvocationTargetException e2) {
                Log.d(TAG, "Can't invoke method using reflection", e2);
            }
        }
    }
}
