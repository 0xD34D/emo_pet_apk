package com.google.android.play.core.tasks;

import com.google.android.play.core.internal.C1119ax;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.m */
/* loaded from: classes.dex */
public final class C1281m<ResultT> extends Task<ResultT> {

    /* renamed from: a */
    private final Object f918a = new Object();

    /* renamed from: b */
    private final C1276h<ResultT> f919b = new C1276h<>();

    /* renamed from: c */
    private boolean f920c;

    /* renamed from: d */
    private ResultT f921d;

    /* renamed from: e */
    private Exception f922e;

    /* renamed from: e */
    private final void m71e() {
        C1119ax.m402c(this.f920c, "Task is not yet complete");
    }

    /* renamed from: f */
    private final void m70f() {
        C1119ax.m402c(!this.f920c, "Task is already complete");
    }

    /* renamed from: g */
    private final void m69g() {
        synchronized (this.f918a) {
            if (this.f920c) {
                this.f919b.m81b(this);
            }
        }
    }

    /* renamed from: a */
    public final void m75a(ResultT resultt) {
        synchronized (this.f918a) {
            m70f();
            this.f920c = true;
            this.f921d = resultt;
        }
        this.f919b.m81b(this);
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnCompleteListener(OnCompleteListener<ResultT> onCompleteListener) {
        this.f919b.m82a(new C1270b(TaskExecutors.MAIN_THREAD, onCompleteListener));
        m69g();
        return this;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnCompleteListener(Executor executor, OnCompleteListener<ResultT> onCompleteListener) {
        this.f919b.m82a(new C1270b(executor, onCompleteListener));
        m69g();
        return this;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnFailureListener(OnFailureListener onFailureListener) {
        addOnFailureListener(TaskExecutors.MAIN_THREAD, onFailureListener);
        return this;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        this.f919b.m82a(new C1272d(executor, onFailureListener));
        m69g();
        return this;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnSuccessListener(OnSuccessListener<? super ResultT> onSuccessListener) {
        addOnSuccessListener(TaskExecutors.MAIN_THREAD, onSuccessListener);
        return this;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Task<ResultT> addOnSuccessListener(Executor executor, OnSuccessListener<? super ResultT> onSuccessListener) {
        this.f919b.m82a(new C1274f(executor, onSuccessListener));
        m69g();
        return this;
    }

    /* renamed from: b */
    public final boolean m74b(ResultT resultt) {
        synchronized (this.f918a) {
            if (this.f920c) {
                return false;
            }
            this.f920c = true;
            this.f921d = resultt;
            this.f919b.m81b(this);
            return true;
        }
    }

    /* renamed from: c */
    public final void m73c(Exception exc) {
        synchronized (this.f918a) {
            m70f();
            this.f920c = true;
            this.f922e = exc;
        }
        this.f919b.m81b(this);
    }

    /* renamed from: d */
    public final boolean m72d(Exception exc) {
        synchronized (this.f918a) {
            if (this.f920c) {
                return false;
            }
            this.f920c = true;
            this.f922e = exc;
            this.f919b.m81b(this);
            return true;
        }
    }

    @Override // com.google.android.play.core.tasks.Task
    public final Exception getException() {
        Exception exc;
        synchronized (this.f918a) {
            exc = this.f922e;
        }
        return exc;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final ResultT getResult() {
        ResultT resultt;
        synchronized (this.f918a) {
            m71e();
            Exception exc = this.f922e;
            if (exc == null) {
                resultt = this.f921d;
            } else {
                throw new RuntimeExecutionException(exc);
            }
        }
        return resultt;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final <X extends Throwable> ResultT getResult(Class<X> cls) throws Throwable {
        ResultT resultt;
        synchronized (this.f918a) {
            m71e();
            if (!cls.isInstance(this.f922e)) {
                Exception exc = this.f922e;
                if (exc == null) {
                    resultt = this.f921d;
                } else {
                    throw new RuntimeExecutionException(exc);
                }
            } else {
                throw cls.cast(this.f922e);
            }
        }
        return resultt;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final boolean isComplete() {
        boolean z;
        synchronized (this.f918a) {
            z = this.f920c;
        }
        return z;
    }

    @Override // com.google.android.play.core.tasks.Task
    public final boolean isSuccessful() {
        boolean z;
        synchronized (this.f918a) {
            z = false;
            if (this.f920c && this.f922e == null) {
                z = true;
            }
        }
        return z;
    }
}
