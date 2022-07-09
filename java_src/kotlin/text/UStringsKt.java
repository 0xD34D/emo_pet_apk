package kotlin.text;

import androidx.core.internal.view.SupportMenu;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UStrings.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0014\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0011\u001a\u001c\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u001a\u0014\u0010\u0014\u001a\u00020\u0007*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0015\u001a\u001c\u0010\u0014\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u001a\u0014\u0010\u0018\u001a\u00020\n*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0019\u001a\u001c\u0010\u0018\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u001a\u0011\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001b\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u001a\u0014\u0010\u001c\u001a\u00020\r*\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001d\u001a\u001c\u0010\u001c\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001e\u001a\u0011\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, m35d2 = {"toString", "", "Lkotlin/UByte;", "radix", "", "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUByteOrNull", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toUIntOrNull", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toULongOrNull", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUShortOrNull", "kotlin-stdlib"}, m34k = 2, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class UStringsKt {
    /* renamed from: toString-LxnNnR4  reason: not valid java name */
    public static final String m1105toStringLxnNnR4(byte b, int i) {
        String num = Integer.toString(b & UByte.MAX_VALUE, CharsKt.checkRadix(i));
        Intrinsics.checkExpressionValueIsNotNull(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    /* renamed from: toString-olVBNx4  reason: not valid java name */
    public static final String m1107toStringolVBNx4(short s, int i) {
        String num = Integer.toString(s & UShort.MAX_VALUE, CharsKt.checkRadix(i));
        Intrinsics.checkExpressionValueIsNotNull(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    /* renamed from: toString-V7xB4Y4  reason: not valid java name */
    public static final String m1106toStringV7xB4Y4(int i, int i2) {
        String l = Long.toString(i & 4294967295L, CharsKt.checkRadix(i2));
        Intrinsics.checkExpressionValueIsNotNull(l, "java.lang.Long.toString(this, checkRadix(radix))");
        return l;
    }

    /* renamed from: toString-JSWoG40  reason: not valid java name */
    public static final String m1104toStringJSWoG40(long j, int i) {
        return UnsignedKt.ulongToString(j, CharsKt.checkRadix(i));
    }

    public static final byte toUByte(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UByte uByteOrNull = toUByteOrNull(receiver$0);
        if (uByteOrNull != null) {
            return uByteOrNull.m795unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    public static final byte toUByte(String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UByte uByteOrNull = toUByteOrNull(receiver$0, i);
        if (uByteOrNull != null) {
            return uByteOrNull.m795unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    public static final short toUShort(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UShort uShortOrNull = toUShortOrNull(receiver$0);
        if (uShortOrNull != null) {
            return uShortOrNull.m994unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    public static final short toUShort(String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UShort uShortOrNull = toUShortOrNull(receiver$0, i);
        if (uShortOrNull != null) {
            return uShortOrNull.m994unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    public static final int toUInt(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UInt uIntOrNull = toUIntOrNull(receiver$0);
        if (uIntOrNull != null) {
            return uIntOrNull.m862unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    public static final int toUInt(String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UInt uIntOrNull = toUIntOrNull(receiver$0, i);
        if (uIntOrNull != null) {
            return uIntOrNull.m862unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    public static final long toULong(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ULong uLongOrNull = toULongOrNull(receiver$0);
        if (uLongOrNull != null) {
            return uLongOrNull.m929unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    public static final long toULong(String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ULong uLongOrNull = toULongOrNull(receiver$0, i);
        if (uLongOrNull != null) {
            return uLongOrNull.m929unboximpl();
        }
        StringsKt.numberFormatError(receiver$0);
        throw null;
    }

    public static final UByte toUByteOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return toUByteOrNull(receiver$0, 10);
    }

    public static final UByte toUByteOrNull(String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UInt uIntOrNull = toUIntOrNull(receiver$0, i);
        if (uIntOrNull == null) {
            return null;
        }
        int i2 = uIntOrNull.m862unboximpl();
        if (UnsignedKt.uintCompare(i2, UInt.m821constructorimpl(255)) > 0) {
            return null;
        }
        return UByte.m750boximpl(UByte.m756constructorimpl((byte) i2));
    }

    public static final UShort toUShortOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return toUShortOrNull(receiver$0, 10);
    }

    public static final UShort toUShortOrNull(String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        UInt uIntOrNull = toUIntOrNull(receiver$0, i);
        if (uIntOrNull == null) {
            return null;
        }
        int i2 = uIntOrNull.m862unboximpl();
        if (UnsignedKt.uintCompare(i2, UInt.m821constructorimpl(SupportMenu.USER_MASK)) > 0) {
            return null;
        }
        return UShort.m949boximpl(UShort.m955constructorimpl((short) i2));
    }

    public static final UInt toUIntOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return toUIntOrNull(receiver$0, 10);
    }

    public static final UInt toUIntOrNull(String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CharsKt.checkRadix(i);
        int length = receiver$0.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = receiver$0.charAt(0);
        int i3 = 1;
        if (charAt >= '0') {
            i3 = 0;
        } else if (length == 1 || charAt != '+') {
            return null;
        }
        int i4 = UInt.m821constructorimpl(i);
        int i5 = UnsignedKt.m1013uintDivideJ1ME1BU(-1, i4);
        while (i3 < length) {
            int digitOf = CharsKt.digitOf(receiver$0.charAt(i3), i);
            if (digitOf < 0 || UnsignedKt.uintCompare(i2, i5) > 0) {
                return null;
            }
            int i6 = UInt.m821constructorimpl(i2 * i4);
            int i7 = UInt.m821constructorimpl(UInt.m821constructorimpl(digitOf) + i6);
            if (UnsignedKt.uintCompare(i7, i6) < 0) {
                return null;
            }
            i3++;
            i2 = i7;
        }
        return UInt.m815boximpl(i2);
    }

    public static final ULong toULongOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return toULongOrNull(receiver$0, 10);
    }

    public static final ULong toULongOrNull(String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CharsKt.checkRadix(i);
        int length = receiver$0.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        char charAt = receiver$0.charAt(0);
        if (charAt < '0') {
            if (length == 1 || charAt != '+') {
                return null;
            }
            i2 = 1;
        }
        long j = UInt.m821constructorimpl(i) & 4294967295L;
        long j2 = UnsignedKt.m1015ulongDivideeb3DHEI(-1L, ULong.m888constructorimpl(j));
        long j3 = 0;
        while (i2 < length) {
            int digitOf = CharsKt.digitOf(receiver$0.charAt(i2), i);
            if (digitOf < 0 || UnsignedKt.ulongCompare(j3, j2) > 0) {
                return null;
            }
            long j4 = ULong.m888constructorimpl(j3 * ULong.m888constructorimpl(j));
            long j5 = ULong.m888constructorimpl(ULong.m888constructorimpl(UInt.m821constructorimpl(digitOf) & 4294967295L) + j4);
            if (UnsignedKt.ulongCompare(j5, j4) < 0) {
                return null;
            }
            i2++;
            j3 = j5;
        }
        return ULong.m882boximpl(j3);
    }
}
