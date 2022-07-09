package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.C1090a;
import com.google.android.play.core.internal.C1102ag;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.cd */
/* loaded from: classes.dex */
public final class C1037cd {

    /* renamed from: a */
    private static final C1102ag f418a = new C1102ag("ExtractorTaskFinder");

    /* renamed from: b */
    private final C1034ca f419b;

    /* renamed from: c */
    private final C1000au f420c;

    /* renamed from: d */
    private final C1009bc f421d;

    /* renamed from: e */
    private final C1090a f422e;

    public C1037cd(C1034ca caVar, C1000au auVar, C1009bc bcVar, C1090a aVar) {
        this.f419b = caVar;
        this.f420c = auVar;
        this.f421d = bcVar;
        this.f422e = aVar;
    }

    /* renamed from: b */
    private final boolean m557b(C1030bx bxVar, C1031by byVar) {
        C1000au auVar = this.f420c;
        C1029bw bwVar = bxVar.f396c;
        return new C1059cz(auVar, bwVar.f389a, bxVar.f395b, bwVar.f390b, byVar.f397a).m506l();
    }

    /* renamed from: c */
    private static boolean m556c(C1031by byVar) {
        int i = byVar.f402f;
        return i == 1 || i == 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a7, code lost:
        if (r0 == null) goto L_0x00b0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C1036cc m558a() {
        C1036cc ccVar;
        int i;
        try {
            this.f419b.m579a();
            ArrayList arrayList = new ArrayList();
            for (C1030bx bxVar : this.f419b.m577c().values()) {
                if (C1044ck.m539h(bxVar.f396c.f391c)) {
                    arrayList.add(bxVar);
                }
            }
            C1015bi biVar = null;
            if (!arrayList.isEmpty()) {
                if (this.f422e.m455a()) {
                    Map<String, Long> c = this.f420c.m633c();
                    Iterator it = arrayList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            ccVar = null;
                            break;
                        }
                        C1030bx bxVar2 = (C1030bx) it.next();
                        Long l = c.get(bxVar2.f396c.f389a);
                        if (l != null && bxVar2.f396c.f390b == l.longValue()) {
                            f418a.m443a("Found promote pack task for session %s with pack %s.", Integer.valueOf(bxVar2.f394a), bxVar2.f396c.f389a);
                            int i2 = bxVar2.f394a;
                            String str = bxVar2.f396c.f389a;
                            this.f420c.m616t(str);
                            int i3 = bxVar2.f395b;
                            C1029bw bwVar = bxVar2.f396c;
                            ccVar = new C1036cc(i2, str, null);
                            break;
                        }
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        ccVar = null;
                        break;
                    }
                    C1030bx bxVar3 = (C1030bx) it2.next();
                    try {
                        C1000au auVar = this.f420c;
                        C1029bw bwVar2 = bxVar3.f396c;
                        if (auVar.m625k(bwVar2.f389a, bxVar3.f395b, bwVar2.f390b) == bxVar3.f396c.f393e.size()) {
                            f418a.m443a("Found final move task for session %s with pack %s.", Integer.valueOf(bxVar3.f394a), bxVar3.f396c.f389a);
                            int i4 = bxVar3.f394a;
                            C1029bw bwVar3 = bxVar3.f396c;
                            ccVar = new C1050cq(i4, bwVar3.f389a, bxVar3.f395b, bwVar3.f390b);
                            break;
                        }
                    } catch (IOException e) {
                        throw new C1017bk(String.format("Failed to check number of completed merges for session %s, pack %s", Integer.valueOf(bxVar3.f394a), bxVar3.f396c.f389a), e, bxVar3.f394a);
                    }
                }
                if (ccVar == null) {
                    Iterator it3 = arrayList.iterator();
                    loop3: while (true) {
                        if (!it3.hasNext()) {
                            ccVar = null;
                            break;
                        }
                        C1030bx bxVar4 = (C1030bx) it3.next();
                        if (C1044ck.m539h(bxVar4.f396c.f391c)) {
                            for (C1031by byVar : bxVar4.f396c.f393e) {
                                C1000au auVar2 = this.f420c;
                                C1029bw bwVar4 = bxVar4.f396c;
                                if (auVar2.m627i(bwVar4.f389a, bxVar4.f395b, bwVar4.f390b, byVar.f397a).exists()) {
                                    f418a.m443a("Found merge task for session %s with pack %s and slice %s.", Integer.valueOf(bxVar4.f394a), bxVar4.f396c.f389a, byVar.f397a);
                                    int i5 = bxVar4.f394a;
                                    C1029bw bwVar5 = bxVar4.f396c;
                                    ccVar = new C1047cn(i5, bwVar5.f389a, bxVar4.f395b, bwVar5.f390b, byVar.f397a);
                                    break loop3;
                                }
                            }
                            continue;
                        }
                    }
                    if (ccVar == null) {
                        Iterator it4 = arrayList.iterator();
                        loop5: while (true) {
                            if (!it4.hasNext()) {
                                ccVar = null;
                                break;
                            }
                            C1030bx bxVar5 = (C1030bx) it4.next();
                            if (C1044ck.m539h(bxVar5.f396c.f391c)) {
                                for (C1031by byVar2 : bxVar5.f396c.f393e) {
                                    if (m557b(bxVar5, byVar2)) {
                                        C1000au auVar3 = this.f420c;
                                        C1029bw bwVar6 = bxVar5.f396c;
                                        if (auVar3.m628h(bwVar6.f389a, bxVar5.f395b, bwVar6.f390b, byVar2.f397a).exists()) {
                                            f418a.m443a("Found verify task for session %s with pack %s and slice %s.", Integer.valueOf(bxVar5.f394a), bxVar5.f396c.f389a, byVar2.f397a);
                                            int i6 = bxVar5.f394a;
                                            C1029bw bwVar7 = bxVar5.f396c;
                                            String str2 = bwVar7.f389a;
                                            int i7 = bxVar5.f395b;
                                            long j = bwVar7.f390b;
                                            String str3 = byVar2.f397a;
                                            String str4 = byVar2.f398b;
                                            long j2 = byVar2.f399c;
                                            ccVar = new C1063dc(i6, str2, i7, j, str3, str4);
                                            break loop5;
                                        }
                                    }
                                }
                                continue;
                            }
                        }
                        if (ccVar == null) {
                            Iterator it5 = arrayList.iterator();
                            loop7: while (true) {
                                if (!it5.hasNext()) {
                                    biVar = null;
                                    break;
                                }
                                C1030bx bxVar6 = (C1030bx) it5.next();
                                if (C1044ck.m539h(bxVar6.f396c.f391c)) {
                                    Iterator<C1031by> it6 = bxVar6.f396c.f393e.iterator();
                                    while (it6.hasNext()) {
                                        C1031by next = it6.next();
                                        if (!m556c(next)) {
                                            C1000au auVar4 = this.f420c;
                                            C1029bw bwVar8 = bxVar6.f396c;
                                            try {
                                                i = new C1059cz(auVar4, bwVar8.f389a, bxVar6.f395b, bwVar8.f390b, next.f397a).m507k();
                                            } catch (IOException e2) {
                                                f418a.m442b("Slice checkpoint corrupt, restarting extraction. %s", e2);
                                                i = 0;
                                            }
                                            if (i != -1 && next.f400d.get(i).f388a) {
                                                f418a.m443a("Found extraction task using compression format %s for session %s, pack %s, slice %s, chunk %s.", Integer.valueOf(next.f401e), Integer.valueOf(bxVar6.f394a), bxVar6.f396c.f389a, next.f397a, Integer.valueOf(i));
                                                InputStream a = this.f421d.m605a(bxVar6.f394a, bxVar6.f396c.f389a, next.f397a, i);
                                                int i8 = bxVar6.f394a;
                                                C1029bw bwVar9 = bxVar6.f396c;
                                                String str5 = bwVar9.f389a;
                                                int i9 = bxVar6.f395b;
                                                long j3 = bwVar9.f390b;
                                                String str6 = next.f397a;
                                                int i10 = next.f401e;
                                                int size = next.f400d.size();
                                                C1029bw bwVar10 = bxVar6.f396c;
                                                biVar = new C1015bi(i8, str5, i9, j3, str6, i10, i, size, bwVar10.f392d, bwVar10.f391c, a);
                                                break loop7;
                                            }
                                            it6 = it6;
                                        }
                                    }
                                    continue;
                                }
                            }
                            if (biVar == null) {
                                Iterator it7 = arrayList.iterator();
                                loop9: while (true) {
                                    if (!it7.hasNext()) {
                                        ccVar = null;
                                        break;
                                    }
                                    C1030bx bxVar7 = (C1030bx) it7.next();
                                    if (C1044ck.m539h(bxVar7.f396c.f391c)) {
                                        for (C1031by byVar3 : bxVar7.f396c.f393e) {
                                            if (m556c(byVar3) && byVar3.f400d.get(0).f388a && !m557b(bxVar7, byVar3)) {
                                                f418a.m443a("Found patch slice task using patch format %s for session %s, pack %s, slice %s.", Integer.valueOf(byVar3.f402f), Integer.valueOf(bxVar7.f394a), bxVar7.f396c.f389a, byVar3.f397a);
                                                InputStream a2 = this.f421d.m605a(bxVar7.f394a, bxVar7.f396c.f389a, byVar3.f397a, 0);
                                                int i11 = bxVar7.f394a;
                                                String str7 = bxVar7.f396c.f389a;
                                                ccVar = new C1056cw(i11, str7, this.f420c.m616t(str7), this.f420c.m615u(bxVar7.f396c.f389a), bxVar7.f395b, bxVar7.f396c.f390b, byVar3.f402f, byVar3.f397a, byVar3.f399c, a2);
                                                break loop9;
                                            }
                                        }
                                        continue;
                                    }
                                }
                                if (ccVar == null) {
                                    this.f419b.m578b();
                                    return null;
                                }
                            }
                        }
                    }
                }
                return ccVar;
            }
            return biVar;
        } finally {
            this.f419b.m578b();
        }
    }
}
