package kotlin.collections;

import java.util.Arrays;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
/* compiled from: _UArrays.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000z\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b/\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\b\r\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0017\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0017\u0010\n\u001a\u00020\u000b*\u00020\fH\u0087\bø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u0017\u0010\u000f\u001a\u00020\u0010*\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0015\u0010\u0014\u001a\u00020\u0002*\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u0015\u0010\u0015\u001a\u00020\u0007*\u00020\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\t\u001a\u0015\u0010\u0016\u001a\u00020\f*\u00020\u000bH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001a\u0015\u0010\u0017\u001a\u00020\u0011*\u00020\u0010H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u001a\u001f\u0010\u0018\u001a\u00020\u0019*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001f\u0010\u0018\u001a\u00020\u0019*\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001f\u0010\u0018\u001a\u00020\u0019*\u00020\f2\u0006\u0010\u001a\u001a\u00020\fH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u001f\u0010\u0018\u001a\u00020\u0019*\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b!\u0010\"\u001a\u0016\u0010#\u001a\u00020$*\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a\u0016\u0010#\u001a\u00020$*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001a\u0016\u0010#\u001a\u00020$*\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001a\u0016\u0010#\u001a\u00020$*\u00020\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a\u0016\u0010-\u001a\u00020.*\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b/\u00100\u001a\u0016\u0010-\u001a\u00020.*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b1\u00102\u001a\u0016\u0010-\u001a\u00020.*\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0004\b3\u00104\u001a\u0016\u0010-\u001a\u00020.*\u00020\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b5\u00106\u001a=\u00107\u001a\u00020\u0002*\u00020\u00022\u0006\u00108\u001a\u00020\u00022\b\b\u0002\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u00020$2\b\b\u0002\u0010;\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\b<\u0010=\u001a=\u00107\u001a\u00020\u0007*\u00020\u00072\u0006\u00108\u001a\u00020\u00072\b\b\u0002\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u00020$2\b\b\u0002\u0010;\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\b>\u0010?\u001a=\u00107\u001a\u00020\f*\u00020\f2\u0006\u00108\u001a\u00020\f2\b\b\u0002\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u00020$2\b\b\u0002\u0010;\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\b@\u0010A\u001a=\u00107\u001a\u00020\u0011*\u00020\u00112\u0006\u00108\u001a\u00020\u00112\b\b\u0002\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u00020$2\b\b\u0002\u0010;\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\bB\u0010C\u001a\u0017\u0010D\u001a\u00020\u0002*\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\bE\u0010\u0004\u001a\u001f\u0010D\u001a\u00020\u0002*\u00020\u00022\u0006\u0010F\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\bG\u0010H\u001a\u0017\u0010D\u001a\u00020\u0007*\u00020\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\bI\u0010\t\u001a\u001f\u0010D\u001a\u00020\u0007*\u00020\u00072\u0006\u0010F\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\bJ\u0010K\u001a\u0017\u0010D\u001a\u00020\f*\u00020\fH\u0087\bø\u0001\u0000¢\u0006\u0004\bL\u0010\u000e\u001a\u001f\u0010D\u001a\u00020\f*\u00020\f2\u0006\u0010F\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\bM\u0010N\u001a\u0017\u0010D\u001a\u00020\u0011*\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\bO\u0010\u0013\u001a\u001f\u0010D\u001a\u00020\u0011*\u00020\u00112\u0006\u0010F\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\bP\u0010Q\u001a'\u0010R\u001a\u00020\u0002*\u00020\u00022\u0006\u0010S\u001a\u00020$2\u0006\u0010T\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\bU\u0010V\u001a'\u0010R\u001a\u00020\u0007*\u00020\u00072\u0006\u0010S\u001a\u00020$2\u0006\u0010T\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\bW\u0010X\u001a'\u0010R\u001a\u00020\f*\u00020\f2\u0006\u0010S\u001a\u00020$2\u0006\u0010T\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\bY\u0010Z\u001a'\u0010R\u001a\u00020\u0011*\u00020\u00112\u0006\u0010S\u001a\u00020$2\u0006\u0010T\u001a\u00020$H\u0087\bø\u0001\u0000¢\u0006\u0004\b[\u0010\\\u001a\u0017\u0010]\u001a\u00020^*\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\b_\u0010`\u001a\u001e\u0010]\u001a\u00020^*\u00020\u00022\u0006\u0010]\u001a\u00020aH\u0007ø\u0001\u0000¢\u0006\u0004\bb\u0010c\u001a\u0017\u0010]\u001a\u00020d*\u00020\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\be\u0010(\u001a\u001e\u0010]\u001a\u00020d*\u00020\u00072\u0006\u0010]\u001a\u00020aH\u0007ø\u0001\u0000¢\u0006\u0004\bf\u0010g\u001a\u0017\u0010]\u001a\u00020h*\u00020\fH\u0087\bø\u0001\u0000¢\u0006\u0004\bi\u0010j\u001a\u001e\u0010]\u001a\u00020h*\u00020\f2\u0006\u0010]\u001a\u00020aH\u0007ø\u0001\u0000¢\u0006\u0004\bk\u0010l\u001a\u0017\u0010]\u001a\u00020m*\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\bn\u0010o\u001a\u001e\u0010]\u001a\u00020m*\u00020\u00112\u0006\u0010]\u001a\u00020aH\u0007ø\u0001\u0000¢\u0006\u0004\bp\u0010q\u001a\u0017\u0010r\u001a\u00020\u0001*\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0004\bs\u0010\u0004\u001a\u0017\u0010t\u001a\u00020\u0006*\u00020\u0007H\u0087\bø\u0001\u0000¢\u0006\u0004\bu\u0010\t\u001a\u0017\u0010v\u001a\u00020\u000b*\u00020\fH\u0087\bø\u0001\u0000¢\u0006\u0004\bw\u0010\u000e\u001a\u0017\u0010x\u001a\u00020\u0010*\u00020\u0011H\u0087\bø\u0001\u0000¢\u0006\u0004\by\u0010\u0013\u001a\u001c\u0010z\u001a\b\u0012\u0004\u0012\u00020^0{*\u00020\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b|\u0010}\u001a\u001c\u0010z\u001a\b\u0012\u0004\u0012\u00020d0{*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b~\u0010\u007f\u001a\u001e\u0010z\u001a\b\u0012\u0004\u0012\u00020h0{*\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u001e\u0010z\u001a\b\u0012\u0004\u0012\u00020m0{*\u00020\u0011H\u0007ø\u0001\u0000¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a\u0016\u0010\u0084\u0001\u001a\u00020\u0002*\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u0016\u0010\u0085\u0001\u001a\u00020\u0007*\u00020\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\t\u001a\u0016\u0010\u0086\u0001\u001a\u00020\f*\u00020\u000bH\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u000e\u001a\u0016\u0010\u0087\u0001\u001a\u00020\u0011*\u00020\u0010H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0088\u0001"}, m35d2 = {"asByteArray", "", "Lkotlin/UByteArray;", "asByteArray-GBYM_sE", "([B)[B", "asIntArray", "", "Lkotlin/UIntArray;", "asIntArray--ajY-9A", "([I)[I", "asLongArray", "", "Lkotlin/ULongArray;", "asLongArray-QwZRm1k", "([J)[J", "asShortArray", "", "Lkotlin/UShortArray;", "asShortArray-rL5Bavg", "([S)[S", "asUByteArray", "asUIntArray", "asULongArray", "asUShortArray", "contentEquals", "", "other", "contentEquals-kdPth3s", "([B[B)Z", "contentEquals-ctEhBpI", "([I[I)Z", "contentEquals-us8wMrg", "([J[J)Z", "contentEquals-mazbYpA", "([S[S)Z", "contentHashCode", "", "contentHashCode-GBYM_sE", "([B)I", "contentHashCode--ajY-9A", "([I)I", "contentHashCode-QwZRm1k", "([J)I", "contentHashCode-rL5Bavg", "([S)I", "contentToString", "", "contentToString-GBYM_sE", "([B)Ljava/lang/String;", "contentToString--ajY-9A", "([I)Ljava/lang/String;", "contentToString-QwZRm1k", "([J)Ljava/lang/String;", "contentToString-rL5Bavg", "([S)Ljava/lang/String;", "copyInto", "destination", "destinationOffset", "startIndex", "endIndex", "copyInto-FUQE5sA", "([B[BIII)[B", "copyInto-sIZ3KeM", "([I[IIII)[I", "copyInto--B0-L2c", "([J[JIII)[J", "copyInto-9-ak10g", "([S[SIII)[S", "copyOf", "copyOf-GBYM_sE", "newSize", "copyOf-PpDY95g", "([BI)[B", "copyOf--ajY-9A", "copyOf-qFRl0hI", "([II)[I", "copyOf-QwZRm1k", "copyOf-r7IrZao", "([JI)[J", "copyOf-rL5Bavg", "copyOf-nggk6HY", "([SI)[S", "copyOfRange", "fromIndex", "toIndex", "copyOfRange-4UcCI2c", "([BII)[B", "copyOfRange-oBK06Vg", "([III)[I", "copyOfRange--nroSd4", "([JII)[J", "copyOfRange-Aa5vz7o", "([SII)[S", "random", "Lkotlin/UByte;", "random-GBYM_sE", "([B)B", "Lkotlin/random/Random;", "random-oSF2wD8", "([BLkotlin/random/Random;)B", "Lkotlin/UInt;", "random--ajY-9A", "random-2D5oskM", "([ILkotlin/random/Random;)I", "Lkotlin/ULong;", "random-QwZRm1k", "([J)J", "random-JzugnMA", "([JLkotlin/random/Random;)J", "Lkotlin/UShort;", "random-rL5Bavg", "([S)S", "random-s5X_as8", "([SLkotlin/random/Random;)S", "toByteArray", "toByteArray-GBYM_sE", "toIntArray", "toIntArray--ajY-9A", "toLongArray", "toLongArray-QwZRm1k", "toShortArray", "toShortArray-rL5Bavg", "toTypedArray", "", "toTypedArray-GBYM_sE", "([B)[Lkotlin/UByte;", "toTypedArray--ajY-9A", "([I)[Lkotlin/UInt;", "toTypedArray-QwZRm1k", "([J)[Lkotlin/ULong;", "toTypedArray-rL5Bavg", "([S)[Lkotlin/UShort;", "toUByteArray", "toUIntArray", "toULongArray", "toUShortArray", "kotlin-stdlib"}, m34k = 5, m33mv = {1, 1, 13}, m31xi = 1, m30xs = "kotlin/collections/UArraysKt")
/* loaded from: classes.dex */
class UArraysKt___UArraysKt {
    /* renamed from: asByteArray-GBYM_sE  reason: not valid java name */
    private static final byte[] m1021asByteArrayGBYM_sE(byte[] bArr) {
        return bArr;
    }

    /* renamed from: asIntArray--ajY-9A  reason: not valid java name */
    private static final int[] m1022asIntArrayajY9A(int[] iArr) {
        return iArr;
    }

    /* renamed from: asLongArray-QwZRm1k  reason: not valid java name */
    private static final long[] m1023asLongArrayQwZRm1k(long[] jArr) {
        return jArr;
    }

    /* renamed from: asShortArray-rL5Bavg  reason: not valid java name */
    private static final short[] m1024asShortArrayrL5Bavg(short[] sArr) {
        return sArr;
    }

    /* renamed from: random--ajY-9A  reason: not valid java name */
    private static final int m1057randomajY9A(int[] iArr) {
        return UArraysKt.m1058random2D5oskM(iArr, Random.Default);
    }

    /* renamed from: random-QwZRm1k  reason: not valid java name */
    private static final long m1061randomQwZRm1k(long[] jArr) {
        return UArraysKt.m1060randomJzugnMA(jArr, Random.Default);
    }

    /* renamed from: random-GBYM_sE  reason: not valid java name */
    private static final byte m1059randomGBYM_sE(byte[] bArr) {
        return UArraysKt.m1062randomoSF2wD8(bArr, Random.Default);
    }

    /* renamed from: random-rL5Bavg  reason: not valid java name */
    private static final short m1063randomrL5Bavg(short[] sArr) {
        return UArraysKt.m1064randoms5X_as8(sArr, Random.Default);
    }

    /* renamed from: random-2D5oskM  reason: not valid java name */
    public static final int m1058random2D5oskM(int[] receiver$0, Random random) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (!UIntArray.m873isEmptyimpl(receiver$0)) {
            return UIntArray.m870getimpl(receiver$0, random.nextInt(UIntArray.m871getSizeimpl(receiver$0)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    /* renamed from: random-JzugnMA  reason: not valid java name */
    public static final long m1060randomJzugnMA(long[] receiver$0, Random random) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (!ULongArray.m940isEmptyimpl(receiver$0)) {
            return ULongArray.m937getimpl(receiver$0, random.nextInt(ULongArray.m938getSizeimpl(receiver$0)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    /* renamed from: random-oSF2wD8  reason: not valid java name */
    public static final byte m1062randomoSF2wD8(byte[] receiver$0, Random random) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (!UByteArray.m806isEmptyimpl(receiver$0)) {
            return UByteArray.m803getimpl(receiver$0, random.nextInt(UByteArray.m804getSizeimpl(receiver$0)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    /* renamed from: random-s5X_as8  reason: not valid java name */
    public static final short m1064randoms5X_as8(short[] receiver$0, Random random) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        if (!UShortArray.m1005isEmptyimpl(receiver$0)) {
            return UShortArray.m1002getimpl(receiver$0, random.nextInt(UShortArray.m1003getSizeimpl(receiver$0)));
        }
        throw new NoSuchElementException("Array is empty.");
    }

    private static final byte[] asUByteArray(byte[] bArr) {
        return UByteArray.m798constructorimpl(bArr);
    }

    private static final int[] asUIntArray(int[] iArr) {
        return UIntArray.m865constructorimpl(iArr);
    }

    private static final long[] asULongArray(long[] jArr) {
        return ULongArray.m932constructorimpl(jArr);
    }

    private static final short[] asUShortArray(short[] sArr) {
        return UShortArray.m997constructorimpl(sArr);
    }

    /* renamed from: contentEquals-ctEhBpI  reason: not valid java name */
    public static final boolean m1025contentEqualsctEhBpI(int[] receiver$0, int[] other) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(other, "other");
        return Arrays.equals(receiver$0, other);
    }

    /* renamed from: contentEquals-us8wMrg  reason: not valid java name */
    public static final boolean m1028contentEqualsus8wMrg(long[] receiver$0, long[] other) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(other, "other");
        return Arrays.equals(receiver$0, other);
    }

    /* renamed from: contentEquals-kdPth3s  reason: not valid java name */
    public static final boolean m1026contentEqualskdPth3s(byte[] receiver$0, byte[] other) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(other, "other");
        return Arrays.equals(receiver$0, other);
    }

    /* renamed from: contentEquals-mazbYpA  reason: not valid java name */
    public static final boolean m1027contentEqualsmazbYpA(short[] receiver$0, short[] other) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(other, "other");
        return Arrays.equals(receiver$0, other);
    }

    /* renamed from: contentHashCode--ajY-9A  reason: not valid java name */
    public static final int m1029contentHashCodeajY9A(int[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return Arrays.hashCode(receiver$0);
    }

    /* renamed from: contentHashCode-QwZRm1k  reason: not valid java name */
    public static final int m1031contentHashCodeQwZRm1k(long[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return Arrays.hashCode(receiver$0);
    }

    /* renamed from: contentHashCode-GBYM_sE  reason: not valid java name */
    public static final int m1030contentHashCodeGBYM_sE(byte[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return Arrays.hashCode(receiver$0);
    }

    /* renamed from: contentHashCode-rL5Bavg  reason: not valid java name */
    public static final int m1032contentHashCoderL5Bavg(short[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return Arrays.hashCode(receiver$0);
    }

    /* renamed from: contentToString--ajY-9A  reason: not valid java name */
    public static final String m1033contentToStringajY9A(int[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return CollectionsKt.joinToString$default(Intrinsics.checkParameterIsNotNull(receiver$0, "v"), ", ", "[", "]", 0, null, null, 56, null);
    }

    /* renamed from: contentToString-QwZRm1k  reason: not valid java name */
    public static final String m1035contentToStringQwZRm1k(long[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return CollectionsKt.joinToString$default(Intrinsics.checkParameterIsNotNull(receiver$0, "v"), ", ", "[", "]", 0, null, null, 56, null);
    }

    /* renamed from: contentToString-GBYM_sE  reason: not valid java name */
    public static final String m1034contentToStringGBYM_sE(byte[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return CollectionsKt.joinToString$default(Intrinsics.checkParameterIsNotNull(receiver$0, "v"), ", ", "[", "]", 0, null, null, 56, null);
    }

    /* renamed from: contentToString-rL5Bavg  reason: not valid java name */
    public static final String m1036contentToStringrL5Bavg(short[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return CollectionsKt.joinToString$default(Intrinsics.checkParameterIsNotNull(receiver$0, "v"), ", ", "[", "]", 0, null, null, 56, null);
    }

    /* renamed from: copyInto-sIZ3KeM$default  reason: not valid java name */
    static /* synthetic */ int[] m1044copyIntosIZ3KeM$default(int[] iArr, int[] iArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = UIntArray.m871getSizeimpl(iArr);
        }
        ArraysKt.copyInto(iArr, iArr2, i, i2, i3);
        return iArr2;
    }

    /* renamed from: copyInto-sIZ3KeM  reason: not valid java name */
    private static final int[] m1043copyIntosIZ3KeM(int[] iArr, int[] iArr2, int i, int i2, int i3) {
        ArraysKt.copyInto(iArr, iArr2, i, i2, i3);
        return iArr2;
    }

    /* renamed from: copyInto--B0-L2c$default  reason: not valid java name */
    static /* synthetic */ long[] m1038copyIntoB0L2c$default(long[] jArr, long[] jArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = ULongArray.m938getSizeimpl(jArr);
        }
        ArraysKt.copyInto(jArr, jArr2, i, i2, i3);
        return jArr2;
    }

    /* renamed from: copyInto--B0-L2c  reason: not valid java name */
    private static final long[] m1037copyIntoB0L2c(long[] jArr, long[] jArr2, int i, int i2, int i3) {
        ArraysKt.copyInto(jArr, jArr2, i, i2, i3);
        return jArr2;
    }

    /* renamed from: copyInto-FUQE5sA$default  reason: not valid java name */
    static /* synthetic */ byte[] m1042copyIntoFUQE5sA$default(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = UByteArray.m804getSizeimpl(bArr);
        }
        ArraysKt.copyInto(bArr, bArr2, i, i2, i3);
        return bArr2;
    }

    /* renamed from: copyInto-FUQE5sA  reason: not valid java name */
    private static final byte[] m1041copyIntoFUQE5sA(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        ArraysKt.copyInto(bArr, bArr2, i, i2, i3);
        return bArr2;
    }

    /* renamed from: copyInto-9-ak10g$default  reason: not valid java name */
    static /* synthetic */ short[] m1040copyInto9ak10g$default(short[] sArr, short[] sArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = UShortArray.m1003getSizeimpl(sArr);
        }
        ArraysKt.copyInto(sArr, sArr2, i, i2, i3);
        return sArr2;
    }

    /* renamed from: copyInto-9-ak10g  reason: not valid java name */
    private static final short[] m1039copyInto9ak10g(short[] sArr, short[] sArr2, int i, int i2, int i3) {
        ArraysKt.copyInto(sArr, sArr2, i, i2, i3);
        return sArr2;
    }

    /* renamed from: copyOf--ajY-9A  reason: not valid java name */
    private static final int[] m1045copyOfajY9A(int[] iArr) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UIntArray.m865constructorimpl(copyOf);
    }

    /* renamed from: copyOf-QwZRm1k  reason: not valid java name */
    private static final long[] m1048copyOfQwZRm1k(long[] jArr) {
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return ULongArray.m932constructorimpl(copyOf);
    }

    /* renamed from: copyOf-GBYM_sE  reason: not valid java name */
    private static final byte[] m1046copyOfGBYM_sE(byte[] bArr) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UByteArray.m798constructorimpl(copyOf);
    }

    /* renamed from: copyOf-rL5Bavg  reason: not valid java name */
    private static final short[] m1052copyOfrL5Bavg(short[] sArr) {
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UShortArray.m997constructorimpl(copyOf);
    }

    /* renamed from: copyOf-qFRl0hI  reason: not valid java name */
    private static final int[] m1050copyOfqFRl0hI(int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, i);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return UIntArray.m865constructorimpl(copyOf);
    }

    /* renamed from: copyOf-r7IrZao  reason: not valid java name */
    private static final long[] m1051copyOfr7IrZao(long[] jArr, int i) {
        long[] copyOf = Arrays.copyOf(jArr, i);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return ULongArray.m932constructorimpl(copyOf);
    }

    /* renamed from: copyOf-PpDY95g  reason: not valid java name */
    private static final byte[] m1047copyOfPpDY95g(byte[] bArr, int i) {
        byte[] copyOf = Arrays.copyOf(bArr, i);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return UByteArray.m798constructorimpl(copyOf);
    }

    /* renamed from: copyOf-nggk6HY  reason: not valid java name */
    private static final short[] m1049copyOfnggk6HY(short[] sArr, int i) {
        short[] copyOf = Arrays.copyOf(sArr, i);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return UShortArray.m997constructorimpl(copyOf);
    }

    /* renamed from: copyOfRange-oBK06Vg  reason: not valid java name */
    private static final int[] m1056copyOfRangeoBK06Vg(int[] iArr, int i, int i2) {
        int[] iArr2;
        if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
            iArr2 = ArraysKt.copyOfRange(iArr, i, i2);
        } else if (i2 <= iArr.length) {
            iArr2 = Arrays.copyOfRange(iArr, i, i2);
            Intrinsics.checkExpressionValueIsNotNull(iArr2, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        } else {
            throw new IndexOutOfBoundsException("toIndex: " + i2 + ", size: " + iArr.length);
        }
        return UIntArray.m865constructorimpl(iArr2);
    }

    /* renamed from: copyOfRange--nroSd4  reason: not valid java name */
    private static final long[] m1053copyOfRangenroSd4(long[] jArr, int i, int i2) {
        long[] jArr2;
        if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
            jArr2 = ArraysKt.copyOfRange(jArr, i, i2);
        } else if (i2 <= jArr.length) {
            jArr2 = Arrays.copyOfRange(jArr, i, i2);
            Intrinsics.checkExpressionValueIsNotNull(jArr2, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        } else {
            throw new IndexOutOfBoundsException("toIndex: " + i2 + ", size: " + jArr.length);
        }
        return ULongArray.m932constructorimpl(jArr2);
    }

    /* renamed from: copyOfRange-4UcCI2c  reason: not valid java name */
    private static final byte[] m1054copyOfRange4UcCI2c(byte[] bArr, int i, int i2) {
        byte[] bArr2;
        if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
            bArr2 = ArraysKt.copyOfRange(bArr, i, i2);
        } else if (i2 <= bArr.length) {
            bArr2 = Arrays.copyOfRange(bArr, i, i2);
            Intrinsics.checkExpressionValueIsNotNull(bArr2, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        } else {
            throw new IndexOutOfBoundsException("toIndex: " + i2 + ", size: " + bArr.length);
        }
        return UByteArray.m798constructorimpl(bArr2);
    }

    /* renamed from: copyOfRange-Aa5vz7o  reason: not valid java name */
    private static final short[] m1055copyOfRangeAa5vz7o(short[] sArr, int i, int i2) {
        short[] sArr2;
        if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
            sArr2 = ArraysKt.copyOfRange(sArr, i, i2);
        } else if (i2 <= sArr.length) {
            sArr2 = Arrays.copyOfRange(sArr, i, i2);
            Intrinsics.checkExpressionValueIsNotNull(sArr2, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        } else {
            throw new IndexOutOfBoundsException("toIndex: " + i2 + ", size: " + sArr.length);
        }
        return UShortArray.m997constructorimpl(sArr2);
    }

    /* renamed from: toByteArray-GBYM_sE  reason: not valid java name */
    private static final byte[] m1065toByteArrayGBYM_sE(byte[] bArr) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    /* renamed from: toIntArray--ajY-9A  reason: not valid java name */
    private static final int[] m1066toIntArrayajY9A(int[] iArr) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    /* renamed from: toLongArray-QwZRm1k  reason: not valid java name */
    private static final long[] m1067toLongArrayQwZRm1k(long[] jArr) {
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    /* renamed from: toShortArray-rL5Bavg  reason: not valid java name */
    private static final short[] m1068toShortArrayrL5Bavg(short[] sArr) {
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    /* renamed from: toTypedArray--ajY-9A  reason: not valid java name */
    public static final UInt[] m1069toTypedArrayajY9A(int[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        int i = UIntArray.m871getSizeimpl(receiver$0);
        UInt[] uIntArr = new UInt[i];
        for (int i2 = 0; i2 < i; i2++) {
            uIntArr[i2] = UInt.m815boximpl(UIntArray.m870getimpl(receiver$0, i2));
        }
        return uIntArr;
    }

    /* renamed from: toTypedArray-QwZRm1k  reason: not valid java name */
    public static final ULong[] m1071toTypedArrayQwZRm1k(long[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        int i = ULongArray.m938getSizeimpl(receiver$0);
        ULong[] uLongArr = new ULong[i];
        for (int i2 = 0; i2 < i; i2++) {
            uLongArr[i2] = ULong.m882boximpl(ULongArray.m937getimpl(receiver$0, i2));
        }
        return uLongArr;
    }

    /* renamed from: toTypedArray-GBYM_sE  reason: not valid java name */
    public static final UByte[] m1070toTypedArrayGBYM_sE(byte[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        int i = UByteArray.m804getSizeimpl(receiver$0);
        UByte[] uByteArr = new UByte[i];
        for (int i2 = 0; i2 < i; i2++) {
            uByteArr[i2] = UByte.m750boximpl(UByteArray.m803getimpl(receiver$0, i2));
        }
        return uByteArr;
    }

    /* renamed from: toTypedArray-rL5Bavg  reason: not valid java name */
    public static final UShort[] m1072toTypedArrayrL5Bavg(short[] receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        int i = UShortArray.m1003getSizeimpl(receiver$0);
        UShort[] uShortArr = new UShort[i];
        for (int i2 = 0; i2 < i; i2++) {
            uShortArr[i2] = UShort.m949boximpl(UShortArray.m1002getimpl(receiver$0, i2));
        }
        return uShortArr;
    }

    private static final byte[] toUByteArray(byte[] bArr) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UByteArray.m798constructorimpl(copyOf);
    }

    private static final int[] toUIntArray(int[] iArr) {
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UIntArray.m865constructorimpl(copyOf);
    }

    private static final long[] toULongArray(long[] jArr) {
        long[] copyOf = Arrays.copyOf(jArr, jArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return ULongArray.m932constructorimpl(copyOf);
    }

    private static final short[] toUShortArray(short[] sArr) {
        short[] copyOf = Arrays.copyOf(sArr, sArr.length);
        Intrinsics.checkExpressionValueIsNotNull(copyOf, "java.util.Arrays.copyOf(this, size)");
        return UShortArray.m997constructorimpl(copyOf);
    }
}
