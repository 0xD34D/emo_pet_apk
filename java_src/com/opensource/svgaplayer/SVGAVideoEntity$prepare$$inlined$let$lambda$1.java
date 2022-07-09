package com.opensource.svgaplayer;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: SVGAVideoEntity.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m35d2 = {"<anonymous>", "", "invoke", "com/opensource/svgaplayer/SVGAVideoEntity$prepare$1$1"}, m34k = 3, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
final class SVGAVideoEntity$prepare$$inlined$let$lambda$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ Function0 $callback$inlined;
    final /* synthetic */ SVGAVideoEntity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SVGAVideoEntity$prepare$$inlined$let$lambda$1(SVGAVideoEntity sVGAVideoEntity, Function0 function0) {
        super(0);
        this.this$0 = sVGAVideoEntity;
        this.$callback$inlined = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$callback$inlined.invoke();
    }
}
