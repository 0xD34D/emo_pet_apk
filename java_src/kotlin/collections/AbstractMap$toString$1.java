package kotlin.collections;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: AbstractMap.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010&\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0006\b\u0001\u0010\u0003 \u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005H\n¢\u0006\u0002\b\u0006"}, m35d2 = {"<anonymous>", "", "K", "V", "it", "", "invoke"}, m34k = 3, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
final class AbstractMap$toString$1 extends Lambda implements Function1<Map.Entry<? extends K, ? extends V>, String> {
    final /* synthetic */ AbstractMap this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractMap$toString$1(AbstractMap abstractMap) {
        super(1);
        this.this$0 = abstractMap;
    }

    public final String invoke(Map.Entry<? extends K, ? extends V> it) {
        String abstractMap;
        Intrinsics.checkParameterIsNotNull(it, "it");
        abstractMap = this.this$0.toString((Map.Entry) it);
        return abstractMap;
    }
}
