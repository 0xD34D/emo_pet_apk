package com.google.android.play.core.assetpacks;

import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1160i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.google.android.play.core.assetpacks.ca */
/* loaded from: classes.dex */
public final class C1034ca {

    /* renamed from: a */
    private static final C1102ag f404a = new C1102ag("ExtractorSessionStoreView");

    /* renamed from: b */
    private final C1000au f405b;

    /* renamed from: c */
    private final AbstractC1150ca<AbstractC1082t> f406c;

    /* renamed from: d */
    private final C1021bo f407d;

    /* renamed from: e */
    private final AbstractC1150ca<Executor> f408e;

    /* renamed from: f */
    private final Map<Integer, C1030bx> f409f = new HashMap();

    /* renamed from: g */
    private final ReentrantLock f410g = new ReentrantLock();

    public C1034ca(C1000au auVar, AbstractC1150ca<AbstractC1082t> caVar, C1021bo boVar, AbstractC1150ca<Executor> caVar2) {
        this.f405b = auVar;
        this.f406c = caVar;
        this.f407d = boVar;
        this.f408e = caVar2;
    }

    /* renamed from: q */
    private final Map<String, C1030bx> m563q(List<String> list) {
        return (Map) m562r(new C1026bt(this, list, null));
    }

    /* renamed from: r */
    private final <T> T m562r(AbstractC1032bz<T> bzVar) {
        try {
            m579a();
            return bzVar.mo581a();
        } finally {
            m578b();
        }
    }

    /* renamed from: s */
    private final C1030bx m561s(int i) {
        Map<Integer, C1030bx> map = this.f409f;
        Integer valueOf = Integer.valueOf(i);
        C1030bx bxVar = map.get(valueOf);
        if (bxVar != null) {
            return bxVar;
        }
        throw new C1017bk(String.format("Could not find session %d while trying to get it", valueOf), i);
    }

    /* renamed from: t */
    private static String m560t(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        if (stringArrayList != null && !stringArrayList.isEmpty()) {
            return stringArrayList.get(0);
        }
        throw new C1017bk("Session without pack received.");
    }

    /* renamed from: u */
    private static <T> List<T> m559u(List<T> list) {
        return list == null ? Collections.emptyList() : list;
    }

    /* renamed from: a */
    public final void m579a() {
        this.f410g.lock();
    }

    /* renamed from: b */
    public final void m578b() {
        this.f410g.unlock();
    }

    /* renamed from: c */
    public final Map<Integer, C1030bx> m577c() {
        return this.f409f;
    }

    /* renamed from: d */
    public final boolean m576d(Bundle bundle) {
        return ((Boolean) m562r(new C1023bq(this, bundle, null))).booleanValue();
    }

    /* renamed from: e */
    public final boolean m575e(Bundle bundle) {
        return ((Boolean) m562r(new C1023bq(this, bundle))).booleanValue();
    }

    /* renamed from: f */
    public final void m574f(String str, int i, long j) {
        m562r(new AbstractC1032bz(this, str, i, j) { // from class: com.google.android.play.core.assetpacks.br

            /* renamed from: a */
            private final C1034ca f376a;

            /* renamed from: b */
            private final String f377b;

            /* renamed from: c */
            private final int f378c;

            /* renamed from: d */
            private final long f379d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f376a = this;
                this.f377b = str;
                this.f378c = i;
                this.f379d = j;
            }

            @Override // com.google.android.play.core.assetpacks.AbstractC1032bz
            /* renamed from: a */
            public final Object mo581a() {
                this.f376a.m567m(this.f377b, this.f378c, this.f379d);
                return null;
            }
        });
    }

    /* renamed from: g */
    public final void m573g(int i) {
        m562r(new C1025bs(this, i));
    }

    /* renamed from: h */
    public final Map<String, Integer> m572h(List<String> list) {
        return (Map) m562r(new C1026bt(this, list));
    }

    /* renamed from: i */
    public final /* synthetic */ Map m571i(List list) {
        int i;
        Map<String, C1030bx> q = m563q(list);
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            C1030bx bxVar = q.get(str);
            if (bxVar == null) {
                i = 8;
            } else {
                if (C1044ck.m541f(bxVar.f396c.f391c)) {
                    try {
                        bxVar.f396c.f391c = 6;
                        this.f408e.m341a().execute(new Runnable(this, bxVar) { // from class: com.google.android.play.core.assetpacks.bu

                            /* renamed from: a */
                            private final C1034ca f386a;

                            /* renamed from: b */
                            private final C1030bx f387b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f386a = this;
                                this.f387b = bxVar;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f386a.m573g(this.f387b.f394a);
                            }
                        });
                        this.f407d.m585a(str);
                    } catch (C1017bk unused) {
                        f404a.m440d("Session %d with pack %s does not exist, no need to cancel.", Integer.valueOf(bxVar.f394a), str);
                    }
                }
                i = bxVar.f396c.f391c;
            }
            hashMap.put(str, Integer.valueOf(i));
        }
        return hashMap;
    }

    /* renamed from: j */
    public final /* synthetic */ Map m570j(List list) {
        HashMap hashMap = new HashMap();
        for (C1030bx bxVar : this.f409f.values()) {
            String str = bxVar.f396c.f389a;
            if (list.contains(str)) {
                C1030bx bxVar2 = (C1030bx) hashMap.get(str);
                if ((bxVar2 == null ? -1 : bxVar2.f394a) < bxVar.f394a) {
                    hashMap.put(str, bxVar);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: k */
    public final /* synthetic */ Boolean m569k(Bundle bundle) {
        boolean z;
        int i = bundle.getInt("session_id");
        if (i == 0) {
            return true;
        }
        Map<Integer, C1030bx> map = this.f409f;
        Integer valueOf = Integer.valueOf(i);
        if (!map.containsKey(valueOf)) {
            return true;
        }
        C1030bx bxVar = this.f409f.get(valueOf);
        if (bxVar.f396c.f391c == 6) {
            z = false;
        } else {
            z = !C1044ck.m538i(bxVar.f396c.f391c, bundle.getInt(C1160i.m326e(NotificationCompat.CATEGORY_STATUS, m560t(bundle))));
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: l */
    public final /* synthetic */ Boolean m568l(Bundle bundle) {
        boolean z;
        C1031by byVar;
        int i = bundle.getInt("session_id");
        boolean z2 = false;
        if (i == 0) {
            return false;
        }
        Map<Integer, C1030bx> map = this.f409f;
        Integer valueOf = Integer.valueOf(i);
        z2 = true;
        if (map.containsKey(valueOf)) {
            C1030bx s = m561s(i);
            int i2 = bundle.getInt(C1160i.m326e(NotificationCompat.CATEGORY_STATUS, s.f396c.f389a));
            if (C1044ck.m538i(s.f396c.f391c, i2)) {
                f404a.m443a("Found stale update for session %s with status %d.", valueOf, Integer.valueOf(s.f396c.f391c));
                C1029bw bwVar = s.f396c;
                String str = bwVar.f389a;
                int i3 = bwVar.f391c;
                if (i3 == 4) {
                    this.f406c.m341a().mo463f(i, str);
                } else if (i3 == 5) {
                    this.f406c.m341a().mo462g(i);
                } else if (i3 == 6) {
                    this.f406c.m341a().mo467b(Arrays.asList(str));
                }
            } else {
                s.f396c.f391c = i2;
                if (C1044ck.m540g(i2)) {
                    m573g(i);
                    this.f407d.m585a(s.f396c.f389a);
                } else {
                    for (C1031by byVar2 : s.f396c.f393e) {
                        ArrayList parcelableArrayList = bundle.getParcelableArrayList(C1160i.m325f("chunk_intents", s.f396c.f389a, byVar2.f397a));
                        if (parcelableArrayList != null) {
                            for (int i4 = 0; i4 < parcelableArrayList.size(); i4++) {
                                if (!(parcelableArrayList.get(i4) == null || ((Intent) parcelableArrayList.get(i4)).getData() == null)) {
                                    byVar2.f400d.get(i4).f388a = true;
                                }
                            }
                        }
                    }
                }
            }
            z = true;
        } else {
            String t = m560t(bundle);
            long j = bundle.getLong(C1160i.m326e("pack_version", t));
            int i5 = bundle.getInt(C1160i.m326e(NotificationCompat.CATEGORY_STATUS, t));
            long j2 = bundle.getLong(C1160i.m326e("total_bytes_to_download", t));
            ArrayList<String> stringArrayList = bundle.getStringArrayList(C1160i.m326e("slice_ids", t));
            ArrayList arrayList = new ArrayList();
            for (String str2 : m559u(stringArrayList)) {
                ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(C1160i.m325f("chunk_intents", t, str2));
                ArrayList arrayList2 = new ArrayList();
                for (Intent intent : m559u(parcelableArrayList2)) {
                    if (intent != null) {
                    }
                    arrayList2.add(new C1028bv(z2));
                    z2 = false;
                    z2 = true;
                }
                String string = bundle.getString(C1160i.m325f("uncompressed_hash_sha256", t, str2));
                long j3 = bundle.getLong(C1160i.m325f("uncompressed_size", t, str2));
                int i6 = bundle.getInt(C1160i.m325f("patch_format", t, str2), 0);
                if (i6 != 0) {
                    byVar = new C1031by(str2, string, j3, arrayList2, 0, i6);
                    z2 = false;
                } else {
                    z2 = false;
                    byVar = new C1031by(str2, string, j3, arrayList2, bundle.getInt(C1160i.m325f("compression_format", t, str2), 0), 0);
                }
                arrayList.add(byVar);
                z2 = true;
            }
            this.f409f.put(Integer.valueOf(i), new C1030bx(i, bundle.getInt("app_version_code"), new C1029bw(t, j, i5, j2, arrayList)));
            z = true;
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: m */
    public final /* synthetic */ void m567m(String str, int i, long j) {
        C1030bx bxVar = m563q(Arrays.asList(str)).get(str);
        if (bxVar == null || C1044ck.m540g(bxVar.f396c.f391c)) {
            f404a.m442b(String.format("Could not find pack %s while trying to complete it", str), new Object[0]);
        }
        this.f405b.m650B(str, i, j);
        bxVar.f396c.f391c = 4;
    }

    /* renamed from: n */
    public final /* synthetic */ void m566n(int i) {
        m561s(i).f396c.f391c = 5;
    }

    /* renamed from: o */
    public final /* synthetic */ void m565o(int i) {
        C1030bx s = m561s(i);
        if (C1044ck.m540g(s.f396c.f391c)) {
            C1000au auVar = this.f405b;
            C1029bw bwVar = s.f396c;
            auVar.m650B(bwVar.f389a, s.f395b, bwVar.f390b);
            C1029bw bwVar2 = s.f396c;
            int i2 = bwVar2.f391c;
            if (i2 == 5 || i2 == 6) {
                this.f405b.m649C(bwVar2.f389a, s.f395b, bwVar2.f390b);
                return;
            }
            return;
        }
        throw new C1017bk(String.format("Could not safely delete session %d because it is not in a terminal state.", Integer.valueOf(i)), i);
    }

    /* renamed from: p */
    public final void m564p(int i) {
        m562r(new C1025bs(this, i, null));
    }
}
