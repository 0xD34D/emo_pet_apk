package p006io.github.inflationx.viewpump;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import p006io.github.inflationx.viewpump.internal.ViewPumpActivityFactory;
import p006io.github.inflationx.viewpump.internal.ViewPumpLayoutInflater;
/* compiled from: ViewPumpContextWrapper.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0010"}, m35d2 = {"Lio/github/inflationx/viewpump/ViewPumpContextWrapper;", "Landroid/content/ContextWrapper;", "base", "Landroid/content/Context;", "(Landroid/content/Context;)V", "inflater", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;", "getInflater", "()Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;", "inflater$delegate", "Lkotlin/Lazy;", "getSystemService", "", "name", "", "Companion", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.ViewPumpContextWrapper */
/* loaded from: classes.dex */
public final class ViewPumpContextWrapper extends ContextWrapper {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewPumpContextWrapper.class), "inflater", "getInflater()Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;"))};
    public static final Companion Companion = new Companion(null);
    private final Lazy inflater$delegate;

    private final ViewPumpLayoutInflater getInflater() {
        Lazy lazy = this.inflater$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ViewPumpLayoutInflater) lazy.getValue();
    }

    @JvmStatic
    public static final View onActivityCreateView(Activity activity, View view, View view2, String str, Context context, AttributeSet attributeSet) {
        return Companion.onActivityCreateView(activity, view, view2, str, context, attributeSet);
    }

    @JvmStatic
    public static final ContextWrapper wrap(Context context) {
        return Companion.wrap(context);
    }

    private ViewPumpContextWrapper(Context context) {
        super(context);
        this.inflater$delegate = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new ViewPumpContextWrapper$inflater$2(this));
    }

    public /* synthetic */ ViewPumpContextWrapper(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        if (Intrinsics.areEqual("layout_inflater", name)) {
            return getInflater();
        }
        return super.getSystemService(name);
    }

    /* compiled from: ViewPumpContextWrapper.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007J>\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fH\u0007¨\u0006\u0015"}, m35d2 = {"Lio/github/inflationx/viewpump/ViewPumpContextWrapper$Companion;", "", "()V", "get", "Lio/github/inflationx/viewpump/internal/-ViewPumpActivityFactory;", "activity", "Landroid/app/Activity;", "get$viewpump_release", "onActivityCreateView", "Landroid/view/View;", "parent", "view", "name", "", "context", "Landroid/content/Context;", "attr", "Landroid/util/AttributeSet;", "wrap", "Landroid/content/ContextWrapper;", "base", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.ViewPumpContextWrapper$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final ContextWrapper wrap(Context base) {
            Intrinsics.checkParameterIsNotNull(base, "base");
            return new ViewPumpContextWrapper(base, null);
        }

        @JvmStatic
        public final View onActivityCreateView(Activity activity, View view, View view2, String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            Intrinsics.checkParameterIsNotNull(view2, "view");
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return get$viewpump_release(activity).onActivityCreateView(view, view2, name, context, attributeSet);
        }

        @JvmStatic
        public final ViewPumpActivityFactory get$viewpump_release(Activity activity) {
            Intrinsics.checkParameterIsNotNull(activity, "activity");
            if (activity.getLayoutInflater() instanceof ViewPumpLayoutInflater) {
                LayoutInflater layoutInflater = activity.getLayoutInflater();
                if (layoutInflater != null) {
                    return (ViewPumpActivityFactory) layoutInflater;
                }
                throw new TypeCastException("null cannot be cast to non-null type io.github.inflationx.viewpump.internal.`-ViewPumpActivityFactory`");
            }
            throw new RuntimeException("This activity does not wrap the Base Context! See ViewPumpContextWrapper.wrap(Context)");
        }
    }
}
