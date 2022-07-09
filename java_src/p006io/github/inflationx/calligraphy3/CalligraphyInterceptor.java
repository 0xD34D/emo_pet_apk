package p006io.github.inflationx.calligraphy3;

import p006io.github.inflationx.viewpump.InflateResult;
import p006io.github.inflationx.viewpump.Interceptor;
/* renamed from: io.github.inflationx.calligraphy3.CalligraphyInterceptor */
/* loaded from: classes.dex */
public class CalligraphyInterceptor implements Interceptor {
    private final Calligraphy calligraphy;

    public CalligraphyInterceptor(CalligraphyConfig calligraphyConfig) {
        this.calligraphy = new Calligraphy(calligraphyConfig);
    }

    @Override // p006io.github.inflationx.viewpump.Interceptor
    public InflateResult intercept(Interceptor.Chain chain) {
        InflateResult proceed = chain.proceed(chain.request());
        return proceed.toBuilder().view(this.calligraphy.onViewCreated(proceed.view(), proceed.context(), proceed.attrs())).build();
    }
}
