package kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
/* compiled from: UnsignedUtils.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0001\u001a\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\"\u0010\b\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0001ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0007\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000bH\u0001\u001a\"\u0010\f\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0001ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\"\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u000f\u001a\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH\u0000\u001a\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0001H\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, m35d2 = {"uintCompare", "", "v1", "v2", "uintDivide", "Lkotlin/UInt;", "uintDivide-J1ME1BU", "(II)I", "uintRemainder", "uintRemainder-J1ME1BU", "ulongCompare", "", "ulongDivide", "Lkotlin/ULong;", "ulongDivide-eb3DHEI", "(JJ)J", "ulongRemainder", "ulongRemainder-eb3DHEI", "ulongToString", "", "v", "base", "kotlin-stdlib"}, m34k = 2, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class UnsignedKt {
    public static final int ulongCompare(long j, long j2) {
        return ((j ^ Long.MIN_VALUE) > (j2 ^ Long.MIN_VALUE) ? 1 : ((j ^ Long.MIN_VALUE) == (j2 ^ Long.MIN_VALUE) ? 0 : -1));
    }

    public static final int uintCompare(int i, int i2) {
        return Intrinsics.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
    }

    /* renamed from: uintDivide-J1ME1BU */
    public static final int m1013uintDivideJ1ME1BU(int i, int i2) {
        return UInt.m821constructorimpl((int) ((i & 4294967295L) / (i2 & 4294967295L)));
    }

    /* renamed from: uintRemainder-J1ME1BU */
    public static final int m1014uintRemainderJ1ME1BU(int i, int i2) {
        return UInt.m821constructorimpl((int) ((i & 4294967295L) % (i2 & 4294967295L)));
    }

    /* renamed from: ulongDivide-eb3DHEI */
    public static final long m1015ulongDivideeb3DHEI(long j, long j2) {
        if (j2 < 0) {
            return ulongCompare(j, j2) < 0 ? ULong.m888constructorimpl(0L) : ULong.m888constructorimpl(1L);
        }
        if (j >= 0) {
            return ULong.m888constructorimpl(j / j2);
        }
        int i = 1;
        long j3 = ((j >>> 1) / j2) << 1;
        if (ulongCompare(ULong.m888constructorimpl(j - (j3 * j2)), ULong.m888constructorimpl(j2)) < 0) {
            i = 0;
        }
        return ULong.m888constructorimpl(j3 + i);
    }

    /* renamed from: ulongRemainder-eb3DHEI */
    public static final long m1016ulongRemaindereb3DHEI(long j, long j2) {
        if (j2 < 0) {
            return ulongCompare(j, j2) < 0 ? j : ULong.m888constructorimpl(j - j2);
        }
        if (j >= 0) {
            return ULong.m888constructorimpl(j % j2);
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (ulongCompare(ULong.m888constructorimpl(j3), ULong.m888constructorimpl(j2)) < 0) {
            j2 = 0;
        }
        return ULong.m888constructorimpl(j3 - j2);
    }

    public static final String ulongToString(long j) {
        return ulongToString(j, 10);
    }

    public static final String ulongToString(long j, int i) {
        if (j >= 0) {
            String l = Long.toString(j, CharsKt.checkRadix(i));
            Intrinsics.checkExpressionValueIsNotNull(l, "java.lang.Long.toString(this, checkRadix(radix))");
            return l;
        }
        long j2 = i;
        long j3 = ((j >>> 1) / j2) << 1;
        long j4 = j - (j3 * j2);
        if (j4 >= j2) {
            j4 -= j2;
            j3++;
        }
        StringBuilder sb = new StringBuilder();
        String l2 = Long.toString(j3, CharsKt.checkRadix(i));
        Intrinsics.checkExpressionValueIsNotNull(l2, "java.lang.Long.toString(this, checkRadix(radix))");
        sb.append(l2);
        String l3 = Long.toString(j4, CharsKt.checkRadix(i));
        Intrinsics.checkExpressionValueIsNotNull(l3, "java.lang.Long.toString(this, checkRadix(radix))");
        sb.append(l3);
        return sb.toString();
    }
}
