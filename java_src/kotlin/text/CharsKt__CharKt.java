package kotlin.text;

import kotlin.Metadata;
/* compiled from: Char.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\u0015\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0087\n¨\u0006\b"}, m35d2 = {"equals", "", "", "other", "ignoreCase", "isSurrogate", "plus", "", "kotlin-stdlib"}, m34k = 5, m33mv = {1, 1, 13}, m31xi = 1, m30xs = "kotlin/text/CharsKt")
/* loaded from: classes.dex */
class CharsKt__CharKt extends CharsKt__CharJVMKt {
    public static final boolean isSurrogate(char c) {
        return 55296 <= c && 57343 >= c;
    }

    private static final String plus(char c, String str) {
        return String.valueOf(c) + str;
    }

    public static /* synthetic */ boolean equals$default(char c, char c2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return CharsKt.equals(c, c2, z);
    }

    public static final boolean equals(char c, char c2, boolean z) {
        if (c == c2) {
            return true;
        }
        if (!z) {
            return false;
        }
        return Character.toUpperCase(c) == Character.toUpperCase(c2) || Character.toLowerCase(c) == Character.toLowerCase(c2);
    }
}
