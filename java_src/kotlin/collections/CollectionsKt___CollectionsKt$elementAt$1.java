package kotlin.collections;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: _Collections.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m35d2 = {"<anonymous>", "", "T", "it", "", "invoke"}, m34k = 3, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
final class CollectionsKt___CollectionsKt$elementAt$1 extends Lambda implements Function1 {
    final /* synthetic */ int $index;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionsKt___CollectionsKt$elementAt$1(int i) {
        super(1);
        this.$index = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke(((Number) obj).intValue());
    }

    public final Void invoke(int i) {
        throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + this.$index + '.');
    }
}
