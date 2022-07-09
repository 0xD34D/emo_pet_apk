package com.opensource.svgaplayer;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: SVGAParser.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0004"}, m35d2 = {"<anonymous>", "", "invoke", "com/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$1$2$1", "com/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$1"}, m34k = 3, m33mv = {1, 1, 13})
/* renamed from: com.opensource.svgaplayer.SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$2 */
/* loaded from: classes.dex */
final class C1617x384fd0b9 extends Lambda implements Function0<Unit> {
    final /* synthetic */ SVGAVideoEntity $videoItem;
    final /* synthetic */ SVGAParser$decodeFromInputStream$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1617x384fd0b9(SVGAVideoEntity sVGAVideoEntity, SVGAParser$decodeFromInputStream$1 sVGAParser$decodeFromInputStream$1) {
        super(0);
        this.$videoItem = sVGAVideoEntity;
        this.this$0 = sVGAParser$decodeFromInputStream$1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke */
    public final void invoke2() {
        this.this$0.this$0.invokeCompleteCallback(this.$videoItem, this.this$0.$callback);
    }
}
