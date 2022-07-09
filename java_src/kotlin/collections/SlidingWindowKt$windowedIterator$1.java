package kotlin.collections;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequenceScope;
/* compiled from: SlidingWindow.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006"}, m35d2 = {"<anonymous>", "", "T", "Lkotlin/sequences/SequenceScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m34k = 3, m33mv = {1, 1, 13})
@DebugMetadata(m28c = "kotlin/collections/SlidingWindowKt$windowedIterator$1", m27f = "SlidingWindow.kt", m26i = {0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 4, 4}, m25l = {33, 39, 46, 52, 55}, m24m = "invokeSuspend", m23n = {"gap", "buffer", "skip", "e", "gap", "buffer", "skip", "gap", "buffer", "e", "gap", "buffer", "gap", "buffer"}, m22s = {"I$0", "L$1", "I$1", "L$2", "I$0", "L$0", "I$1", "I$0", "L$1", "L$2", "I$0", "L$1", "I$0", "L$0"})
/* loaded from: classes.dex */
final class SlidingWindowKt$windowedIterator$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super List<? extends T>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Iterator $iterator;
    final /* synthetic */ boolean $partialWindows;
    final /* synthetic */ boolean $reuseBuffer;
    final /* synthetic */ int $size;
    final /* synthetic */ int $step;
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* renamed from: p$ */
    private SequenceScope f1029p$;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SlidingWindowKt$windowedIterator$1(int i, int i2, Iterator it, boolean z, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.$step = i;
        this.$size = i2;
        this.$iterator = it;
        this.$reuseBuffer = z;
        this.$partialWindows = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
        Intrinsics.checkParameterIsNotNull(completion, "completion");
        SlidingWindowKt$windowedIterator$1 slidingWindowKt$windowedIterator$1 = new SlidingWindowKt$windowedIterator$1(this.$step, this.$size, this.$iterator, this.$reuseBuffer, this.$partialWindows, completion);
        slidingWindowKt$windowedIterator$1.f1029p$ = (SequenceScope) obj;
        return slidingWindowKt$windowedIterator$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((SlidingWindowKt$windowedIterator$1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0108 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x018b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        SlidingWindowKt$windowedIterator$1 slidingWindowKt$windowedIterator$1;
        SequenceScope sequenceScope;
        int i;
        RingBuffer ringBuffer;
        Iterator it;
        RingBuffer ringBuffer2;
        int i2;
        SequenceScope sequenceScope2;
        int i3;
        SlidingWindowKt$windowedIterator$1 slidingWindowKt$windowedIterator$12;
        SequenceScope sequenceScope3;
        int i4;
        ArrayList arrayList;
        Iterator it2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = this.label;
        if (i5 != 0) {
            if (i5 != 1) {
                if (i5 == 2) {
                    ArrayList arrayList2 = (ArrayList) this.L$0;
                    if (obj instanceof Result.Failure) {
                        throw ((Result.Failure) obj).exception;
                    }
                } else if (i5 == 3) {
                    it = (Iterator) this.L$3;
                    ringBuffer = (RingBuffer) this.L$1;
                    i = this.I$0;
                    sequenceScope = (SequenceScope) this.L$0;
                    if (!(obj instanceof Result.Failure)) {
                        slidingWindowKt$windowedIterator$1 = this;
                        ringBuffer.removeFirst(slidingWindowKt$windowedIterator$1.$step);
                        while (it.hasNext()) {
                            Object next = it.next();
                            ringBuffer.add((RingBuffer) next);
                            if (ringBuffer.isFull()) {
                                ArrayList arrayList3 = slidingWindowKt$windowedIterator$1.$reuseBuffer ? ringBuffer : new ArrayList(ringBuffer);
                                slidingWindowKt$windowedIterator$1.L$0 = sequenceScope;
                                slidingWindowKt$windowedIterator$1.I$0 = i;
                                slidingWindowKt$windowedIterator$1.L$1 = ringBuffer;
                                slidingWindowKt$windowedIterator$1.L$2 = next;
                                slidingWindowKt$windowedIterator$1.L$3 = it;
                                slidingWindowKt$windowedIterator$1.label = 3;
                                if (sequenceScope.yield(arrayList3, slidingWindowKt$windowedIterator$1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                ringBuffer.removeFirst(slidingWindowKt$windowedIterator$1.$step);
                                while (it.hasNext()) {
                                }
                            }
                        }
                        if (slidingWindowKt$windowedIterator$1.$partialWindows) {
                            ringBuffer2 = ringBuffer;
                            i2 = i;
                            sequenceScope2 = sequenceScope;
                            if (ringBuffer2.size() <= slidingWindowKt$windowedIterator$1.$step) {
                            }
                        }
                    } else {
                        throw ((Result.Failure) obj).exception;
                    }
                } else if (i5 == 4) {
                    ringBuffer2 = (RingBuffer) this.L$1;
                    i2 = this.I$0;
                    sequenceScope2 = (SequenceScope) this.L$0;
                    if (!(obj instanceof Result.Failure)) {
                        slidingWindowKt$windowedIterator$1 = this;
                        ringBuffer2.removeFirst(slidingWindowKt$windowedIterator$1.$step);
                        if (ringBuffer2.size() <= slidingWindowKt$windowedIterator$1.$step) {
                            ArrayList arrayList4 = slidingWindowKt$windowedIterator$1.$reuseBuffer ? ringBuffer2 : new ArrayList(ringBuffer2);
                            slidingWindowKt$windowedIterator$1.L$0 = sequenceScope2;
                            slidingWindowKt$windowedIterator$1.I$0 = i2;
                            slidingWindowKt$windowedIterator$1.L$1 = ringBuffer2;
                            slidingWindowKt$windowedIterator$1.label = 4;
                            if (sequenceScope2.yield(arrayList4, slidingWindowKt$windowedIterator$1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            ringBuffer2.removeFirst(slidingWindowKt$windowedIterator$1.$step);
                            if (ringBuffer2.size() <= slidingWindowKt$windowedIterator$1.$step) {
                                if (!ringBuffer2.isEmpty()) {
                                    slidingWindowKt$windowedIterator$1.I$0 = i2;
                                    slidingWindowKt$windowedIterator$1.L$0 = ringBuffer2;
                                    slidingWindowKt$windowedIterator$1.label = 5;
                                    if (sequenceScope2.yield(ringBuffer2, slidingWindowKt$windowedIterator$1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                            }
                        }
                    } else {
                        throw ((Result.Failure) obj).exception;
                    }
                } else if (i5 == 5) {
                    RingBuffer ringBuffer3 = (RingBuffer) this.L$0;
                    if (obj instanceof Result.Failure) {
                        throw ((Result.Failure) obj).exception;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                return Unit.INSTANCE;
            }
            it2 = (Iterator) this.L$3;
            arrayList = (ArrayList) this.L$1;
            i4 = this.I$0;
            sequenceScope3 = (SequenceScope) this.L$0;
            if (!(obj instanceof Result.Failure)) {
                slidingWindowKt$windowedIterator$12 = this;
                if (!slidingWindowKt$windowedIterator$12.$reuseBuffer) {
                    arrayList.clear();
                } else {
                    arrayList = new ArrayList(slidingWindowKt$windowedIterator$12.$size);
                }
                i3 = i4;
                while (it2.hasNext()) {
                    Object next2 = it2.next();
                    if (i4 > 0) {
                        i4--;
                    } else {
                        arrayList.add(next2);
                        if (arrayList.size() == slidingWindowKt$windowedIterator$12.$size) {
                            slidingWindowKt$windowedIterator$12.L$0 = sequenceScope3;
                            slidingWindowKt$windowedIterator$12.I$0 = i3;
                            slidingWindowKt$windowedIterator$12.L$1 = arrayList;
                            slidingWindowKt$windowedIterator$12.I$1 = i4;
                            slidingWindowKt$windowedIterator$12.L$2 = next2;
                            slidingWindowKt$windowedIterator$12.L$3 = it2;
                            slidingWindowKt$windowedIterator$12.label = 1;
                            if (sequenceScope3.yield(arrayList, slidingWindowKt$windowedIterator$12) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            i4 = i3;
                            if (!slidingWindowKt$windowedIterator$12.$reuseBuffer) {
                            }
                            i3 = i4;
                            while (it2.hasNext()) {
                            }
                        }
                    }
                }
                if ((!arrayList.isEmpty()) && (slidingWindowKt$windowedIterator$12.$partialWindows || arrayList.size() == slidingWindowKt$windowedIterator$12.$size)) {
                    slidingWindowKt$windowedIterator$12.I$0 = i3;
                    slidingWindowKt$windowedIterator$12.L$0 = arrayList;
                    slidingWindowKt$windowedIterator$12.I$1 = i4;
                    slidingWindowKt$windowedIterator$12.label = 2;
                    if (sequenceScope3.yield(arrayList, slidingWindowKt$windowedIterator$12) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            throw ((Result.Failure) obj).exception;
        } else if (!(obj instanceof Result.Failure)) {
            SequenceScope sequenceScope4 = this.f1029p$;
            int i6 = this.$step - this.$size;
            if (i6 >= 0) {
                arrayList = new ArrayList(this.$size);
                i4 = 0;
                slidingWindowKt$windowedIterator$12 = this;
                sequenceScope3 = sequenceScope4;
                i3 = i6;
                it2 = this.$iterator;
                while (it2.hasNext()) {
                }
                if (!arrayList.isEmpty()) {
                    slidingWindowKt$windowedIterator$12.I$0 = i3;
                    slidingWindowKt$windowedIterator$12.L$0 = arrayList;
                    slidingWindowKt$windowedIterator$12.I$1 = i4;
                    slidingWindowKt$windowedIterator$12.label = 2;
                    if (sequenceScope3.yield(arrayList, slidingWindowKt$windowedIterator$12) == coroutine_suspended) {
                    }
                }
                return Unit.INSTANCE;
            }
            ringBuffer = new RingBuffer(this.$size);
            sequenceScope = sequenceScope4;
            slidingWindowKt$windowedIterator$1 = this;
            i = i6;
            it = this.$iterator;
            while (it.hasNext()) {
            }
            if (slidingWindowKt$windowedIterator$1.$partialWindows) {
            }
            return Unit.INSTANCE;
        } else {
            throw ((Result.Failure) obj).exception;
        }
    }
}
