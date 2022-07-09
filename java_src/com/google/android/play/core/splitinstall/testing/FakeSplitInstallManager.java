package com.google.android.play.core.splitinstall.testing;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.play.core.common.IntentSenderForResultStarter;
import com.google.android.play.core.internal.C1101af;
import com.google.android.play.core.internal.C1119ax;
import com.google.android.play.core.internal.C1137bo;
import com.google.android.play.core.splitcompat.C1207p;
import com.google.android.play.core.splitinstall.AbstractC1236e;
import com.google.android.play.core.splitinstall.C1239h;
import com.google.android.play.core.splitinstall.C1248p;
import com.google.android.play.core.splitinstall.EnumC1243l;
import com.google.android.play.core.splitinstall.SplitInstallException;
import com.google.android.play.core.splitinstall.SplitInstallManager;
import com.google.android.play.core.splitinstall.SplitInstallRequest;
import com.google.android.play.core.splitinstall.SplitInstallSessionState;
import com.google.android.play.core.splitinstall.SplitInstallStateUpdatedListener;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class FakeSplitInstallManager implements SplitInstallManager {

    /* renamed from: a */
    public static final /* synthetic */ int f834a = 0;

    /* renamed from: c */
    private static final long f835c = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: b */
    private final Handler f836b;

    /* renamed from: d */
    private final Context f837d;

    /* renamed from: e */
    private final C1248p f838e;

    /* renamed from: f */
    private final C1137bo f839f;

    /* renamed from: g */
    private final C1101af<SplitInstallSessionState> f840g;

    /* renamed from: h */
    private final C1101af<SplitInstallSessionState> f841h;

    /* renamed from: i */
    private final Executor f842i;

    /* renamed from: j */
    private final AbstractC1236e f843j;

    /* renamed from: k */
    private final File f844k;

    /* renamed from: l */
    private final AtomicReference<SplitInstallSessionState> f845l;

    /* renamed from: m */
    private final Set<String> f846m;

    /* renamed from: n */
    private final Set<String> f847n;

    /* renamed from: o */
    private final AtomicBoolean f848o;

    /* renamed from: p */
    private final C1253a f849p;

    @Deprecated
    public FakeSplitInstallManager(Context context, File file) {
        this(context, file, new C1248p(context, context.getPackageName()));
    }

    public FakeSplitInstallManager(Context context, File file, C1248p pVar) {
        Executor a = C1207p.m203a();
        C1137bo boVar = new C1137bo(context);
        C1253a aVar = C1253a.f851a;
        this.f836b = new Handler(Looper.getMainLooper());
        this.f845l = new AtomicReference<>();
        this.f846m = Collections.synchronizedSet(new HashSet());
        this.f847n = Collections.synchronizedSet(new HashSet());
        this.f848o = new AtomicBoolean(false);
        this.f837d = context;
        this.f844k = file;
        this.f838e = pVar;
        this.f842i = a;
        this.f839f = boVar;
        this.f849p = aVar;
        this.f841h = new C1101af<>();
        this.f840g = new C1101af<>();
        this.f843j = EnumC1243l.f812a;
    }

    /* renamed from: g */
    public static final /* synthetic */ SplitInstallSessionState m124g(int i, SplitInstallSessionState splitInstallSessionState) {
        int status;
        if (splitInstallSessionState != null && i == splitInstallSessionState.sessionId() && ((status = splitInstallSessionState.status()) == 1 || status == 2 || status == 8 || status == 9 || status == 7)) {
            return SplitInstallSessionState.create(i, 7, splitInstallSessionState.errorCode(), splitInstallSessionState.bytesDownloaded(), splitInstallSessionState.totalBytesToDownload(), splitInstallSessionState.moduleNames(), splitInstallSessionState.languages());
        }
        throw new SplitInstallException(-3);
    }

    /* renamed from: i */
    public static final /* synthetic */ SplitInstallSessionState m122i(Integer num, int i, int i2, Long l, Long l2, List list, List list2, SplitInstallSessionState splitInstallSessionState) {
        SplitInstallSessionState create = splitInstallSessionState == null ? SplitInstallSessionState.create(0, 0, 0, 0L, 0L, new ArrayList(), new ArrayList()) : splitInstallSessionState;
        return SplitInstallSessionState.create(num == null ? create.sessionId() : num.intValue(), i, i2, l == null ? create.bytesDownloaded() : l.longValue(), l2 == null ? create.totalBytesToDownload() : l2.longValue(), list == null ? create.moduleNames() : list, list2 == null ? create.languages() : list2);
    }

    /* renamed from: j */
    static final /* synthetic */ void m121j() {
        SystemClock.sleep(f835c);
    }

    /* renamed from: n */
    private final SplitInstallSessionState m117n() {
        return this.f845l.get();
    }

    /* renamed from: o */
    private final synchronized SplitInstallSessionState m116o(AbstractC1261i iVar) {
        SplitInstallSessionState n = m117n();
        SplitInstallSessionState a = iVar.mo104a(n);
        if (this.f845l.compareAndSet(n, a)) {
            return a;
        }
        return null;
    }

    /* renamed from: p */
    private final boolean m115p(int i, int i2, Long l, Long l2, List<String> list, Integer num, List<String> list2) {
        SplitInstallSessionState o = m116o(new AbstractC1261i(num, i, i2, l, l2, list, list2) { // from class: com.google.android.play.core.splitinstall.testing.b

            /* renamed from: a */
            private final Integer f852a;

            /* renamed from: b */
            private final int f853b;

            /* renamed from: c */
            private final int f854c;

            /* renamed from: d */
            private final Long f855d;

            /* renamed from: e */
            private final Long f856e;

            /* renamed from: f */
            private final List f857f;

            /* renamed from: g */
            private final List f858g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f852a = num;
                this.f853b = i;
                this.f854c = i2;
                this.f855d = l;
                this.f856e = l2;
                this.f857f = list;
                this.f858g = list2;
            }

            @Override // com.google.android.play.core.splitinstall.testing.AbstractC1261i
            /* renamed from: a */
            public final SplitInstallSessionState mo104a(SplitInstallSessionState splitInstallSessionState) {
                return FakeSplitInstallManager.m122i(this.f852a, this.f853b, this.f854c, this.f855d, this.f856e, this.f857f, this.f858g, splitInstallSessionState);
            }
        });
        if (o == null) {
            return false;
        }
        m111t(o);
        return true;
    }

    /* renamed from: q */
    private final Task<Integer> m114q(int i) {
        m116o(new C1257e(i, null));
        return Tasks.m92b(new SplitInstallException(i));
    }

    /* renamed from: r */
    private static String m113r(String str) {
        return str.split("\\.config\\.", 2)[0];
    }

    /* renamed from: s */
    private final C1239h m112s() {
        C1239h c = this.f838e.m140c();
        if (c != null) {
            return c;
        }
        throw new IllegalStateException("Language information could not be found. Make sure you are using the target application context, not the tests context, and the app is built as a bundle.");
    }

    /* renamed from: t */
    private final void m111t(SplitInstallSessionState splitInstallSessionState) {
        this.f836b.post(new Runnable(this, splitInstallSessionState) { // from class: com.google.android.play.core.splitinstall.testing.f

            /* renamed from: a */
            private final FakeSplitInstallManager f865a;

            /* renamed from: b */
            private final SplitInstallSessionState f866b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f865a = this;
                this.f866b = splitInstallSessionState;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f865a.m125f(this.f866b);
            }
        });
    }

    /* renamed from: u */
    public final void m110u(List<Intent> list, List<String> list2, List<String> list3, long j, boolean z) {
        this.f843j.mo150a().mo159a(list, new C1260h(this, list2, list3, j, z, list));
    }

    /* renamed from: v */
    public final void m109v(List<String> list, List<String> list2, long j) {
        this.f846m.addAll(list);
        this.f847n.addAll(list2);
        Long valueOf = Long.valueOf(j);
        m115p(5, 0, valueOf, valueOf, null, null, null);
    }

    /* renamed from: w */
    public final boolean m108w(int i) {
        return m115p(6, i, null, null, null, null, null);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    /* renamed from: a */
    public final void mo103a(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f840g.m446a(splitInstallStateUpdatedListener);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    /* renamed from: b */
    public final void mo102b(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f840g.m445b(splitInstallStateUpdatedListener);
    }

    /* renamed from: c */
    public final File m128c() {
        return this.f844k;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> cancelInstall(int i) {
        try {
            SplitInstallSessionState o = m116o(new C1257e(i));
            if (o != null) {
                m111t(o);
            }
            return Tasks.m93a(null);
        } catch (SplitInstallException e) {
            return Tasks.m92b(e);
        }
    }

    /* renamed from: d */
    public final /* synthetic */ void m127d(List list, List list2, List list3, long j) {
        if (this.f848o.get()) {
            m108w(-6);
        } else if (this.f843j.mo150a() != null) {
            m110u(list, list2, list3, j, false);
        } else {
            m109v(list2, list3, j);
        }
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredInstall(List<String> list) {
        return Tasks.m92b(new SplitInstallException(-5));
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredLanguageInstall(List<Locale> list) {
        return Tasks.m92b(new SplitInstallException(-5));
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredLanguageUninstall(List<Locale> list) {
        return Tasks.m92b(new SplitInstallException(-5));
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<Void> deferredUninstall(List<String> list) {
        return Tasks.m92b(new SplitInstallException(-5));
    }

    /* renamed from: e */
    public final /* synthetic */ void m126e(long j, List list, List list2, List list3) {
        long j2 = j / 3;
        long j3 = 0;
        for (int i = 0; i < 3; i++) {
            j3 = Math.min(j, j3 + j2);
            m115p(2, 0, Long.valueOf(j3), Long.valueOf(j), null, null, null);
            m121j();
            SplitInstallSessionState n = m117n();
            if (n.status() == 9 || n.status() == 7 || n.status() == 6) {
                return;
            }
        }
        this.f842i.execute(new RunnableC1259g(this, list, list2, list3, j));
    }

    /* renamed from: f */
    public final /* synthetic */ void m125f(SplitInstallSessionState splitInstallSessionState) {
        this.f840g.m444c(splitInstallSessionState);
        this.f841h.m444c(splitInstallSessionState);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Set<String> getInstalledLanguages() {
        HashSet hashSet = new HashSet();
        if (this.f838e.m141b() != null) {
            hashSet.addAll(this.f838e.m141b());
        }
        hashSet.addAll(this.f847n);
        return hashSet;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Set<String> getInstalledModules() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.f838e.m142a());
        hashSet.addAll(this.f846m);
        return hashSet;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<SplitInstallSessionState> getSessionState(int i) {
        SplitInstallSessionState n = m117n();
        return (n == null || n.sessionId() != i) ? Tasks.m92b(new SplitInstallException(-4)) : Tasks.m93a(n);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final Task<List<SplitInstallSessionState>> getSessionStates() {
        SplitInstallSessionState n = m117n();
        return Tasks.m93a(n != null ? Collections.singletonList(n) : Collections.emptyList());
    }

    /* renamed from: h */
    public final /* synthetic */ void m123h(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            String b = C1119ax.m403b(file);
            Uri fromFile = Uri.fromFile(file);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(fromFile, this.f837d.getContentResolver().getType(fromFile));
            intent.addFlags(1);
            intent.putExtra("module_name", m113r(b));
            intent.putExtra("split_id", b);
            arrayList.add(intent);
            arrayList2.add(m113r(C1119ax.m403b(file)));
        }
        SplitInstallSessionState n = m117n();
        if (n != null) {
            this.f842i.execute(new RunnableC1259g(this, n.totalBytesToDownload(), arrayList, arrayList2, list2));
        }
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final void registerListener(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f841h.m446a(splitInstallStateUpdatedListener);
    }

    public void setShouldNetworkError(boolean z) {
        this.f848o.set(z);
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final boolean startConfirmationDialogForResult(SplitInstallSessionState splitInstallSessionState, Activity activity, int i) throws IntentSender.SendIntentException {
        return false;
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final boolean startConfirmationDialogForResult(SplitInstallSessionState splitInstallSessionState, IntentSenderForResultStarter intentSenderForResultStarter, int i) throws IntentSender.SendIntentException {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0131, code lost:
        if (r0.contains(r6) == false) goto L_0x013a;
     */
    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Task<Integer> startInstall(SplitInstallRequest splitInstallRequest) {
        try {
            SplitInstallSessionState o = m116o(new AbstractC1261i(splitInstallRequest) { // from class: com.google.android.play.core.splitinstall.testing.d

                /* renamed from: a */
                private final SplitInstallRequest f862a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f862a = splitInstallRequest;
                }

                @Override // com.google.android.play.core.splitinstall.testing.AbstractC1261i
                /* renamed from: a */
                public final SplitInstallSessionState mo104a(SplitInstallSessionState splitInstallSessionState) {
                    SplitInstallRequest splitInstallRequest2 = this.f862a;
                    int i = FakeSplitInstallManager.f834a;
                    if (splitInstallSessionState == null || splitInstallSessionState.hasTerminalStatus()) {
                        int i2 = 1;
                        if (splitInstallSessionState != null) {
                            i2 = 1 + splitInstallSessionState.sessionId();
                        }
                        return SplitInstallSessionState.create(i2, 1, 0, 0L, 0L, splitInstallRequest2.getModuleNames(), new ArrayList());
                    }
                    throw new SplitInstallException(-1);
                }
            });
            if (o == null) {
                return m114q(-100);
            }
            int sessionId = o.sessionId();
            ArrayList arrayList = new ArrayList();
            for (Locale locale : splitInstallRequest.getLanguages()) {
                arrayList.add(locale.getLanguage());
            }
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = new ArrayList();
            File[] listFiles = this.f844k.listFiles();
            if (listFiles == null) {
                Log.w("FakeSplitInstallManager", "Specified splits directory does not exist.");
                return m114q(-5);
            }
            int length = listFiles.length;
            long j = 0;
            for (int i = 0; i < length; i++) {
                File file = listFiles[i];
                String b = C1119ax.m403b(file);
                String r = m113r(b);
                hashSet.add(b);
                if (splitInstallRequest.getModuleNames().contains(r)) {
                    String r2 = m113r(b);
                    HashSet hashSet2 = new HashSet(this.f839f.m352a());
                    listFiles = listFiles;
                    Map<String, Set<String>> a = m112s().m156a(Arrays.asList(r2));
                    HashSet hashSet3 = new HashSet();
                    for (Set<String> set : a.values()) {
                        hashSet3.addAll(set);
                        length = length;
                    }
                    length = length;
                    HashSet hashSet4 = new HashSet();
                    for (Iterator it = hashSet2.iterator(); it.hasNext(); it = it) {
                        String str = (String) it.next();
                        if (str.contains("_")) {
                            sessionId = sessionId;
                            str = str.split("_", -1)[0];
                        } else {
                            sessionId = sessionId;
                        }
                        hashSet4.add(str);
                    }
                    sessionId = sessionId;
                    hashSet4.addAll(this.f847n);
                    hashSet4.addAll(arrayList);
                    HashSet hashSet5 = new HashSet();
                    for (Map.Entry<String, Set<String>> entry : a.entrySet()) {
                        if (hashSet4.contains(entry.getKey())) {
                            hashSet5.addAll(entry.getValue());
                        }
                    }
                    if (hashSet3.contains(b)) {
                    }
                    j += file.length();
                    arrayList2.add(file);
                    break;
                } else {
                    sessionId = sessionId;
                    listFiles = listFiles;
                    length = length;
                }
                List<Locale> languages = splitInstallRequest.getLanguages();
                ArrayList arrayList3 = new ArrayList(this.f846m);
                arrayList3.addAll(Arrays.asList("", "base"));
                Map<String, Set<String>> a2 = m112s().m156a(arrayList3);
                for (Locale locale2 : languages) {
                    if (a2.containsKey(locale2.getLanguage()) && a2.get(locale2.getLanguage()).contains(b)) {
                        j += file.length();
                        arrayList2.add(file);
                        break;
                    }
                }
            }
            String valueOf = String.valueOf(hashSet);
            String valueOf2 = String.valueOf(splitInstallRequest.getModuleNames());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22 + String.valueOf(valueOf2).length());
            sb.append("availableSplits ");
            sb.append(valueOf);
            sb.append(" want ");
            sb.append(valueOf2);
            Log.i("FakeSplitInstallManager", sb.toString());
            if (!hashSet.containsAll(new HashSet(splitInstallRequest.getModuleNames()))) {
                return m114q(-2);
            }
            Long valueOf3 = Long.valueOf(j);
            List<String> moduleNames = splitInstallRequest.getModuleNames();
            Integer valueOf4 = Integer.valueOf(sessionId);
            m115p(1, 0, 0L, valueOf3, moduleNames, valueOf4, arrayList);
            this.f842i.execute(new Runnable(this, arrayList2, arrayList) { // from class: com.google.android.play.core.splitinstall.testing.c

                /* renamed from: a */
                private final FakeSplitInstallManager f859a;

                /* renamed from: b */
                private final List f860b;

                /* renamed from: c */
                private final List f861c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f859a = this;
                    this.f860b = arrayList2;
                    this.f861c = arrayList;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f859a.m123h(this.f860b, this.f861c);
                }
            });
            return Tasks.m93a(valueOf4);
        } catch (SplitInstallException e) {
            return m114q(e.getErrorCode());
        }
    }

    @Override // com.google.android.play.core.splitinstall.SplitInstallManager
    public final void unregisterListener(SplitInstallStateUpdatedListener splitInstallStateUpdatedListener) {
        this.f841h.m445b(splitInstallStateUpdatedListener);
    }
}
