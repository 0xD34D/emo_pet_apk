package p006io.github.inflationx.viewpump.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import p006io.github.inflationx.viewpump.FallbackViewCreator;
/* compiled from: -ReflectiveFallbackViewCreator.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016¨\u0006\r"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ReflectiveFallbackViewCreator;", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "()V", "onCreateView", "Landroid/view/View;", "parent", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "Companion", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.internal.-ReflectiveFallbackViewCreator  reason: invalid class name */
/* loaded from: classes.dex */
public final class ReflectiveFallbackViewCreator implements FallbackViewCreator {
    public static final Companion Companion = new Companion(null);
    private static final Class<? extends Object>[] CONSTRUCTOR_SIGNATURE_1 = {Context.class};
    private static final Class<? extends Object>[] CONSTRUCTOR_SIGNATURE_2 = {Context.class, AttributeSet.class};

    /* compiled from: -ReflectiveFallbackViewCreator.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u001e\u0010\u0007\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\b"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ReflectiveFallbackViewCreator$Companion;", "", "()V", "CONSTRUCTOR_SIGNATURE_1", "", "Ljava/lang/Class;", "[Ljava/lang/Class;", "CONSTRUCTOR_SIGNATURE_2", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ReflectiveFallbackViewCreator$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // p006io.github.inflationx.viewpump.FallbackViewCreator
    public View onCreateView(View view, String name, Context context, AttributeSet attributeSet) {
        Object[] objArr;
        Constructor constructor;
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(context, "context");
        try {
            Class<? extends U> asSubclass = Class.forName(name).asSubclass(View.class);
            try {
                Class<? extends Object>[] clsArr = CONSTRUCTOR_SIGNATURE_2;
                constructor = asSubclass.getConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
                Intrinsics.checkExpressionValueIsNotNull(constructor, "clazz.getConstructor(*CONSTRUCTOR_SIGNATURE_2)");
                objArr = new Object[]{context, attributeSet};
            } catch (NoSuchMethodException unused) {
                Class<? extends Object>[] clsArr2 = CONSTRUCTOR_SIGNATURE_1;
                constructor = asSubclass.getConstructor((Class[]) Arrays.copyOf(clsArr2, clsArr2.length));
                Intrinsics.checkExpressionValueIsNotNull(constructor, "clazz.getConstructor(*CONSTRUCTOR_SIGNATURE_1)");
                objArr = new Context[]{context};
            }
            constructor.setAccessible(true);
            return (View) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (Exception e) {
            if (e instanceof ClassNotFoundException) {
                e.printStackTrace();
                return null;
            } else if (e instanceof NoSuchMethodException) {
                e.printStackTrace();
                return null;
            } else if (e instanceof IllegalAccessException) {
                e.printStackTrace();
                return null;
            } else if (e instanceof InstantiationException) {
                e.printStackTrace();
                return null;
            } else if (e instanceof InvocationTargetException) {
                e.printStackTrace();
                return null;
            } else {
                throw e;
            }
        }
    }
}
