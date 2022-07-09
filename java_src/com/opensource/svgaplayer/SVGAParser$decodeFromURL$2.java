package com.opensource.svgaplayer;

import com.opensource.svgaplayer.SVGAParser;
import java.io.InputStream;
import java.net.URL;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SVGAParser.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m35d2 = {"<anonymous>", "", "it", "Ljava/io/InputStream;", "invoke"}, m34k = 3, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGAParser$decodeFromURL$2 extends Lambda implements Function1<InputStream, Unit> {
    final /* synthetic */ SVGAParser.ParseCompletion $callback;
    final /* synthetic */ URL $url;
    final /* synthetic */ SVGAParser this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SVGAParser$decodeFromURL$2(SVGAParser sVGAParser, URL url, SVGAParser.ParseCompletion parseCompletion) {
        super(1);
        this.this$0 = sVGAParser;
        this.$url = url;
        this.$callback = parseCompletion;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(InputStream inputStream) {
        invoke2(inputStream);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(InputStream it) {
        String buildCacheKey;
        Intrinsics.checkParameterIsNotNull(it, "it");
        SVGAParser sVGAParser = this.this$0;
        buildCacheKey = sVGAParser.buildCacheKey(this.$url);
        SVGAParser.decodeFromInputStream$default(sVGAParser, it, buildCacheKey, this.$callback, false, 8, null);
    }
}
