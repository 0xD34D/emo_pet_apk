package p006io.github.inflationx.viewpump;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import p006io.github.inflationx.viewpump.internal.ReflectiveFallbackViewCreator;
/* compiled from: ViewPump.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m35d2 = {"<anonymous>", "Lio/github/inflationx/viewpump/internal/-ReflectiveFallbackViewCreator;", "invoke"}, m34k = 3, m33mv = {1, 1, 13})
/* renamed from: io.github.inflationx.viewpump.ViewPump$Companion$reflectiveFallbackViewCreator$2 */
/* loaded from: classes.dex */
final class ViewPump$Companion$reflectiveFallbackViewCreator$2 extends Lambda implements Function0<ReflectiveFallbackViewCreator> {
    public static final ViewPump$Companion$reflectiveFallbackViewCreator$2 INSTANCE = new ViewPump$Companion$reflectiveFallbackViewCreator$2();

    ViewPump$Companion$reflectiveFallbackViewCreator$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ReflectiveFallbackViewCreator invoke() {
        return new ReflectiveFallbackViewCreator();
    }
}
