package kotlin.random;

import java.util.Random;
import kotlin.Metadata;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PlatformRandom.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\t\u0010\u0000\u001a\u00020\u0001H\u0081\b\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0000\u001a\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0000\u001a\f\u0010\t\u001a\u00020\n*\u00020\u0001H\u0007\u001a\f\u0010\u000b\u001a\u00020\u0001*\u00020\nH\u0007¨\u0006\f"}, m35d2 = {"defaultPlatformRandom", "Lkotlin/random/Random;", "doubleFromParts", "", "hi26", "", "low27", "fastLog2", "value", "asJavaRandom", "Ljava/util/Random;", "asKotlinRandom", "kotlin-stdlib"}, m34k = 2, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class PlatformRandomKt {
    public static final double doubleFromParts(int i, int i2) {
        return ((i << 27) + i2) / 9007199254740992L;
    }

    public static final Random asJavaRandom(Random receiver$0) {
        Random impl;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        AbstractPlatformRandom abstractPlatformRandom = (AbstractPlatformRandom) (!(receiver$0 instanceof AbstractPlatformRandom) ? null : receiver$0);
        return (abstractPlatformRandom == null || (impl = abstractPlatformRandom.getImpl()) == null) ? new KotlinRandom(receiver$0) : impl;
    }

    public static final Random asKotlinRandom(Random receiver$0) {
        Random impl;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        KotlinRandom kotlinRandom = (KotlinRandom) (!(receiver$0 instanceof KotlinRandom) ? null : receiver$0);
        return (kotlinRandom == null || (impl = kotlinRandom.getImpl()) == null) ? new PlatformRandom(receiver$0) : impl;
    }

    private static final Random defaultPlatformRandom() {
        return PlatformImplementationsKt.IMPLEMENTATIONS.defaultPlatformRandom();
    }

    public static final int fastLog2(int i) {
        return 31 - Integer.numberOfLeadingZeros(i);
    }
}
