package p006io.github.inflationx.viewpump;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: InflateResult.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001c\u001dB-\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\tHÆ\u0003J5\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\u0006\u0010\u0019\u001a\u00020\u001aJ\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\b\u001a\u0004\u0018\u00010\t8\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u000bR\u0013\u0010\u0006\u001a\u00020\u00078\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\fR\u0013\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\rR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u000e¨\u0006\u001e"}, m35d2 = {"Lio/github/inflationx/viewpump/InflateResult;", "", "view", "Landroid/view/View;", "name", "", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V", "()Landroid/util/AttributeSet;", "()Landroid/content/Context;", "()Ljava/lang/String;", "()Landroid/view/View;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toBuilder", "Lio/github/inflationx/viewpump/InflateResult$Builder;", "toString", "Builder", "Companion", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.InflateResult */
/* loaded from: classes.dex */
public final class InflateResult {
    public static final Companion Companion = new Companion(null);
    private final AttributeSet attrs;
    private final Context context;
    private final String name;
    private final View view;

    @JvmStatic
    public static final Builder builder() {
        return Companion.builder();
    }

    public static /* synthetic */ InflateResult copy$default(InflateResult inflateResult, View view, String str, Context context, AttributeSet attributeSet, int i, Object obj) {
        if ((i & 1) != 0) {
            view = inflateResult.view;
        }
        if ((i & 2) != 0) {
            str = inflateResult.name;
        }
        if ((i & 4) != 0) {
            context = inflateResult.context;
        }
        if ((i & 8) != 0) {
            attributeSet = inflateResult.attrs;
        }
        return inflateResult.copy(view, str, context, attributeSet);
    }

    public final View component1() {
        return this.view;
    }

    public final String component2() {
        return this.name;
    }

    public final Context component3() {
        return this.context;
    }

    public final AttributeSet component4() {
        return this.attrs;
    }

    public final InflateResult copy(View view, String name, Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new InflateResult(view, name, context, attributeSet);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InflateResult)) {
            return false;
        }
        InflateResult inflateResult = (InflateResult) obj;
        return Intrinsics.areEqual(this.view, inflateResult.view) && Intrinsics.areEqual(this.name, inflateResult.name) && Intrinsics.areEqual(this.context, inflateResult.context) && Intrinsics.areEqual(this.attrs, inflateResult.attrs);
    }

    public int hashCode() {
        View view = this.view;
        int i = 0;
        int hashCode = (view != null ? view.hashCode() : 0) * 31;
        String str = this.name;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        Context context = this.context;
        int hashCode3 = (hashCode2 + (context != null ? context.hashCode() : 0)) * 31;
        AttributeSet attributeSet = this.attrs;
        if (attributeSet != null) {
            i = attributeSet.hashCode();
        }
        return hashCode3 + i;
    }

    public String toString() {
        return "InflateResult(view=" + this.view + ", name=" + this.name + ", context=" + this.context + ", attrs=" + this.attrs + ")";
    }

    public InflateResult(View view, String name, Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.view = view;
        this.name = name;
        this.context = context;
        this.attrs = attributeSet;
    }

    public /* synthetic */ InflateResult(View view, String str, Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : view, str, context, (i & 8) != 0 ? null : attributeSet);
    }

    public final View view() {
        return this.view;
    }

    public final String name() {
        return this.name;
    }

    public final Context context() {
        return this.context;
    }

    public final AttributeSet attrs() {
        return this.attrs;
    }

    public final Builder toBuilder() {
        return new Builder(this);
    }

    /* compiled from: InflateResult.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0010¢\u0006\u0002\u0010\u0002B\u000f\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m35d2 = {"Lio/github/inflationx/viewpump/InflateResult$Builder;", "", "()V", "result", "Lio/github/inflationx/viewpump/InflateResult;", "(Lio/github/inflationx/viewpump/InflateResult;)V", "attrs", "Landroid/util/AttributeSet;", "context", "Landroid/content/Context;", "name", "", "view", "Landroid/view/View;", "build", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.InflateResult$Builder */
    /* loaded from: classes.dex */
    public static final class Builder {
        private AttributeSet attrs;
        private Context context;
        private String name;
        private View view;

        public Builder() {
        }

        public Builder(InflateResult result) {
            Intrinsics.checkParameterIsNotNull(result, "result");
            this.view = result.view();
            this.name = result.name();
            this.context = result.context();
            this.attrs = result.attrs();
        }

        public final Builder view(View view) {
            Builder builder = this;
            builder.view = view;
            return builder;
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

        public final InflateResult build() {
            String str = this.name;
            if (str != null) {
                View view = this.view;
                if (view == null) {
                    view = null;
                } else if (!Intrinsics.areEqual(str, view.getClass().getName())) {
                    throw new IllegalStateException(("name (" + str + ") must be the view's fully qualified name (" + view.getClass().getName() + ')').toString());
                }
                Context context = this.context;
                if (context != null) {
                    return new InflateResult(view, str, context, this.attrs);
                }
                throw new IllegalStateException("context == null");
            }
            throw new IllegalStateException("name == null".toString());
        }
    }

    /* compiled from: InflateResult.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m35d2 = {"Lio/github/inflationx/viewpump/InflateResult$Companion;", "", "()V", "builder", "Lio/github/inflationx/viewpump/InflateResult$Builder;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.InflateResult$Companion */
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
