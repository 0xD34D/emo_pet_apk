package p006io.github.inflationx.viewpump;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Interceptor.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \u00072\u00020\u0001:\u0002\u0006\u0007J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\b"}, m35d2 = {"Lio/github/inflationx/viewpump/Interceptor;", "", "intercept", "Lio/github/inflationx/viewpump/InflateResult;", "chain", "Lio/github/inflationx/viewpump/Interceptor$Chain;", "Chain", "Companion", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.Interceptor */
/* loaded from: classes.dex */
public interface Interceptor {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: Interceptor.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m35d2 = {"Lio/github/inflationx/viewpump/Interceptor$Chain;", "", "proceed", "Lio/github/inflationx/viewpump/InflateResult;", "request", "Lio/github/inflationx/viewpump/InflateRequest;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.Interceptor$Chain */
    /* loaded from: classes.dex */
    public interface Chain {
        InflateResult proceed(InflateRequest inflateRequest);

        InflateRequest request();
    }

    InflateResult intercept(Chain chain);

    /* compiled from: Interceptor.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J3\u0010\u0003\u001a\u00020\u00042#\b\u0004\u0010\u0005\u001a\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0006H\u0087\n¢\u0006\u0002\b\f¨\u0006\r"}, m35d2 = {"Lio/github/inflationx/viewpump/Interceptor$Companion;", "", "()V", "invoke", "Lio/github/inflationx/viewpump/Interceptor;", "block", "Lkotlin/Function1;", "Lio/github/inflationx/viewpump/Interceptor$Chain;", "Lkotlin/ParameterName;", "name", "chain", "Lio/github/inflationx/viewpump/InflateResult;", "-deprecated_Interceptor", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* renamed from: io.github.inflationx.viewpump.Interceptor$Companion */
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        /* renamed from: -deprecated_Interceptor */
        public final Interceptor m734deprecated_Interceptor(Function1<? super Chain, InflateResult> block) {
            Intrinsics.checkParameterIsNotNull(block, "block");
            return new Interceptor$Companion$invoke$1(block);
        }
    }
}
