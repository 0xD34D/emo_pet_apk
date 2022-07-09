package kotlin.p007io;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FileReadWrite.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m35d2 = {"<anonymous>", "", "it", "", "invoke"}, m34k = 3, m33mv = {1, 1, 13})
/* renamed from: kotlin.io.FilesKt__FileReadWriteKt$readLines$1 */
/* loaded from: classes.dex */
final class FilesKt__FileReadWriteKt$readLines$1 extends Lambda implements Function1<String, Unit> {
    final /* synthetic */ ArrayList $result;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilesKt__FileReadWriteKt$readLines$1(ArrayList arrayList) {
        super(1);
        this.$result = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(String str) {
        invoke2(str);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(String it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        this.$result.add(it);
    }
}
