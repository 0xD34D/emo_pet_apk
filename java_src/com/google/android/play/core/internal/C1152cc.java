package com.google.android.play.core.internal;
/* renamed from: com.google.android.play.core.internal.cc */
/* loaded from: classes.dex */
public final class C1152cc<T> implements AbstractC1154ce, AbstractC1150ca {

    /* renamed from: a */
    private static final Object f662a = new Object();

    /* renamed from: b */
    private volatile AbstractC1154ce<T> f663b;

    /* renamed from: c */
    private volatile Object f664c = f662a;

    private C1152cc(AbstractC1154ce<T> ceVar) {
        this.f663b = ceVar;
    }

    /* renamed from: b */
    public static <P extends AbstractC1154ce<T>, T> AbstractC1154ce<T> m339b(P p) {
        C1130bh.m369j(p);
        return p instanceof C1152cc ? p : new C1152cc(p);
    }

    /* renamed from: c */
    public static <P extends AbstractC1154ce<T>, T> AbstractC1150ca<T> m338c(P p) {
        if (p instanceof AbstractC1150ca) {
            return (AbstractC1150ca) p;
        }
        C1130bh.m369j(p);
        return new C1152cc(p);
    }

    @Override // com.google.android.play.core.internal.AbstractC1154ce
    /* renamed from: a */
    public final T mo94a() {
        T t = (T) this.f664c;
        Object obj = f662a;
        if (t == obj) {
            synchronized (this) {
                t = this.f664c;
                if (t == obj) {
                    t = this.f663b.mo94a();
                    Object obj2 = this.f664c;
                    if (!(obj2 == obj || (obj2 instanceof C1153cd) || obj2 == t)) {
                        String valueOf = String.valueOf(obj2);
                        String valueOf2 = String.valueOf(t);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 118 + String.valueOf(valueOf2).length());
                        sb.append("Scoped provider was invoked recursively returning different results: ");
                        sb.append(valueOf);
                        sb.append(" & ");
                        sb.append(valueOf2);
                        sb.append(". This is likely due to a circular dependency.");
                        throw new IllegalStateException(sb.toString());
                    }
                    this.f664c = t;
                    this.f663b = null;
                }
            }
        }
        return t;
    }
}
