package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StringNumberConversions.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000.\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0006\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000b\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\b*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\f\u001a\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0014¨\u0006\u0015"}, m35d2 = {"numberFormatError", "", "input", "", "toByteOrNull", "", "(Ljava/lang/String;)Ljava/lang/Byte;", "radix", "", "(Ljava/lang/String;I)Ljava/lang/Byte;", "toIntOrNull", "(Ljava/lang/String;)Ljava/lang/Integer;", "(Ljava/lang/String;I)Ljava/lang/Integer;", "toLongOrNull", "", "(Ljava/lang/String;)Ljava/lang/Long;", "(Ljava/lang/String;I)Ljava/lang/Long;", "toShortOrNull", "", "(Ljava/lang/String;)Ljava/lang/Short;", "(Ljava/lang/String;I)Ljava/lang/Short;", "kotlin-stdlib"}, m34k = 5, m33mv = {1, 1, 13}, m31xi = 1, m30xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
class StringsKt__StringNumberConversionsKt extends StringsKt__StringNumberConversionsJVMKt {
    public static final Byte toByteOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return StringsKt.toByteOrNull(receiver$0, 10);
    }

    public static final Byte toByteOrNull(String receiver$0, int i) {
        int intValue;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Integer intOrNull = StringsKt.toIntOrNull(receiver$0, i);
        if (intOrNull == null || (intValue = intOrNull.intValue()) < -128 || intValue > 127) {
            return null;
        }
        return Byte.valueOf((byte) intValue);
    }

    public static final Short toShortOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return StringsKt.toShortOrNull(receiver$0, 10);
    }

    public static final Short toShortOrNull(String receiver$0, int i) {
        int intValue;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Integer intOrNull = StringsKt.toIntOrNull(receiver$0, i);
        if (intOrNull == null || (intValue = intOrNull.intValue()) < -32768 || intValue > 32767) {
            return null;
        }
        return Short.valueOf((short) intValue);
    }

    public static final Integer toIntOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return StringsKt.toIntOrNull(receiver$0, 10);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0037 A[LOOP:0: B:20:0x0037->B:30:0x004e, LOOP_START, PHI: r2 r3 
      PHI: (r2v2 int) = (r2v0 int), (r2v4 int) binds: [B:19:0x0035, B:30:0x004e] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r3v2 int) = (r3v1 int), (r3v3 int) binds: [B:19:0x0035, B:30:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Integer toIntOrNull(String receiver$0, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CharsKt.checkRadix(i);
        int length = receiver$0.length();
        if (length == 0) {
            return null;
        }
        int i6 = 0;
        char charAt = receiver$0.charAt(0);
        int i7 = -2147483647;
        if (charAt >= '0') {
            i3 = 0;
        } else if (length == 1) {
            return null;
        } else {
            if (charAt == '-') {
                i7 = Integer.MIN_VALUE;
                i3 = 1;
            } else if (charAt != '+') {
                return null;
            } else {
                i2 = 0;
                i3 = 1;
                int i8 = i7 / i;
                i4 = length - 1;
                if (i3 <= i4) {
                    while (true) {
                        int digitOf = CharsKt.digitOf(receiver$0.charAt(i3), i);
                        if (digitOf >= 0 && i6 >= i8 && (i5 = i6 * i) >= i7 + digitOf) {
                            i6 = i5 - digitOf;
                            if (i3 == i4) {
                                break;
                            }
                            i3++;
                        } else {
                            return null;
                        }
                    }
                }
                return i2 == 0 ? Integer.valueOf(i6) : Integer.valueOf(-i6);
            }
        }
        i2 = i3;
        int i82 = i7 / i;
        i4 = length - 1;
        if (i3 <= i4) {
        }
        if (i2 == 0) {
        }
    }

    public static final Long toLongOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return StringsKt.toLongOrNull(receiver$0, 10);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003f A[LOOP:0: B:19:0x003f->B:30:0x0061, LOOP_START, PHI: r3 r4 r14 
      PHI: (r3v1 java.lang.Long) = (r3v0 java.lang.Long), (r3v3 java.lang.Long) binds: [B:18:0x003d, B:30:0x0061] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r4v2 int) = (r4v1 int), (r4v4 int) binds: [B:18:0x003d, B:30:0x0061] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r14v2 long) = (r14v0 long), (r14v4 long) binds: [B:18:0x003d, B:30:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Long toLongOrNull(String receiver$0, int i) {
        int i2;
        int i3;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CharsKt.checkRadix(i);
        int length = receiver$0.length();
        Long l = null;
        if (length == 0) {
            return null;
        }
        int i4 = 0;
        char charAt = receiver$0.charAt(0);
        long j = -9223372036854775807L;
        if (charAt < '0') {
            if (length == 1) {
                return null;
            }
            if (charAt == '-') {
                j = Long.MIN_VALUE;
                i4 = 1;
            } else if (charAt != '+') {
                return null;
            } else {
                i2 = 0;
                i4 = 1;
                long j2 = i;
                long j3 = j / j2;
                long j4 = 0;
                i3 = length - 1;
                if (i4 <= i3) {
                    while (true) {
                        int digitOf = CharsKt.digitOf(receiver$0.charAt(i4), i);
                        if (digitOf >= 0 && j4 >= j3) {
                            long j5 = j4 * j2;
                            long j6 = digitOf;
                            if (j5 >= j + j6) {
                                l = null;
                                j4 = j5 - j6;
                                if (i4 == i3) {
                                    break;
                                }
                                i4++;
                            } else {
                                return null;
                            }
                        } else {
                            return l;
                        }
                    }
                }
                return i2 == 0 ? Long.valueOf(j4) : Long.valueOf(-j4);
            }
        }
        i2 = i4;
        long j22 = i;
        long j32 = j / j22;
        long j42 = 0;
        i3 = length - 1;
        if (i4 <= i3) {
        }
        if (i2 == 0) {
        }
    }

    public static final Void numberFormatError(String input) {
        Intrinsics.checkParameterIsNotNull(input, "input");
        throw new NumberFormatException("Invalid number format: '" + input + '\'');
    }
}
