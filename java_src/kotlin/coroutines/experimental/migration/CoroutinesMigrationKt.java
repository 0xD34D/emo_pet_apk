package kotlin.coroutines.experimental.migration;

import kotlin.Metadata;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.experimental.Continuation;
import kotlin.coroutines.experimental.CoroutineContext;
import kotlin.coroutines.experimental.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CoroutinesMigration.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a\f\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0007\u001a\f\u0010\u0007\u001a\u00020\b*\u00020\tH\u0007\u001a\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001a\f\u0010\u000b\u001a\u00020\u0006*\u00020\u0005H\u0007\u001a\f\u0010\f\u001a\u00020\t*\u00020\bH\u0007\u001a^\u0010\r\u001a\"\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000e\"\u0004\b\u0000\u0010\u000f\"\u0004\b\u0001\u0010\u0010\"\u0004\b\u0002\u0010\u0011*\"\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u000eH\u0000\u001aL\u0010\r\u001a\u001c\u0012\u0004\u0012\u0002H\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0013\"\u0004\b\u0000\u0010\u000f\"\u0004\b\u0001\u0010\u0011*\u001c\u0012\u0004\u0012\u0002H\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0013H\u0000\u001a:\u0010\r\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0014\"\u0004\b\u0000\u0010\u0011*\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0014H\u0000¨\u0006\u0015"}, m35d2 = {"toContinuation", "Lkotlin/coroutines/Continuation;", "T", "Lkotlin/coroutines/experimental/Continuation;", "toContinuationInterceptor", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlin/coroutines/experimental/ContinuationInterceptor;", "toCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/experimental/CoroutineContext;", "toExperimentalContinuation", "toExperimentalContinuationInterceptor", "toExperimentalCoroutineContext", "toExperimentalSuspendFunction", "Lkotlin/Function3;", "T1", "T2", "R", "", "Lkotlin/Function2;", "Lkotlin/Function1;", "kotlin-stdlib_coroutinesExperimental"}, m34k = 2, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class CoroutinesMigrationKt {
    public static final <T> Continuation<T> toExperimentalContinuation(kotlin.coroutines.Continuation<? super T> receiver$0) {
        Continuation<T> continuation;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ContinuationMigration continuationMigration = (ContinuationMigration) (!(receiver$0 instanceof ContinuationMigration) ? null : receiver$0);
        return (continuationMigration == null || (continuation = continuationMigration.getContinuation()) == null) ? new ExperimentalContinuationMigration(receiver$0) : continuation;
    }

    public static final <T> kotlin.coroutines.Continuation<T> toContinuation(Continuation<? super T> receiver$0) {
        kotlin.coroutines.Continuation<T> continuation;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ExperimentalContinuationMigration experimentalContinuationMigration = (ExperimentalContinuationMigration) (!(receiver$0 instanceof ExperimentalContinuationMigration) ? null : receiver$0);
        return (experimentalContinuationMigration == null || (continuation = experimentalContinuationMigration.getContinuation()) == null) ? new ContinuationMigration(receiver$0) : continuation;
    }

    public static final CoroutineContext toExperimentalCoroutineContext(kotlin.coroutines.CoroutineContext receiver$0) {
        EmptyCoroutineContext emptyCoroutineContext;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) receiver$0.get(ContinuationInterceptor.Key);
        ContextMigration contextMigration = (ContextMigration) receiver$0.get(ContextMigration.Key);
        kotlin.coroutines.CoroutineContext minusKey = receiver$0.minusKey(ContinuationInterceptor.Key).minusKey(ContextMigration.Key);
        if (contextMigration == null || (emptyCoroutineContext = contextMigration.getContext()) == null) {
            emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if (minusKey != kotlin.coroutines.EmptyCoroutineContext.INSTANCE) {
            emptyCoroutineContext = emptyCoroutineContext.plus(new ExperimentalContextMigration(minusKey));
        }
        return continuationInterceptor == null ? emptyCoroutineContext : emptyCoroutineContext.plus(toExperimentalContinuationInterceptor(continuationInterceptor));
    }

    public static final kotlin.coroutines.CoroutineContext toCoroutineContext(CoroutineContext receiver$0) {
        kotlin.coroutines.EmptyCoroutineContext emptyCoroutineContext;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        kotlin.coroutines.experimental.ContinuationInterceptor continuationInterceptor = (kotlin.coroutines.experimental.ContinuationInterceptor) receiver$0.get(kotlin.coroutines.experimental.ContinuationInterceptor.Key);
        ExperimentalContextMigration experimentalContextMigration = (ExperimentalContextMigration) receiver$0.get(ExperimentalContextMigration.Key);
        CoroutineContext minusKey = receiver$0.minusKey(kotlin.coroutines.experimental.ContinuationInterceptor.Key).minusKey(ExperimentalContextMigration.Key);
        if (experimentalContextMigration == null || (emptyCoroutineContext = experimentalContextMigration.getContext()) == null) {
            emptyCoroutineContext = kotlin.coroutines.EmptyCoroutineContext.INSTANCE;
        }
        if (minusKey != EmptyCoroutineContext.INSTANCE) {
            emptyCoroutineContext = emptyCoroutineContext.plus(new ContextMigration(minusKey));
        }
        return continuationInterceptor == null ? emptyCoroutineContext : emptyCoroutineContext.plus(toContinuationInterceptor(continuationInterceptor));
    }

    public static final kotlin.coroutines.experimental.ContinuationInterceptor toExperimentalContinuationInterceptor(ContinuationInterceptor receiver$0) {
        kotlin.coroutines.experimental.ContinuationInterceptor interceptor;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ContinuationInterceptorMigration continuationInterceptorMigration = (ContinuationInterceptorMigration) (!(receiver$0 instanceof ContinuationInterceptorMigration) ? null : receiver$0);
        return (continuationInterceptorMigration == null || (interceptor = continuationInterceptorMigration.getInterceptor()) == null) ? new ExperimentalContinuationInterceptorMigration(receiver$0) : interceptor;
    }

    public static final ContinuationInterceptor toContinuationInterceptor(kotlin.coroutines.experimental.ContinuationInterceptor receiver$0) {
        ContinuationInterceptor interceptor;
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ExperimentalContinuationInterceptorMigration experimentalContinuationInterceptorMigration = (ExperimentalContinuationInterceptorMigration) (!(receiver$0 instanceof ExperimentalContinuationInterceptorMigration) ? null : receiver$0);
        return (experimentalContinuationInterceptorMigration == null || (interceptor = experimentalContinuationInterceptorMigration.getInterceptor()) == null) ? new ContinuationInterceptorMigration(receiver$0) : interceptor;
    }

    public static final <R> Function1<Continuation<? super R>, Object> toExperimentalSuspendFunction(Function1<? super kotlin.coroutines.Continuation<? super R>, ? extends Object> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new ExperimentalSuspendFunction0Migration(receiver$0);
    }

    public static final <T1, R> Function2<T1, Continuation<? super R>, Object> toExperimentalSuspendFunction(Function2<? super T1, ? super kotlin.coroutines.Continuation<? super R>, ? extends Object> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new ExperimentalSuspendFunction1Migration(receiver$0);
    }

    public static final <T1, T2, R> Function3<T1, T2, Continuation<? super R>, Object> toExperimentalSuspendFunction(Function3<? super T1, ? super T2, ? super kotlin.coroutines.Continuation<? super R>, ? extends Object> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new ExperimentalSuspendFunction2Migration(receiver$0);
    }
}
