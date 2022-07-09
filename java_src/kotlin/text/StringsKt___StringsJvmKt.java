package kotlin.text;

import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: _StringsJvm.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\u0010\r\n\u0000\u001a\u0010\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003¨\u0006\u0004"}, m35d2 = {"toSortedSet", "Ljava/util/SortedSet;", "", "", "kotlin-stdlib"}, m34k = 5, m33mv = {1, 1, 13}, m31xi = 1, m30xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
class StringsKt___StringsJvmKt extends StringsKt__StringsKt {
    public static final SortedSet<Character> toSortedSet(CharSequence receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return (SortedSet) StringsKt.toCollection(receiver$0, new TreeSet());
    }
}
