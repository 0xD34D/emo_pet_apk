package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.play.core.internal.aq */
/* loaded from: classes.dex */
public final class C1112aq<T extends IInterface> {

    /* renamed from: a */
    private static final Map<String, Handler> f616a = new HashMap();

    /* renamed from: b */
    private final Context f617b;

    /* renamed from: c */
    private final C1102ag f618c;

    /* renamed from: d */
    private final String f619d;

    /* renamed from: f */
    private boolean f621f;

    /* renamed from: g */
    private final Intent f622g;

    /* renamed from: h */
    private final AbstractC1108am<T> f623h;

    /* renamed from: k */
    private ServiceConnection f626k;

    /* renamed from: l */
    private T f627l;

    /* renamed from: e */
    private final List<AbstractRunnableC1103ah> f620e = new ArrayList();

    /* renamed from: j */
    private final IBinder.DeathRecipient f625j = new IBinder.DeathRecipient(this) { // from class: com.google.android.play.core.internal.ai

        /* renamed from: a */
        private final C1112aq f608a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f608a = this;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            this.f608a.m420n();
        }
    };

    /* renamed from: i */
    private final WeakReference<AbstractC1107al> f624i = new WeakReference<>(null);

    public C1112aq(Context context, C1102ag agVar, String str, Intent intent, AbstractC1108am<T> amVar) {
        this.f617b = context;
        this.f618c = agVar;
        this.f619d = str;
        this.f622g = intent;
        this.f623h = amVar;
    }

    /* renamed from: d */
    public static /* synthetic */ void m430d(C1112aq aqVar, AbstractRunnableC1103ah ahVar) {
        if (aqVar.f627l == null && !aqVar.f621f) {
            aqVar.f618c.m440d("Initiate binding to the service.", new Object[0]);
            aqVar.f620e.add(ahVar);
            ServiceConnectionC1111ap apVar = new ServiceConnectionC1111ap(aqVar);
            aqVar.f626k = apVar;
            aqVar.f621f = true;
            if (!aqVar.f617b.bindService(aqVar.f622g, apVar, 1)) {
                aqVar.f618c.m440d("Failed to bind to the service.", new Object[0]);
                aqVar.f621f = false;
                for (AbstractRunnableC1103ah ahVar2 : aqVar.f620e) {
                    ahVar2.m436b(new C1113ar());
                }
                aqVar.f620e.clear();
            }
        } else if (aqVar.f621f) {
            aqVar.f618c.m440d("Waiting to bind to the service.", new Object[0]);
            aqVar.f620e.add(ahVar);
        } else {
            ahVar.run();
        }
    }

    /* renamed from: i */
    public static /* synthetic */ AbstractC1108am m425i(C1112aq aqVar) {
        return aqVar.f623h;
    }

    /* renamed from: j */
    public static /* synthetic */ void m424j(C1112aq aqVar) {
        aqVar.f618c.m440d("linkToDeath", new Object[0]);
        try {
            aqVar.f627l.asBinder().linkToDeath(aqVar.f625j, 0);
        } catch (RemoteException e) {
            aqVar.f618c.m441c(e, "linkToDeath failed", new Object[0]);
        }
    }

    /* renamed from: k */
    public static /* synthetic */ List m423k(C1112aq aqVar) {
        return aqVar.f620e;
    }

    /* renamed from: m */
    public static /* synthetic */ void m421m(C1112aq aqVar) {
        aqVar.f618c.m440d("unlinkToDeath", new Object[0]);
        aqVar.f627l.asBinder().unlinkToDeath(aqVar.f625j, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public static /* synthetic */ void m419o(C1112aq aqVar, IInterface iInterface) {
        aqVar.f627l = iInterface;
    }

    /* renamed from: q */
    public static /* synthetic */ void m417q(C1112aq aqVar) {
        aqVar.f621f = false;
    }

    /* renamed from: r */
    public final void m416r(AbstractRunnableC1103ah ahVar) {
        Handler handler;
        Map<String, Handler> map = f616a;
        synchronized (map) {
            if (!map.containsKey(this.f619d)) {
                HandlerThread handlerThread = new HandlerThread(this.f619d, 10);
                handlerThread.start();
                map.put(this.f619d, new Handler(handlerThread.getLooper()));
            }
            handler = map.get(this.f619d);
        }
        handler.post(ahVar);
    }

    /* renamed from: a */
    public final void m433a(AbstractRunnableC1103ah ahVar) {
        m416r(new C1105aj(this, ahVar.m435c(), ahVar));
    }

    /* renamed from: b */
    public final void m432b() {
        m416r(new C1106ak(this));
    }

    /* renamed from: c */
    public final T m431c() {
        return this.f627l;
    }

    /* renamed from: n */
    public final /* bridge */ /* synthetic */ void m420n() {
        this.f618c.m440d("reportBinderDeath", new Object[0]);
        AbstractC1107al alVar = this.f624i.get();
        if (alVar == null) {
            this.f618c.m440d("%s : Binder has died.", this.f619d);
            for (AbstractRunnableC1103ah ahVar : this.f620e) {
                ahVar.m436b(Build.VERSION.SDK_INT < 15 ? new RemoteException() : new RemoteException(String.valueOf(this.f619d).concat(" : Binder has died.")));
            }
            this.f620e.clear();
            return;
        }
        this.f618c.m440d("calling onBinderDied", new Object[0]);
        alVar.m434a();
    }
}
