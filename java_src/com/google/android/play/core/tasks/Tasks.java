package com.google.android.play.core.tasks;

import com.google.android.play.core.internal.C1119ax;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public final class Tasks {
    private Tasks() {
    }

    /* renamed from: a */
    public static <ResultT> Task<ResultT> m93a(ResultT resultt) {
        C1281m mVar = new C1281m();
        mVar.m75a(resultt);
        return mVar;
    }

    public static <ResultT> ResultT await(Task<ResultT> task) throws ExecutionException, InterruptedException {
        C1119ax.m401d(task, "Task must not be null");
        if (task.isComplete()) {
            return (ResultT) m91c(task);
        }
        C1282n nVar = new C1282n(null);
        m90d(task, nVar);
        nVar.m68a();
        return (ResultT) m91c(task);
    }

    public static <ResultT> ResultT await(Task<ResultT> task, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        C1119ax.m401d(task, "Task must not be null");
        C1119ax.m401d(timeUnit, "TimeUnit must not be null");
        if (task.isComplete()) {
            return (ResultT) m91c(task);
        }
        C1282n nVar = new C1282n(null);
        m90d(task, nVar);
        if (nVar.m67b(j, timeUnit)) {
            return (ResultT) m91c(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    /* renamed from: b */
    public static <ResultT> Task<ResultT> m92b(Exception exc) {
        C1281m mVar = new C1281m();
        mVar.m73c(exc);
        return mVar;
    }

    /* renamed from: c */
    private static <ResultT> ResultT m91c(Task<ResultT> task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        throw new ExecutionException(task.getException());
    }

    /* renamed from: d */
    private static void m90d(Task<?> task, C1282n nVar) {
        task.addOnSuccessListener(TaskExecutors.f897a, nVar);
        task.addOnFailureListener(TaskExecutors.f897a, nVar);
    }
}
