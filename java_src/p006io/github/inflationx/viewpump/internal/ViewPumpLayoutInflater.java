package p006io.github.inflationx.viewpump.internal;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p003os.BuildCompat;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;
import org.xmlpull.v1.XmlPullParser;
import p006io.github.inflationx.viewpump.C1648R;
import p006io.github.inflationx.viewpump.FallbackViewCreator;
import p006io.github.inflationx.viewpump.InflateRequest;
import p006io.github.inflationx.viewpump.ViewPump;
/* compiled from: -ViewPumpLayoutInflater.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0000\u0018\u0000 /2\u00020\u00012\u00020\u0002:\n./01234567B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J.\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J$\u0010\u0018\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u0007H\u0016J\"\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u0007H\u0016J6\u0010 \u001a\u0004\u0018\u00010\u00112\b\u0010!\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J&\u0010#\u001a\u0004\u0018\u00010\u00112\b\u0010!\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u001c\u0010#\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020%H\u0002J\u0010\u0010,\u001a\u00020%2\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J&\u0010-\u001a\u0004\u0018\u00010\u00112\b\u0010!\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u001c\u0010-\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00068"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;", "Landroid/view/LayoutInflater;", "Lio/github/inflationx/viewpump/internal/-ViewPumpActivityFactory;", "original", "newContext", "Landroid/content/Context;", "cloned", "", "(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V", "IS_AT_LEAST_Q", "nameAndAttrsViewCreator", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "parentAndNameAndAttrsViewCreator", "setPrivateFactory", "storeLayoutResId", "cloneInContext", "createCustomViewInternal", "Landroid/view/View;", "view", "name", "", "viewContext", "attrs", "Landroid/util/AttributeSet;", "inflate", "resource", "", "root", "Landroid/view/ViewGroup;", "attachToRoot", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "onActivityCreateView", "parent", "context", "onCreateView", "setFactory", "", "factory", "Landroid/view/LayoutInflater$Factory;", "setFactory2", "factory2", "Landroid/view/LayoutInflater$Factory2;", "setPrivateFactoryInternal", "setUpLayoutFactories", "superOnCreateView", "ActivityViewCreator", "Companion", "NameAndAttrsViewCreator", "ParentAndNameAndAttrsViewCreator", "PrivateWrapperFactory2", "PrivateWrapperFactory2ViewCreator", "WrapperFactory", "WrapperFactory2", "WrapperFactory2ViewCreator", "WrapperFactoryViewCreator", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater  reason: invalid class name */
/* loaded from: classes.dex */
public final class ViewPumpLayoutInflater extends LayoutInflater implements ViewPumpActivityFactory {
    private final boolean IS_AT_LEAST_Q;
    private final FallbackViewCreator nameAndAttrsViewCreator;
    private final FallbackViewCreator parentAndNameAndAttrsViewCreator;
    private boolean setPrivateFactory;
    private boolean storeLayoutResId;
    public static final Companion Companion = new Companion(null);
    private static final Set<String> CLASS_PREFIX_LIST = SetsKt.setOf((Object[]) new String[]{"android.widget.", "android.webkit."});
    private static final Lazy CONSTRUCTOR_ARGS_FIELD$delegate = LazyKt.lazy(ViewPumpLayoutInflater$Companion$CONSTRUCTOR_ARGS_FIELD$2.INSTANCE);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPumpLayoutInflater(LayoutInflater original, Context newContext, boolean z) {
        super(original, newContext);
        Intrinsics.checkParameterIsNotNull(original, "original");
        Intrinsics.checkParameterIsNotNull(newContext, "newContext");
        this.IS_AT_LEAST_Q = Build.VERSION.SDK_INT > 28 || BuildCompat.isAtLeastQ();
        this.nameAndAttrsViewCreator = new NameAndAttrsViewCreator(this);
        this.parentAndNameAndAttrsViewCreator = new ParentAndNameAndAttrsViewCreator(this);
        this.storeLayoutResId = ViewPump.Companion.get().isStoreLayoutResId();
        setUpLayoutFactories(z);
    }

    @Override // android.view.LayoutInflater
    public LayoutInflater cloneInContext(Context newContext) {
        Intrinsics.checkParameterIsNotNull(newContext, "newContext");
        return new ViewPumpLayoutInflater(this, newContext, true);
    }

    @Override // android.view.LayoutInflater
    public View inflate(int i, ViewGroup viewGroup, boolean z) {
        View inflate = super.inflate(i, viewGroup, z);
        if (inflate != null && this.storeLayoutResId) {
            inflate.setTag(C1648R.C1649id.viewpump_layout_res, Integer.valueOf(i));
        }
        return inflate;
    }

    @Override // android.view.LayoutInflater
    public View inflate(XmlPullParser parser, ViewGroup viewGroup, boolean z) {
        Intrinsics.checkParameterIsNotNull(parser, "parser");
        setPrivateFactoryInternal();
        View inflate = super.inflate(parser, viewGroup, z);
        Intrinsics.checkExpressionValueIsNotNull(inflate, "super.inflate(parser, root, attachToRoot)");
        return inflate;
    }

    private final void setUpLayoutFactories(boolean z) {
        if (!z) {
            if (getFactory2() != null && !(getFactory2() instanceof WrapperFactory2)) {
                setFactory2(getFactory2());
            }
            if (getFactory() != null && !(getFactory() instanceof WrapperFactory)) {
                setFactory(getFactory());
            }
        }
    }

    @Override // android.view.LayoutInflater
    public void setFactory(LayoutInflater.Factory factory) {
        Intrinsics.checkParameterIsNotNull(factory, "factory");
        if (!(factory instanceof WrapperFactory)) {
            super.setFactory(new WrapperFactory(factory));
        } else {
            super.setFactory(factory);
        }
    }

    @Override // android.view.LayoutInflater
    public void setFactory2(LayoutInflater.Factory2 factory2) {
        Intrinsics.checkParameterIsNotNull(factory2, "factory2");
        if (!(factory2 instanceof WrapperFactory2)) {
            super.setFactory2(new WrapperFactory2(factory2));
        } else {
            super.setFactory2(factory2);
        }
    }

    private final void setPrivateFactoryInternal() {
        if (this.setPrivateFactory || !ViewPump.Companion.get().isReflection()) {
            return;
        }
        if (!(getContext() instanceof LayoutInflater.Factory2)) {
            this.setPrivateFactory = true;
            return;
        }
        Method accessibleMethod = ReflectionUtils.getAccessibleMethod(LayoutInflater.class, "setPrivateFactory");
        Object[] objArr = new Object[1];
        Context context = getContext();
        if (context != null) {
            objArr[0] = new PrivateWrapperFactory2((LayoutInflater.Factory2) context, this);
            ReflectionUtils.invokeMethod(accessibleMethod, this, objArr);
            this.setPrivateFactory = true;
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater.Factory2");
    }

    @Override // p006io.github.inflationx.viewpump.internal.ViewPumpActivityFactory
    public View onActivityCreateView(View view, View view2, String name, Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(view2, "view");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(context, "context");
        return ViewPump.Companion.get().inflate(new InflateRequest(name, context, attributeSet, view, new ActivityViewCreator(this, view2))).view();
    }

    @Override // android.view.LayoutInflater
    protected View onCreateView(View view, String name, AttributeSet attributeSet) throws ClassNotFoundException {
        Intrinsics.checkParameterIsNotNull(name, "name");
        ViewPump viewPump = ViewPump.Companion.get();
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        return viewPump.inflate(new InflateRequest(name, context, attributeSet, view, this.parentAndNameAndAttrsViewCreator)).view();
    }

    @Override // android.view.LayoutInflater
    protected View onCreateView(String name, AttributeSet attributeSet) throws ClassNotFoundException {
        Intrinsics.checkParameterIsNotNull(name, "name");
        ViewPump viewPump = ViewPump.Companion.get();
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        return viewPump.inflate(new InflateRequest(name, context, attributeSet, null, this.nameAndAttrsViewCreator, 8, null)).view();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View createCustomViewInternal(View view, String str, Context context, AttributeSet attributeSet) {
        Field constructor_args_field;
        if (!ViewPump.Companion.get().isCustomViewCreation() || view != null || StringsKt.indexOf$default((CharSequence) str, '.', 0, false, 6, (Object) null) <= -1) {
            return view;
        }
        if (this.IS_AT_LEAST_Q) {
            return cloneInContext(context).createView(str, null, attributeSet);
        }
        Companion companion = Companion;
        Object obj = companion.getCONSTRUCTOR_ARGS_FIELD().get(this);
        if (obj != null) {
            Object[] objArr = (Object[]) obj;
            Object obj2 = objArr[0];
            objArr[0] = context;
            ReflectionUtils.setValueQuietly(companion.getCONSTRUCTOR_ARGS_FIELD(), this, objArr);
            try {
                view = createView(str, null, attributeSet);
                objArr[0] = obj2;
                constructor_args_field = companion.getCONSTRUCTOR_ARGS_FIELD();
            } catch (ClassNotFoundException unused) {
                objArr[0] = obj2;
                constructor_args_field = Companion.getCONSTRUCTOR_ARGS_FIELD();
            } catch (Throwable th) {
                objArr[0] = obj2;
                ReflectionUtils.setValueQuietly(Companion.getCONSTRUCTOR_ARGS_FIELD(), this, objArr);
                throw th;
            }
            ReflectionUtils.setValueQuietly(constructor_args_field, this, objArr);
            return view;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.Any>");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View superOnCreateView(View view, String str, AttributeSet attributeSet) {
        try {
            return super.onCreateView(view, str, attributeSet);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View superOnCreateView(String str, AttributeSet attributeSet) {
        try {
            return super.onCreateView(str, attributeSet);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J.\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$ActivityViewCreator;", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "inflater", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;", "view", "Landroid/view/View;", "(Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;Landroid/view/View;)V", "onCreateView", "parent", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$ActivityViewCreator */
    /* loaded from: classes.dex */
    private static final class ActivityViewCreator implements FallbackViewCreator {
        private final ViewPumpLayoutInflater inflater;
        private final View view;

        public ActivityViewCreator(ViewPumpLayoutInflater inflater, View view) {
            Intrinsics.checkParameterIsNotNull(inflater, "inflater");
            Intrinsics.checkParameterIsNotNull(view, "view");
            this.inflater = inflater;
            this.view = view;
        }

        @Override // p006io.github.inflationx.viewpump.FallbackViewCreator
        public View onCreateView(View view, String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return this.inflater.createCustomViewInternal(this.view, name, context, attributeSet);
        }
    }

    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J.\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator;", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "inflater", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;", "(Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;)V", "onCreateView", "Landroid/view/View;", "parent", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$ParentAndNameAndAttrsViewCreator */
    /* loaded from: classes.dex */
    private static final class ParentAndNameAndAttrsViewCreator implements FallbackViewCreator {
        private final ViewPumpLayoutInflater inflater;

        public ParentAndNameAndAttrsViewCreator(ViewPumpLayoutInflater inflater) {
            Intrinsics.checkParameterIsNotNull(inflater, "inflater");
            this.inflater = inflater;
        }

        @Override // p006io.github.inflationx.viewpump.FallbackViewCreator
        public View onCreateView(View view, String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return this.inflater.superOnCreateView(view, name, attributeSet);
        }
    }

    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J.\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$NameAndAttrsViewCreator;", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "inflater", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;", "(Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;)V", "onCreateView", "Landroid/view/View;", "parent", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$NameAndAttrsViewCreator */
    /* loaded from: classes.dex */
    private static final class NameAndAttrsViewCreator implements FallbackViewCreator {
        private final ViewPumpLayoutInflater inflater;

        public NameAndAttrsViewCreator(ViewPumpLayoutInflater inflater) {
            Intrinsics.checkParameterIsNotNull(inflater, "inflater");
            this.inflater = inflater;
        }

        @Override // p006io.github.inflationx.viewpump.FallbackViewCreator
        public View onCreateView(View view, String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            View view2 = null;
            for (String str : ViewPumpLayoutInflater.CLASS_PREFIX_LIST) {
                try {
                    view2 = this.inflater.createView(name, str, attributeSet);
                } catch (ClassNotFoundException unused) {
                }
                if (view2 != null) {
                    break;
                }
            }
            return view2 == null ? this.inflater.superOnCreateView(name, attributeSet) : view2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J$\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$WrapperFactory;", "Landroid/view/LayoutInflater$Factory;", "factory", "(Landroid/view/LayoutInflater$Factory;)V", "viewCreator", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "onCreateView", "Landroid/view/View;", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$WrapperFactory */
    /* loaded from: classes.dex */
    public static final class WrapperFactory implements LayoutInflater.Factory {
        private final FallbackViewCreator viewCreator;

        public WrapperFactory(LayoutInflater.Factory factory) {
            Intrinsics.checkParameterIsNotNull(factory, "factory");
            this.viewCreator = new WrapperFactoryViewCreator(factory);
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return ViewPump.Companion.get().inflate(new InflateRequest(name, context, attributeSet, null, this.viewCreator, 8, null)).view();
        }
    }

    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J.\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$WrapperFactoryViewCreator;", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "factory", "Landroid/view/LayoutInflater$Factory;", "(Landroid/view/LayoutInflater$Factory;)V", "onCreateView", "Landroid/view/View;", "parent", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$WrapperFactoryViewCreator */
    /* loaded from: classes.dex */
    private static final class WrapperFactoryViewCreator implements FallbackViewCreator {
        private final LayoutInflater.Factory factory;

        public WrapperFactoryViewCreator(LayoutInflater.Factory factory) {
            Intrinsics.checkParameterIsNotNull(factory, "factory");
            this.factory = factory;
        }

        @Override // p006io.github.inflationx.viewpump.FallbackViewCreator
        public View onCreateView(View view, String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return this.factory.onCreateView(name, context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0012\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J.\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J$\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$WrapperFactory2;", "Landroid/view/LayoutInflater$Factory2;", "factory2", "(Landroid/view/LayoutInflater$Factory2;)V", "viewCreator", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$WrapperFactory2ViewCreator;", "onCreateView", "Landroid/view/View;", "parent", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$WrapperFactory2 */
    /* loaded from: classes.dex */
    public static class WrapperFactory2 implements LayoutInflater.Factory2 {
        private final WrapperFactory2ViewCreator viewCreator;

        public WrapperFactory2(LayoutInflater.Factory2 factory2) {
            Intrinsics.checkParameterIsNotNull(factory2, "factory2");
            this.viewCreator = new WrapperFactory2ViewCreator(factory2);
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return onCreateView(null, name, context, attributeSet);
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return ViewPump.Companion.get().inflate(new InflateRequest(name, context, attributeSet, view, this.viewCreator)).view();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0012\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J.\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$WrapperFactory2ViewCreator;", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "factory2", "Landroid/view/LayoutInflater$Factory2;", "(Landroid/view/LayoutInflater$Factory2;)V", "getFactory2", "()Landroid/view/LayoutInflater$Factory2;", "onCreateView", "Landroid/view/View;", "parent", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$WrapperFactory2ViewCreator */
    /* loaded from: classes.dex */
    public static class WrapperFactory2ViewCreator implements FallbackViewCreator {
        private final LayoutInflater.Factory2 factory2;

        public WrapperFactory2ViewCreator(LayoutInflater.Factory2 factory2) {
            Intrinsics.checkParameterIsNotNull(factory2, "factory2");
            this.factory2 = factory2;
        }

        protected final LayoutInflater.Factory2 getFactory2() {
            return this.factory2;
        }

        @Override // p006io.github.inflationx.viewpump.FallbackViewCreator
        public View onCreateView(View view, String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return this.factory2.onCreateView(view, name, context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J.\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$PrivateWrapperFactory2;", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$WrapperFactory2;", "factory2", "Landroid/view/LayoutInflater$Factory2;", "inflater", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;", "(Landroid/view/LayoutInflater$Factory2;Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;)V", "viewCreator", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator;", "onCreateView", "Landroid/view/View;", "parent", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$PrivateWrapperFactory2 */
    /* loaded from: classes.dex */
    public static final class PrivateWrapperFactory2 extends WrapperFactory2 {
        private final PrivateWrapperFactory2ViewCreator viewCreator;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PrivateWrapperFactory2(LayoutInflater.Factory2 factory2, ViewPumpLayoutInflater inflater) {
            super(factory2);
            Intrinsics.checkParameterIsNotNull(factory2, "factory2");
            Intrinsics.checkParameterIsNotNull(inflater, "inflater");
            this.viewCreator = new PrivateWrapperFactory2ViewCreator(factory2, inflater);
        }

        @Override // p006io.github.inflationx.viewpump.internal.ViewPumpLayoutInflater.WrapperFactory2, android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return ViewPump.Companion.get().inflate(new InflateRequest(name, context, attributeSet, view, this.viewCreator)).view();
        }
    }

    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J.\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator;", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$WrapperFactory2ViewCreator;", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "factory2", "Landroid/view/LayoutInflater$Factory2;", "inflater", "Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;", "(Landroid/view/LayoutInflater$Factory2;Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater;)V", "onCreateView", "Landroid/view/View;", "parent", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$PrivateWrapperFactory2ViewCreator */
    /* loaded from: classes.dex */
    private static final class PrivateWrapperFactory2ViewCreator extends WrapperFactory2ViewCreator implements FallbackViewCreator {
        private final ViewPumpLayoutInflater inflater;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PrivateWrapperFactory2ViewCreator(LayoutInflater.Factory2 factory2, ViewPumpLayoutInflater inflater) {
            super(factory2);
            Intrinsics.checkParameterIsNotNull(factory2, "factory2");
            Intrinsics.checkParameterIsNotNull(inflater, "inflater");
            this.inflater = inflater;
        }

        @Override // p006io.github.inflationx.viewpump.internal.ViewPumpLayoutInflater.WrapperFactory2ViewCreator, p006io.github.inflationx.viewpump.FallbackViewCreator
        public View onCreateView(View view, String name, Context context, AttributeSet attributeSet) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(context, "context");
            return this.inflater.createCustomViewInternal(getFactory2().onCreateView(view, name, context, attributeSet), name, context, attributeSet);
        }
    }

    /* compiled from: -ViewPumpLayoutInflater.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\f"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-ViewPumpLayoutInflater$Companion;", "", "()V", "CLASS_PREFIX_LIST", "", "", "CONSTRUCTOR_ARGS_FIELD", "Ljava/lang/reflect/Field;", "getCONSTRUCTOR_ARGS_FIELD", "()Ljava/lang/reflect/Field;", "CONSTRUCTOR_ARGS_FIELD$delegate", "Lkotlin/Lazy;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.internal.-ViewPumpLayoutInflater$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Companion.class), "CONSTRUCTOR_ARGS_FIELD", "getCONSTRUCTOR_ARGS_FIELD()Ljava/lang/reflect/Field;"))};

        /* JADX INFO: Access modifiers changed from: private */
        public final Field getCONSTRUCTOR_ARGS_FIELD() {
            Lazy lazy = ViewPumpLayoutInflater.CONSTRUCTOR_ARGS_FIELD$delegate;
            Companion companion = ViewPumpLayoutInflater.Companion;
            KProperty kProperty = $$delegatedProperties[0];
            return (Field) lazy.getValue();
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
