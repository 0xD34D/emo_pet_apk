package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: _CollectionsJvm.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000>\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a(\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005\u001aA\u0010\u0006\u001a\u0002H\u0007\"\u0010\b\u0000\u0010\u0007*\n\u0012\u0006\b\u0000\u0012\u0002H\u00020\b\"\u0004\b\u0001\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\t\u001a\u0002H\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\n\u001a\u0016\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u000e\u001a&\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\r0\u0010\"\u000e\b\u0000\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u0011*\b\u0012\u0004\u0012\u0002H\r0\u0003\u001a8\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\r0\u0010\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u00032\u001a\u0010\u0012\u001a\u0016\u0012\u0006\b\u0000\u0012\u0002H\r0\u0013j\n\u0012\u0006\b\u0000\u0012\u0002H\r`\u0014¨\u0006\u0015"}, m35d2 = {"filterIsInstance", "", "R", "", "klass", "Ljava/lang/Class;", "filterIsInstanceTo", "C", "", "destination", "(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;", "reverse", "", "T", "", "toSortedSet", "Ljava/util/SortedSet;", "", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "kotlin-stdlib"}, m34k = 5, m33mv = {1, 1, 13}, m31xi = 1, m30xs = "kotlin/collections/CollectionsKt")
/* loaded from: classes.dex */
class CollectionsKt___CollectionsJvmKt extends CollectionsKt__ReversedViewsKt {
    public static final <R> List<R> filterIsInstance(Iterable<?> receiver$0, Class<R> klass) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(klass, "klass");
        return (List) CollectionsKt.filterIsInstanceTo(receiver$0, new ArrayList(), klass);
    }

    public static final <C extends Collection<? super R>, R> C filterIsInstanceTo(Iterable<?> receiver$0, C destination, Class<R> klass) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        Intrinsics.checkParameterIsNotNull(klass, "klass");
        for (Object obj : receiver$0) {
            if (klass.isInstance(obj)) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static final <T> void reverse(List<T> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Collections.reverse(receiver$0);
    }

    public static final <T extends Comparable<? super T>> SortedSet<T> toSortedSet(Iterable<? extends T> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return (SortedSet) CollectionsKt.toCollection(receiver$0, new TreeSet());
    }

    public static final <T> SortedSet<T> toSortedSet(Iterable<? extends T> receiver$0, Comparator<? super T> comparator) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        return (SortedSet) CollectionsKt.toCollection(receiver$0, new TreeSet(comparator));
    }
}
