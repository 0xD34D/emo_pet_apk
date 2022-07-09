package p006io.github.inflationx.viewpump.internal;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import p006io.github.inflationx.viewpump.InflateRequest;
import p006io.github.inflationx.viewpump.InflateResult;
import p006io.github.inflationx.viewpump.Interceptor;
/* compiled from: -FallbackViewCreationInterceptor.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m35d2 = {"Lio/github/inflationx/viewpump/internal/-FallbackViewCreationInterceptor;", "Lio/github/inflationx/viewpump/Interceptor;", "()V", "intercept", "Lio/github/inflationx/viewpump/InflateResult;", "chain", "Lio/github/inflationx/viewpump/Interceptor$Chain;", "viewpump_release"}, m34k = 1, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.internal.-FallbackViewCreationInterceptor  reason: invalid class name */
/* loaded from: classes.dex */
public final class FallbackViewCreationInterceptor implements Interceptor {
    @Override // p006io.github.inflationx.viewpump.Interceptor
    public InflateResult intercept(Interceptor.Chain chain) {
        String str;
        Class<?> cls;
        Intrinsics.checkParameterIsNotNull(chain, "chain");
        InflateRequest request = chain.request();
        View onCreateView = request.fallbackViewCreator().onCreateView(request.parent(), request.name(), request.context(), request.attrs());
        if (onCreateView == null || (cls = onCreateView.getClass()) == null || (str = cls.getName()) == null) {
            str = request.name();
        }
        return new InflateResult(onCreateView, str, request.context(), request.attrs());
    }
}
