package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
public class DiffUtil {
    private static final Comparator<Snake> SNAKE_COMPARATOR = new Comparator<Snake>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        public int compare(Snake snake, Snake snake2) {
            int i = snake.f64x - snake2.f64x;
            return i == 0 ? snake.f65y - snake2.f65y : i;
        }
    };

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    /* loaded from: classes.dex */
    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(T t, T t2);

        public abstract boolean areItemsTheSame(T t, T t2);

        public Object getChangePayload(T t, T t2) {
            return null;
        }
    }

    private DiffUtil() {
    }

    public static DiffResult calculateDiff(Callback callback) {
        return calculateDiff(callback, true);
    }

    public static DiffResult calculateDiff(Callback callback, boolean z) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int abs = oldListSize + newListSize + Math.abs(oldListSize - newListSize);
        int i = abs * 2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake diffPartial = diffPartial(callback, range.oldListStart, range.oldListEnd, range.newListStart, range.newListEnd, iArr, iArr2, abs);
            if (diffPartial != null) {
                if (diffPartial.size > 0) {
                    arrayList.add(diffPartial);
                }
                diffPartial.f64x += range.oldListStart;
                diffPartial.f65y += range.newListStart;
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                if (diffPartial.reverse) {
                    range2.oldListEnd = diffPartial.f64x;
                    range2.newListEnd = diffPartial.f65y;
                } else if (diffPartial.removal) {
                    range2.oldListEnd = diffPartial.f64x - 1;
                    range2.newListEnd = diffPartial.f65y;
                } else {
                    range2.oldListEnd = diffPartial.f64x;
                    range2.newListEnd = diffPartial.f65y - 1;
                }
                arrayList2.add(range2);
                if (!diffPartial.reverse) {
                    range.oldListStart = diffPartial.f64x + diffPartial.size;
                    range.newListStart = diffPartial.f65y + diffPartial.size;
                } else if (diffPartial.removal) {
                    range.oldListStart = diffPartial.f64x + diffPartial.size + 1;
                    range.newListStart = diffPartial.f65y + diffPartial.size;
                } else {
                    range.oldListStart = diffPartial.f64x + diffPartial.size;
                    range.newListStart = diffPartial.f65y + diffPartial.size + 1;
                }
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, SNAKE_COMPARATOR);
        return new DiffResult(callback, arrayList, iArr, iArr2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
        if (r24[r13 - 1] < r24[r13 + r5]) goto L_0x004d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ba, code lost:
        if (r25[r12 - 1] < r25[r12 + 1]) goto L_0x00c7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e3 A[LOOP:4: B:49:0x00cf->B:53:0x00e3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00ee A[EDGE_INSN: B:84:0x00ee->B:55:0x00ee ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Snake diffPartial(Callback callback, int i, int i2, int i3, int i4, int[] iArr, int[] iArr2, int i5) {
        boolean z;
        int i6;
        int i7;
        int i8;
        boolean z2;
        int i9;
        int i10;
        int i11 = i2 - i;
        int i12 = i4 - i3;
        int i13 = 1;
        if (i11 < 1 || i12 < 1) {
            return null;
        }
        int i14 = i11 - i12;
        int i15 = ((i11 + i12) + 1) / 2;
        int i16 = (i5 - i15) - 1;
        int i17 = i5 + i15 + 1;
        boolean z3 = false;
        Arrays.fill(iArr, i16, i17, 0);
        Arrays.fill(iArr2, i16 + i14, i17 + i14, i11);
        boolean z4 = i14 % 2 != 0;
        int i18 = 0;
        while (i18 <= i15) {
            int i19 = -i18;
            int i20 = i19;
            while (i20 <= i18) {
                if (i20 != i19) {
                    if (i20 != i18) {
                        int i21 = i5 + i20;
                    }
                    i9 = iArr[(i5 + i20) - i13] + i13;
                    z2 = i13;
                    for (i10 = i9 - i20; i9 < i11 && i10 < i12 && callback.areItemsTheSame(i + i9, i3 + i10); i10++) {
                        i9++;
                    }
                    int i22 = i5 + i20;
                    iArr[i22] = i9;
                    if (z4 || i20 < (i14 - i18) + 1 || i20 > (i14 + i18) - 1 || iArr[i22] < iArr2[i22]) {
                        z3 = false;
                        i20 += 2;
                        i13 = 1;
                    } else {
                        Snake snake = new Snake();
                        snake.f64x = iArr2[i22];
                        snake.f65y = snake.f64x - i20;
                        snake.size = iArr[i22] - iArr2[i22];
                        snake.removal = z2;
                        snake.reverse = false;
                        return snake;
                    }
                }
                i9 = iArr[i5 + i20 + i13];
                z2 = z3;
                while (i9 < i11) {
                    i9++;
                }
                int i222 = i5 + i20;
                iArr[i222] = i9;
                if (z4) {
                }
                z3 = false;
                i20 += 2;
                i13 = 1;
            }
            boolean z5 = z3;
            int i23 = i19;
            while (i23 <= i18) {
                int i24 = i23 + i14;
                if (i24 != i18 + i14) {
                    if (i24 != i19 + i14) {
                        int i25 = i5 + i24;
                        i8 = 1;
                    } else {
                        i8 = 1;
                    }
                    i6 = iArr2[(i5 + i24) + i8] - i8;
                    z = i8;
                    i7 = i6 - i24;
                    while (i6 > 0 && i7 > 0) {
                        i11 = i11;
                        if (callback.areItemsTheSame((i + i6) - 1, (i3 + i7) - 1)) {
                            break;
                        }
                        i6--;
                        i7--;
                        i11 = i11;
                    }
                    i11 = i11;
                    int i26 = i5 + i24;
                    iArr2[i26] = i6;
                    if (!z4 || i24 < i19 || i24 > i18 || iArr[i26] < iArr2[i26]) {
                        i23 += 2;
                        z5 = false;
                    } else {
                        Snake snake2 = new Snake();
                        snake2.f64x = iArr2[i26];
                        snake2.f65y = snake2.f64x - i24;
                        snake2.size = iArr[i26] - iArr2[i26];
                        snake2.removal = z;
                        snake2.reverse = true;
                        return snake2;
                    }
                } else {
                    i8 = 1;
                }
                i6 = iArr2[(i5 + i24) - i8];
                z = z5;
                i7 = i6 - i24;
                while (i6 > 0) {
                    i11 = i11;
                    if (callback.areItemsTheSame((i + i6) - 1, (i3 + i7) - 1)) {
                    }
                }
                i11 = i11;
                int i262 = i5 + i24;
                iArr2[i262] = i6;
                if (!z4) {
                }
                i23 += 2;
                z5 = false;
            }
            i13 = 1;
            i18++;
            i11 = i11;
            z3 = false;
        }
        throw new IllegalStateException("DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Snake {
        boolean removal;
        boolean reverse;
        int size;

        /* renamed from: x */
        int f64x;

        /* renamed from: y */
        int f65y;

        Snake() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        public Range(int i, int i2, int i3, int i4) {
            this.oldListStart = i;
            this.oldListEnd = i2;
            this.newListStart = i3;
            this.newListEnd = i4;
        }
    }

    /* loaded from: classes.dex */
    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_IGNORE = 16;
        private static final int FLAG_MASK = 31;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 5;
        public static final int NO_POSITION = -1;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;
        private final List<Snake> mSnakes;

        DiffResult(Callback callback, List<Snake> list, int[] iArr, int[] iArr2, boolean z) {
            this.mSnakes = list;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = z;
            addRootSnake();
            findMatchingItems();
        }

        private void addRootSnake() {
            Snake snake = this.mSnakes.isEmpty() ? null : this.mSnakes.get(0);
            if (snake == null || snake.f64x != 0 || snake.f65y != 0) {
                Snake snake2 = new Snake();
                snake2.f64x = 0;
                snake2.f65y = 0;
                snake2.removal = false;
                snake2.size = 0;
                snake2.reverse = false;
                this.mSnakes.add(0, snake2);
            }
        }

        private void findMatchingItems() {
            int i = this.mOldListSize;
            int i2 = this.mNewListSize;
            for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
                Snake snake = this.mSnakes.get(size);
                int i3 = snake.f64x + snake.size;
                int i4 = snake.f65y + snake.size;
                if (this.mDetectMoves) {
                    while (i > i3) {
                        findAddition(i, i2, size);
                        i--;
                    }
                    while (i2 > i4) {
                        findRemoval(i, i2, size);
                        i2--;
                    }
                }
                for (int i5 = 0; i5 < snake.size; i5++) {
                    int i6 = snake.f64x + i5;
                    int i7 = snake.f65y + i5;
                    int i8 = this.mCallback.areContentsTheSame(i6, i7) ? 1 : 2;
                    this.mOldItemStatuses[i6] = (i7 << 5) | i8;
                    this.mNewItemStatuses[i7] = (i6 << 5) | i8;
                }
                i = snake.f64x;
                i2 = snake.f65y;
            }
        }

        private void findAddition(int i, int i2, int i3) {
            if (this.mOldItemStatuses[i - 1] == 0) {
                findMatchingItem(i, i2, i3, false);
            }
        }

        private void findRemoval(int i, int i2, int i3) {
            if (this.mNewItemStatuses[i2 - 1] == 0) {
                findMatchingItem(i, i2, i3, true);
            }
        }

        public int convertOldPositionToNew(int i) {
            if (i < 0 || i >= this.mOldListSize) {
                throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", old list size = " + this.mOldListSize);
            }
            int i2 = this.mOldItemStatuses[i];
            if ((i2 & 31) == 0) {
                return -1;
            }
            return i2 >> 5;
        }

        public int convertNewPositionToOld(int i) {
            if (i < 0 || i >= this.mNewListSize) {
                throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i + ", new list size = " + this.mNewListSize);
            }
            int i2 = this.mNewItemStatuses[i];
            if ((i2 & 31) == 0) {
                return -1;
            }
            return i2 >> 5;
        }

        private boolean findMatchingItem(int i, int i2, int i3, boolean z) {
            int i4;
            int i5;
            if (z) {
                i2--;
                i4 = i;
                i5 = i2;
            } else {
                i5 = i - 1;
                i4 = i5;
            }
            while (i3 >= 0) {
                Snake snake = this.mSnakes.get(i3);
                int i6 = snake.f64x + snake.size;
                int i7 = snake.f65y + snake.size;
                int i8 = 8;
                if (z) {
                    for (int i9 = i4 - 1; i9 >= i6; i9--) {
                        if (this.mCallback.areItemsTheSame(i9, i5)) {
                            if (!this.mCallback.areContentsTheSame(i9, i5)) {
                                i8 = 4;
                            }
                            this.mNewItemStatuses[i5] = (i9 << 5) | 16;
                            this.mOldItemStatuses[i9] = (i5 << 5) | i8;
                            return true;
                        }
                    }
                    continue;
                } else {
                    for (int i10 = i2 - 1; i10 >= i7; i10--) {
                        if (this.mCallback.areItemsTheSame(i5, i10)) {
                            if (!this.mCallback.areContentsTheSame(i5, i10)) {
                                i8 = 4;
                            }
                            int i11 = i - 1;
                            this.mOldItemStatuses[i11] = (i10 << 5) | 16;
                            this.mNewItemStatuses[i10] = (i11 << 5) | i8;
                            return true;
                        }
                    }
                    continue;
                }
                i4 = snake.f64x;
                i2 = snake.f65y;
                i3--;
            }
            return false;
        }

        public void dispatchUpdatesTo(RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        public void dispatchUpdatesTo(ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            List<PostponedUpdate> arrayList = new ArrayList<>();
            int i = this.mOldListSize;
            int i2 = this.mNewListSize;
            int i3 = i2;
            for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
                Snake snake = this.mSnakes.get(size);
                int i4 = snake.size;
                int i5 = snake.f64x + i4;
                int i6 = snake.f65y + i4;
                if (i5 < i) {
                    dispatchRemovals(arrayList, batchingListUpdateCallback, i5, i - i5, i5);
                }
                if (i6 < i3) {
                    dispatchAdditions(arrayList, batchingListUpdateCallback, i5, i3 - i6, i6);
                }
                for (int i7 = i4 - 1; i7 >= 0; i7--) {
                    if ((this.mOldItemStatuses[snake.f64x + i7] & 31) == 2) {
                        batchingListUpdateCallback.onChanged(snake.f64x + i7, 1, this.mCallback.getChangePayload(snake.f64x + i7, snake.f65y + i7));
                    }
                }
                i = snake.f64x;
                i3 = snake.f65y;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }

        private static PostponedUpdate removePostponedUpdate(List<PostponedUpdate> list, int i, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                PostponedUpdate postponedUpdate = list.get(size);
                if (postponedUpdate.posInOwnerList == i && postponedUpdate.removal == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).currentPos += z ? 1 : -1;
                        size++;
                    }
                    return postponedUpdate;
                }
                size--;
            }
            return null;
        }

        private void dispatchAdditions(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onInserted(i, i2);
                return;
            }
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                int[] iArr = this.mNewItemStatuses;
                int i5 = i3 + i4;
                int i6 = iArr[i5] & 31;
                if (i6 == 0) {
                    listUpdateCallback.onInserted(i, 1);
                    for (PostponedUpdate postponedUpdate : list) {
                        postponedUpdate.currentPos++;
                    }
                } else if (i6 == 4 || i6 == 8) {
                    int i7 = iArr[i5] >> 5;
                    listUpdateCallback.onMoved(removePostponedUpdate(list, i7, true).currentPos, i);
                    if (i6 == 4) {
                        listUpdateCallback.onChanged(i, 1, this.mCallback.getChangePayload(i7, i5));
                    }
                } else if (i6 == 16) {
                    list.add(new PostponedUpdate(i5, i, false));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString(i6));
                }
            }
        }

        private void dispatchRemovals(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i, int i2, int i3) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onRemoved(i, i2);
                return;
            }
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                int[] iArr = this.mOldItemStatuses;
                int i5 = i3 + i4;
                int i6 = iArr[i5] & 31;
                if (i6 == 0) {
                    listUpdateCallback.onRemoved(i + i4, 1);
                    for (PostponedUpdate postponedUpdate : list) {
                        postponedUpdate.currentPos--;
                    }
                } else if (i6 == 4 || i6 == 8) {
                    int i7 = iArr[i5] >> 5;
                    PostponedUpdate removePostponedUpdate = removePostponedUpdate(list, i7, false);
                    listUpdateCallback.onMoved(i + i4, removePostponedUpdate.currentPos - 1);
                    if (i6 == 4) {
                        listUpdateCallback.onChanged(removePostponedUpdate.currentPos - 1, 1, this.mCallback.getChangePayload(i5, i7));
                    }
                } else if (i6 == 16) {
                    list.add(new PostponedUpdate(i5, i + i4, true));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + i5 + " " + Long.toBinaryString(i6));
                }
            }
        }

        List<Snake> getSnakes() {
            return this.mSnakes;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        public PostponedUpdate(int i, int i2, boolean z) {
            this.posInOwnerList = i;
            this.currentPos = i2;
            this.removal = z;
        }
    }
}
