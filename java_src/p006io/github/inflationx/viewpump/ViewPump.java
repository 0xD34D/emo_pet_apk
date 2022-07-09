package p006io.github.inflationx.viewpump;

import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import p006io.github.inflationx.viewpump.internal.FallbackViewCreationInterceptor;
import p006io.github.inflationx.viewpump.internal.InterceptorChain;
/* compiled from: ViewPump.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00122\u00020\u0001:\u0002\u0011\u0012B-\b\u0002\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0002\u0010\tJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u0019\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\fR\u0013\u0010\u0005\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\fR\u0013\u0010\b\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\f¨\u0006\u0013"}, m35d2 = {"Lio/github/inflationx/viewpump/ViewPump;", "", "interceptors", "", "Lio/github/inflationx/viewpump/Interceptor;", "isReflection", "", "isCustomViewCreation", "isStoreLayoutResId", "(Ljava/util/List;ZZZ)V", "()Ljava/util/List;", "interceptorsWithFallback", "()Z", "inflate", "Lio/github/inflationx/viewpump/InflateResult;", "originalRequest", "Lio/github/inflationx/viewpump/InflateRequest;", "Builder", "Companion", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.ViewPump */
/* loaded from: classes.dex */
public final class ViewPump {
    private static ViewPump INSTANCE;
    private final List<Interceptor> interceptors;
    private final List<Interceptor> interceptorsWithFallback;
    private final boolean isCustomViewCreation;
    private final boolean isReflection;
    private final boolean isStoreLayoutResId;
    public static final Companion Companion = new Companion(null);
    private static final Lazy reflectiveFallbackViewCreator$delegate = LazyKt.lazy(ViewPump$Companion$reflectiveFallbackViewCreator$2.INSTANCE);

    @JvmStatic
    public static final Builder builder() {
        return Companion.builder();
    }

    @JvmStatic
    public static final View create(Context context, Class<? extends View> cls) {
        return Companion.create(context, cls);
    }

    @JvmStatic
    public static final ViewPump get() {
        return Companion.get();
    }

    @JvmStatic
    public static final void init(ViewPump viewPump) {
        Companion.init(viewPump);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ViewPump(List<? extends Interceptor> list, boolean z, boolean z2, boolean z3) {
        this.interceptors = list;
        this.isReflection = z;
        this.isCustomViewCreation = z2;
        this.isStoreLayoutResId = z3;
        this.interceptorsWithFallback = CollectionsKt.toMutableList((Collection) CollectionsKt.plus((Collection<? extends FallbackViewCreationInterceptor>) list, new FallbackViewCreationInterceptor()));
    }

    public /* synthetic */ ViewPump(List list, boolean z, boolean z2, boolean z3, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, z, z2, z3);
    }

    public final List<Interceptor> interceptors() {
        return this.interceptors;
    }

    public final boolean isReflection() {
        return this.isReflection;
    }

    public final boolean isCustomViewCreation() {
        return this.isCustomViewCreation;
    }

    public final boolean isStoreLayoutResId() {
        return this.isStoreLayoutResId;
    }

    public final InflateResult inflate(InflateRequest originalRequest) {
        Intrinsics.checkParameterIsNotNull(originalRequest, "originalRequest");
        return new InterceptorChain(this.interceptorsWithFallback, 0, originalRequest).proceed(originalRequest);
    }

    /* compiled from: ViewPump.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, m35d2 = {"Lio/github/inflationx/viewpump/ViewPump$Builder;", "", "()V", "customViewCreation", "", "interceptors", "", "Lio/github/inflationx/viewpump/Interceptor;", "reflection", "reflectiveFallbackViewCreator", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "storeLayoutResId", "addInterceptor", "interceptor", "build", "Lio/github/inflationx/viewpump/ViewPump;", "setCustomViewInflationEnabled", "enabled", "setPrivateFactoryInjectionEnabled", "setReflectiveFallbackViewCreator", "setStoreLayoutResId", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.ViewPump$Builder */
    /* loaded from: classes.dex */
    public static final class Builder {
        private FallbackViewCreator reflectiveFallbackViewCreator;
        private boolean storeLayoutResId;
        private final List<Interceptor> interceptors = new ArrayList();
        private boolean reflection = true;
        private boolean customViewCreation = true;

        public final Builder addInterceptor(Interceptor interceptor) {
            Intrinsics.checkParameterIsNotNull(interceptor, "interceptor");
            Builder builder = this;
            builder.interceptors.add(interceptor);
            return builder;
        }

        public final Builder setPrivateFactoryInjectionEnabled(boolean z) {
            Builder builder = this;
            builder.reflection = z;
            return builder;
        }

        public final Builder setCustomViewInflationEnabled(boolean z) {
            Builder builder = this;
            builder.customViewCreation = z;
            return builder;
        }

        public final Builder setReflectiveFallbackViewCreator(FallbackViewCreator reflectiveFallbackViewCreator) {
            Intrinsics.checkParameterIsNotNull(reflectiveFallbackViewCreator, "reflectiveFallbackViewCreator");
            Builder builder = this;
            builder.reflectiveFallbackViewCreator = reflectiveFallbackViewCreator;
            return builder;
        }

        public final Builder setStoreLayoutResId(boolean z) {
            Builder builder = this;
            builder.storeLayoutResId = z;
            return builder;
        }

        public final ViewPump build() {
            return new ViewPump(CollectionsKt.toList(this.interceptors), this.reflection, this.customViewCreation, this.storeLayoutResId, null);
        }
    }

    /* compiled from: ViewPump.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0007J\"\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u0012H\u0007J\b\u0010\u0013\u001a\u00020\u0004H\u0007J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0017"}, m35d2 = {"Lio/github/inflationx/viewpump/ViewPump$Companion;", "", "()V", "INSTANCE", "Lio/github/inflationx/viewpump/ViewPump;", "reflectiveFallbackViewCreator", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "getReflectiveFallbackViewCreator", "()Lio/github/inflationx/viewpump/FallbackViewCreator;", "reflectiveFallbackViewCreator$delegate", "Lkotlin/Lazy;", "builder", "Lio/github/inflationx/viewpump/ViewPump$Builder;", "create", "Landroid/view/View;", "context", "Landroid/content/Context;", "clazz", "Ljava/lang/Class;", "get", "init", "", "viewPump", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.ViewPump$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Companion.class), "reflectiveFallbackViewCreator", "getReflectiveFallbackViewCreator()Lio/github/inflationx/viewpump/FallbackViewCreator;"))};

        private final FallbackViewCreator getReflectiveFallbackViewCreator() {
            Lazy lazy = ViewPump.reflectiveFallbackViewCreator$delegate;
            Companion companion = ViewPump.Companion;
            KProperty kProperty = $$delegatedProperties[0];
            return (FallbackViewCreator) lazy.getValue();
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void init(ViewPump viewPump) {
            ViewPump.INSTANCE = viewPump;
        }

        @JvmStatic
        public final ViewPump get() {
            ViewPump viewPump = ViewPump.INSTANCE;
            if (viewPump != null) {
                return viewPump;
            }
            ViewPump build = builder().build();
            ViewPump.INSTANCE = build;
            return build;
        }

        @JvmStatic
        public final View create(Context context, Class<? extends View> clazz) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(clazz, "clazz");
            Companion companion = this;
            ViewPump viewPump = companion.get();
            String name = clazz.getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "clazz.name");
            return viewPump.inflate(new InflateRequest(name, context, null, null, companion.getReflectiveFallbackViewCreator(), 12, null)).view();
        }

        @JvmStatic
        public final Builder builder() {
            return new Builder();
        }
    }
}
