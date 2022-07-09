package p006io.github.inflationx.viewpump;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: InflateRequest.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u0000 !2\u00020\u0001:\u0002 !B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010\u0016\u001a\u00020\u000bHÆ\u0003J?\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\u0006\u0010\u001d\u001a\u00020\u001eJ\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\rR\u0013\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000eR\u0013\u0010\n\u001a\u00020\u000b8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000fR\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0010R\u0015\u0010\b\u001a\u0004\u0018\u00010\t8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0011¨\u0006\""}, m35d2 = {"Lio/github/inflationx/viewpump/InflateRequest;", "", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "parent", "Landroid/view/View;", "fallbackViewCreator", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Lio/github/inflationx/viewpump/FallbackViewCreator;)V", "()Landroid/util/AttributeSet;", "()Landroid/content/Context;", "()Lio/github/inflationx/viewpump/FallbackViewCreator;", "()Ljava/lang/String;", "()Landroid/view/View;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toBuilder", "Lio/github/inflationx/viewpump/InflateRequest$Builder;", "toString", "Builder", "Companion", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.InflateRequest */
/* loaded from: classes.dex */
public final class InflateRequest {
    public static final Companion Companion = new Companion(null);
    private final AttributeSet attrs;
    private final Context context;
    private final FallbackViewCreator fallbackViewCreator;
    private final String name;
    private final View parent;

    @JvmStatic
    public static final Builder builder() {
        return Companion.builder();
    }

    public static /* synthetic */ InflateRequest copy$default(InflateRequest inflateRequest, String str, Context context, AttributeSet attributeSet, View view, FallbackViewCreator fallbackViewCreator, int i, Object obj) {
        if ((i & 1) != 0) {
            str = inflateRequest.name;
        }
        if ((i & 2) != 0) {
            context = inflateRequest.context;
        }
        if ((i & 4) != 0) {
            attributeSet = inflateRequest.attrs;
        }
        if ((i & 8) != 0) {
            view = inflateRequest.parent;
        }
        if ((i & 16) != 0) {
            fallbackViewCreator = inflateRequest.fallbackViewCreator;
        }
        return inflateRequest.copy(str, context, attributeSet, view, fallbackViewCreator);
    }

    public final String component1() {
        return this.name;
    }

    public final Context component2() {
        return this.context;
    }

    public final AttributeSet component3() {
        return this.attrs;
    }

    public final View component4() {
        return this.parent;
    }

    public final FallbackViewCreator component5() {
        return this.fallbackViewCreator;
    }

    public final InflateRequest copy(String name, Context context, AttributeSet attributeSet, View view, FallbackViewCreator fallbackViewCreator) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(fallbackViewCreator, "fallbackViewCreator");
        return new InflateRequest(name, context, attributeSet, view, fallbackViewCreator);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InflateRequest)) {
            return false;
        }
        InflateRequest inflateRequest = (InflateRequest) obj;
        return Intrinsics.areEqual(this.name, inflateRequest.name) && Intrinsics.areEqual(this.context, inflateRequest.context) && Intrinsics.areEqual(this.attrs, inflateRequest.attrs) && Intrinsics.areEqual(this.parent, inflateRequest.parent) && Intrinsics.areEqual(this.fallbackViewCreator, inflateRequest.fallbackViewCreator);
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Context context = this.context;
        int hashCode2 = (hashCode + (context != null ? context.hashCode() : 0)) * 31;
        AttributeSet attributeSet = this.attrs;
        int hashCode3 = (hashCode2 + (attributeSet != null ? attributeSet.hashCode() : 0)) * 31;
        View view = this.parent;
        int hashCode4 = (hashCode3 + (view != null ? view.hashCode() : 0)) * 31;
        FallbackViewCreator fallbackViewCreator = this.fallbackViewCreator;
        if (fallbackViewCreator != null) {
            i = fallbackViewCreator.hashCode();
        }
        return hashCode4 + i;
    }

    public String toString() {
        return "InflateRequest(name=" + this.name + ", context=" + this.context + ", attrs=" + this.attrs + ", parent=" + this.parent + ", fallbackViewCreator=" + this.fallbackViewCreator + ")";
    }

    public InflateRequest(String name, Context context, AttributeSet attributeSet, View view, FallbackViewCreator fallbackViewCreator) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(fallbackViewCreator, "fallbackViewCreator");
        this.name = name;
        this.context = context;
        this.attrs = attributeSet;
        this.parent = view;
        this.fallbackViewCreator = fallbackViewCreator;
    }

    public final String name() {
        return this.name;
    }

    public final Context context() {
        return this.context;
    }

    public /* synthetic */ InflateRequest(String str, Context context, AttributeSet attributeSet, View view, FallbackViewCreator fallbackViewCreator, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, context, (i & 4) != 0 ? null : attributeSet, (i & 8) != 0 ? null : view, fallbackViewCreator);
    }

    public final AttributeSet attrs() {
        return this.attrs;
    }

    public final View parent() {
        return this.parent;
    }

    public final FallbackViewCreator fallbackViewCreator() {
        return this.fallbackViewCreator;
    }

    public final Builder toBuilder() {
        return new Builder(this);
    }

    /* compiled from: InflateRequest.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0010¢\u0006\u0002\u0010\u0002B\u000f\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m35d2 = {"Lio/github/inflationx/viewpump/InflateRequest$Builder;", "", "()V", "request", "Lio/github/inflationx/viewpump/InflateRequest;", "(Lio/github/inflationx/viewpump/InflateRequest;)V", "attrs", "Landroid/util/AttributeSet;", "context", "Landroid/content/Context;", "fallbackViewCreator", "Lio/github/inflationx/viewpump/FallbackViewCreator;", "name", "", "parent", "Landroid/view/View;", "build", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.InflateRequest$Builder */
    /* loaded from: classes.dex */
    public static final class Builder {
        private AttributeSet attrs;
        private Context context;
        private FallbackViewCreator fallbackViewCreator;
        private String name;
        private View parent;

        public Builder() {
        }

        public Builder(InflateRequest request) {
            Intrinsics.checkParameterIsNotNull(request, "request");
            this.name = request.name();
            this.context = request.context();
            this.attrs = request.attrs();
            this.parent = request.parent();
            this.fallbackViewCreator = request.fallbackViewCreator();
        }

        public final Builder name(String name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Builder builder = this;
            builder.name = name;
            return builder;
        }

        public final Builder context(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Builder builder = this;
            builder.context = context;
            return builder;
        }

        public final Builder attrs(AttributeSet attributeSet) {
            Builder builder = this;
            builder.attrs = attributeSet;
            return builder;
        }

        public final Builder parent(View view) {
            Builder builder = this;
            builder.parent = view;
            return builder;
        }

        public final Builder fallbackViewCreator(FallbackViewCreator fallbackViewCreator) {
            Intrinsics.checkParameterIsNotNull(fallbackViewCreator, "fallbackViewCreator");
            Builder builder = this;
            builder.fallbackViewCreator = fallbackViewCreator;
            return builder;
        }

        public final InflateRequest build() {
            String str = this.name;
            if (str != null) {
                Context context = this.context;
                if (context != null) {
                    AttributeSet attributeSet = this.attrs;
                    View view = this.parent;
                    FallbackViewCreator fallbackViewCreator = this.fallbackViewCreator;
                    if (fallbackViewCreator != null) {
                        return new InflateRequest(str, context, attributeSet, view, fallbackViewCreator);
                    }
                    throw new IllegalStateException("fallbackViewCreator == null");
                }
                throw new IllegalStateException("context == null");
            }
            throw new IllegalStateException("name == null");
        }
    }

    /* compiled from: InflateRequest.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m35d2 = {"Lio/github/inflationx/viewpump/InflateRequest$Companion;", "", "()V", "builder", "Lio/github/inflationx/viewpump/InflateRequest$Builder;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.InflateRequest$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final Builder builder() {
            return new Builder();
        }
    }
}
