package p006io.github.inflationx.viewpump;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import p006io.github.inflationx.viewpump.Interceptor;
import p006io.github.inflationx.viewpump.ViewPump;
/* compiled from: ViewPump.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a2\u0010\u0000\u001a\u00020\u0001*\u00020\u00012#\b\u0004\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003H\u0086\b¨\u0006\t"}, m35d2 = {"addInterceptor", "Lio/github/inflationx/viewpump/ViewPump$Builder;", "block", "Lkotlin/Function1;", "Lio/github/inflationx/viewpump/Interceptor$Chain;", "Lkotlin/ParameterName;", "name", "chain", "Lio/github/inflationx/viewpump/InflateResult;", "viewpump_release"}, m34k = 2, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.ViewPumpKt */
/* loaded from: classes.dex */
public final class ViewPumpKt {
    public static final ViewPump.Builder addInterceptor(ViewPump.Builder receiver$0, Function1<? super Interceptor.Chain, InflateResult> block) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(block, "block");
        Interceptor.Companion companion = Interceptor.Companion;
        receiver$0.addInterceptor(new Interceptor$Companion$invoke$1(block));
        return receiver$0;
    }
}
