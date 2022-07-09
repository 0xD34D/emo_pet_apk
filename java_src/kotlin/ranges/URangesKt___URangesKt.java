package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;
import kotlin.ranges.UIntProgression;
import kotlin.ranges.ULongProgression;
/* compiled from: _URanges.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000N\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\n\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0087\nø\u0001\u0000¢\u0006\u0002\b\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0007H\u0087\nø\u0001\u0000¢\u0006\u0002\b\b\u001a\u001f\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u001f\u0010\t\u001a\u00020\n*\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001f\u0010\t\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001f\u0010\t\u001a\u00020\n*\u00020\u00142\u0006\u0010\f\u001a\u00020\u0014H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0015\u0010\u0017\u001a\u00020\u0004*\u00020\u0002H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001a\u001c\u0010\u0017\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0019H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001a\u001a\u0015\u0010\u0017\u001a\u00020\u0007*\u00020\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\u0010\u001b\u001a\u001c\u0010\u0017\u001a\u00020\u0007*\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0019H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a\f\u0010\u001d\u001a\u00020\n*\u00020\nH\u0007\u001a\f\u0010\u001d\u001a\u00020\u0011*\u00020\u0011H\u0007\u001a\u0015\u0010\u001e\u001a\u00020\n*\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001fH\u0087\u0004\u001a\u0015\u0010\u001e\u001a\u00020\u0011*\u00020\u00112\u0006\u0010\u001e\u001a\u00020 H\u0087\u0004\u001a\u001f\u0010!\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a\u001f\u0010!\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001a\u001f\u0010!\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001a\u001f\u0010!\u001a\u00020\u0002*\u00020\u00142\u0006\u0010\f\u001a\u00020\u0014H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b(\u0010)\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, m35d2 = {"contains", "", "Lkotlin/ranges/UIntRange;", "element", "Lkotlin/UInt;", "contains-biwQdVI", "Lkotlin/ranges/ULongRange;", "Lkotlin/ULong;", "contains-GYNo2lE", "downTo", "Lkotlin/ranges/UIntProgression;", "Lkotlin/UByte;", "to", "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ULongProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "Lkotlin/UShort;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "random", "(Lkotlin/ranges/UIntRange;)I", "Lkotlin/random/Random;", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "(Lkotlin/ranges/ULongRange;)J", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "reversed", "step", "", "", "until", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "kotlin-stdlib"}, m34k = 5, m33mv = {1, 1, 13}, m31xi = 1, m30xs = "kotlin/ranges/URangesKt")
/* loaded from: classes.dex */
class URangesKt___URangesKt {
    private static final int random(UIntRange uIntRange) {
        return URangesKt.random(uIntRange, Random.Default);
    }

    private static final long random(ULongRange uLongRange) {
        return URangesKt.random(uLongRange, Random.Default);
    }

    public static final int random(UIntRange receiver$0, Random random) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        try {
            return URandomKt.nextUInt(random, receiver$0);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    public static final long random(ULongRange receiver$0, Random random) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(random, "random");
        try {
            return URandomKt.nextULong(random, receiver$0);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    /* renamed from: contains-biwQdVI  reason: not valid java name */
    private static final boolean m1091containsbiwQdVI(UIntRange receiver$0, UInt uInt) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return uInt != null && receiver$0.m1087containsWZ4Q5Ns(uInt.m862unboximpl());
    }

    /* renamed from: contains-GYNo2lE  reason: not valid java name */
    private static final boolean m1090containsGYNo2lE(ULongRange receiver$0, ULong uLong) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return uLong != null && receiver$0.m1089containsVKZWuLQ(uLong.m929unboximpl());
    }

    /* renamed from: downTo-Kr8caGY  reason: not valid java name */
    public static final UIntProgression m1094downToKr8caGY(byte b, byte b2) {
        return UIntProgression.Companion.m1086fromClosedRangeNkh28Cs(UInt.m821constructorimpl(b & UByte.MAX_VALUE), UInt.m821constructorimpl(b2 & UByte.MAX_VALUE), -1);
    }

    /* renamed from: downTo-J1ME1BU  reason: not valid java name */
    public static final UIntProgression m1093downToJ1ME1BU(int i, int i2) {
        return UIntProgression.Companion.m1086fromClosedRangeNkh28Cs(i, i2, -1);
    }

    /* renamed from: downTo-eb3DHEI  reason: not valid java name */
    public static final ULongProgression m1095downToeb3DHEI(long j, long j2) {
        return ULongProgression.Companion.m1088fromClosedRange7ftBX0g(j, j2, -1L);
    }

    /* renamed from: downTo-5PvTz6A  reason: not valid java name */
    public static final UIntProgression m1092downTo5PvTz6A(short s, short s2) {
        return UIntProgression.Companion.m1086fromClosedRangeNkh28Cs(UInt.m821constructorimpl(s & UShort.MAX_VALUE), UInt.m821constructorimpl(s2 & UShort.MAX_VALUE), -1);
    }

    public static final UIntProgression reversed(UIntProgression receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return UIntProgression.Companion.m1086fromClosedRangeNkh28Cs(receiver$0.getLast(), receiver$0.getFirst(), -receiver$0.getStep());
    }

    public static final ULongProgression reversed(ULongProgression receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return ULongProgression.Companion.m1088fromClosedRange7ftBX0g(receiver$0.getLast(), receiver$0.getFirst(), -receiver$0.getStep());
    }

    public static final UIntProgression step(UIntProgression receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        UIntProgression.Companion companion = UIntProgression.Companion;
        int first = receiver$0.getFirst();
        int last = receiver$0.getLast();
        if (receiver$0.getStep() <= 0) {
            i = -i;
        }
        return companion.m1086fromClosedRangeNkh28Cs(first, last, i);
    }

    public static final ULongProgression step(ULongProgression receiver$0, long j) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        RangesKt.checkStepIsPositive(j > 0, Long.valueOf(j));
        ULongProgression.Companion companion = ULongProgression.Companion;
        long first = receiver$0.getFirst();
        long last = receiver$0.getLast();
        if (receiver$0.getStep() <= 0) {
            j = -j;
        }
        return companion.m1088fromClosedRange7ftBX0g(first, last, j);
    }

    /* renamed from: until-Kr8caGY  reason: not valid java name */
    public static final UIntRange m1098untilKr8caGY(byte b, byte b2) {
        return new UIntRange(UInt.m821constructorimpl(b & UByte.MAX_VALUE), UInt.m821constructorimpl(UInt.m821constructorimpl(b2 & UByte.MAX_VALUE) - 1), null);
    }

    /* renamed from: until-J1ME1BU  reason: not valid java name */
    public static final UIntRange m1097untilJ1ME1BU(int i, int i2) {
        return UnsignedKt.uintCompare(i2, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(i, UInt.m821constructorimpl(i2 - 1), null);
    }

    /* renamed from: until-eb3DHEI  reason: not valid java name */
    public static final ULongRange m1099untileb3DHEI(long j, long j2) {
        return UnsignedKt.ulongCompare(j2, 0L) <= 0 ? ULongRange.Companion.getEMPTY() : new ULongRange(j, ULong.m888constructorimpl(j2 - ULong.m888constructorimpl(1 & 4294967295L)), null);
    }

    /* renamed from: until-5PvTz6A  reason: not valid java name */
    public static final UIntRange m1096until5PvTz6A(short s, short s2) {
        return new UIntRange(UInt.m821constructorimpl(s & UShort.MAX_VALUE), UInt.m821constructorimpl(UInt.m821constructorimpl(s2 & UShort.MAX_VALUE) - 1), null);
    }
}
