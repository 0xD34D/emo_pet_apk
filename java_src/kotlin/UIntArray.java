package kotlin;

import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.collections.UIntIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
/* compiled from: UIntArray.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0014\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006B\u0014\b\u0001\u0012\u0006\u0010\u0007\u001a\u00020\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\tJ\u001b\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0013\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\u001b\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0004H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u0010\u001e\u001a\u00020\u0004HÖ\u0001J\u000f\u0010\u001f\u001a\u00020\u000fH\u0016¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020#H\u0096\u0002¢\u0006\u0004\b$\u0010%J#\u0010&\u001a\u00020'2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\t\u0010+\u001a\u00020,HÖ\u0001R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006."}, m35d2 = {"Lkotlin/UIntArray;", "", "Lkotlin/UInt;", "size", "", "constructor-impl", "(I)[I", "storage", "", "([I)[I", "getSize-impl", "([I)I", "storage$annotations", "()V", "contains", "", "element", "contains-WZ4Q5Ns", "([II)Z", "containsAll", "elements", "containsAll-impl", "([ILjava/util/Collection;)Z", "equals", "other", "", "get", "index", "get-impl", "([II)I", "hashCode", "isEmpty", "isEmpty-impl", "([I)Z", "iterator", "Lkotlin/collections/UIntIterator;", "iterator-impl", "([I)Lkotlin/collections/UIntIterator;", "set", "", "value", "set-VXSXFK8", "([III)V", "toString", "", "Iterator", "kotlin-stdlib"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class UIntArray implements Collection<UInt>, KMappedMarker {
    private final int[] storage;

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int[] m865constructorimpl(int[] storage) {
        Intrinsics.checkParameterIsNotNull(storage, "storage");
        return storage;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m868equalsimpl(int[] iArr, Object obj) {
        return (obj instanceof UIntArray) && Intrinsics.areEqual(iArr, ((UIntArray) obj).m879unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m869equalsimpl0(int[] p1, int[] p2) {
        Intrinsics.checkParameterIsNotNull(p1, "p1");
        Intrinsics.checkParameterIsNotNull(p2, "p2");
        throw null;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m872hashCodeimpl(int[] iArr) {
        if (iArr != null) {
            return Arrays.hashCode(iArr);
        }
        return 0;
    }

    public static /* synthetic */ void storage$annotations() {
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m876toStringimpl(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ")";
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(UInt uInt) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-WZ4Q5Ns  reason: not valid java name */
    public boolean m877addWZ4Q5Ns(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UInt> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: contains-WZ4Q5Ns  reason: not valid java name */
    public boolean m878containsWZ4Q5Ns(int i) {
        return m866containsWZ4Q5Ns(this.storage, i);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        return m867containsAllimpl(this.storage, collection);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m868equalsimpl(this.storage, obj);
    }

    public int getSize() {
        return m871getSizeimpl(this.storage);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m872hashCodeimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m873isEmptyimpl(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public UIntIterator iterator() {
        return m874iteratorimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    public String toString() {
        return m876toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int[] m879unboximpl() {
        return this.storage;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UInt) {
            return m878containsWZ4Q5Ns(((UInt) obj).m862unboximpl());
        }
        return false;
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    private /* synthetic */ UIntArray(int[] storage) {
        Intrinsics.checkParameterIsNotNull(storage, "storage");
        this.storage = storage;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int[] m864constructorimpl(int i) {
        return m865constructorimpl(new int[i]);
    }

    /* renamed from: get-impl  reason: not valid java name */
    public static final int m870getimpl(int[] iArr, int i) {
        return UInt.m821constructorimpl(iArr[i]);
    }

    /* renamed from: set-VXSXFK8  reason: not valid java name */
    public static final void m875setVXSXFK8(int[] iArr, int i, int i2) {
        iArr[i] = i2;
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static int m871getSizeimpl(int[] iArr) {
        return iArr.length;
    }

    /* renamed from: iterator-impl  reason: not valid java name */
    public static UIntIterator m874iteratorimpl(int[] iArr) {
        return new Iterator(iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UIntArray.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\bH\u0096\u0002J\u0010\u0010\t\u001a\u00020\nH\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m35d2 = {"Lkotlin/UIntArray$Iterator;", "Lkotlin/collections/UIntIterator;", "array", "", "([I)V", "index", "", "hasNext", "", "nextUInt", "Lkotlin/UInt;", "()I", "kotlin-stdlib"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public static final class Iterator extends UIntIterator {
        private final int[] array;
        private int index;

        public Iterator(int[] array) {
            Intrinsics.checkParameterIsNotNull(array, "array");
            this.array = array;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // kotlin.collections.UIntIterator
        public int nextUInt() {
            int i = this.index;
            int[] iArr = this.array;
            if (i < iArr.length) {
                this.index = i + 1;
                return UInt.m821constructorimpl(iArr[i]);
            }
            throw new NoSuchElementException(String.valueOf(this.index));
        }
    }

    /* renamed from: contains-WZ4Q5Ns  reason: not valid java name */
    public static boolean m866containsWZ4Q5Ns(int[] iArr, int i) {
        return ArraysKt.contains(iArr, i);
    }

    /* renamed from: containsAll-impl  reason: not valid java name */
    public static boolean m867containsAllimpl(int[] iArr, Collection<UInt> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        Collection<UInt> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (UInt uInt : collection) {
            if (!ArraysKt.contains(iArr, uInt.m862unboximpl())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static boolean m873isEmptyimpl(int[] iArr) {
        return iArr.length == 0;
    }
}
