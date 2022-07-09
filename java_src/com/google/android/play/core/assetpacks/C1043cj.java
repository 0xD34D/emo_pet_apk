package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.core.app.NotificationCompat;
import com.google.android.play.core.common.LocalTestingException;
import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1119ax;
import com.google.android.play.core.internal.C1160i;
import com.google.android.play.core.tasks.C1277i;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.cj */
/* loaded from: classes.dex */
public final class C1043cj implements AbstractC1082t {

    /* renamed from: a */
    private static final C1102ag f437a = new C1102ag("FakeAssetPackService");

    /* renamed from: h */
    private static final AtomicInteger f438h = new AtomicInteger(1);

    /* renamed from: b */
    private final String f439b;

    /* renamed from: c */
    private final C0997ar f440c;

    /* renamed from: d */
    private final C1021bo f441d;

    /* renamed from: e */
    private final Context f442e;

    /* renamed from: f */
    private final C1055cv f443f;

    /* renamed from: g */
    private final AbstractC1150ca<Executor> f444g;

    /* renamed from: i */
    private final Handler f445i = new Handler(Looper.getMainLooper());

    public C1043cj(File file, C0997ar arVar, C1021bo boVar, Context context, C1055cv cvVar, AbstractC1150ca<Executor> caVar) {
        this.f439b = file.getAbsolutePath();
        this.f440c = arVar;
        this.f441d = boVar;
        this.f442e = context;
        this.f443f = cvVar;
        this.f444g = caVar;
    }

    /* renamed from: k */
    static long m555k(int i, long j) {
        if (i == 2) {
            return j / 2;
        }
        if (i == 3 || i == 4) {
            return j;
        }
        return 0L;
    }

    /* renamed from: p */
    private final AssetPackState m550p(String str, int i) throws LocalTestingException {
        long j = 0;
        for (File file : m549q(str)) {
            j += file.length();
        }
        return AssetPackState.m683c(str, i, 0, m555k(i, j), j, this.f441d.m584b(str), 1, "");
    }

    /* renamed from: q */
    private final File[] m549q(String str) throws LocalTestingException {
        File file = new File(this.f439b);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles(new FilenameFilter(str) { // from class: com.google.android.play.core.assetpacks.ch

                /* renamed from: a */
                private final String f434a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f434a = str;
                }

                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str2) {
                    return str2.startsWith(String.valueOf(this.f434a).concat("-")) && str2.endsWith(".apk");
                }
            });
            if (listFiles != null) {
                int length = listFiles.length;
                if (length != 0) {
                    for (File file2 : listFiles) {
                        if (C1119ax.m403b(file2).equals(str)) {
                            return listFiles;
                        }
                    }
                    throw new LocalTestingException(String.format("No master slice available for pack '%s'.", str));
                }
                throw new LocalTestingException(String.format("No APKs available for pack '%s'.", str));
            }
            throw new LocalTestingException(String.format("Failed fetching APKs for pack '%s'.", str));
        }
        throw new LocalTestingException(String.format("Local testing directory '%s' not found.", file));
    }

    /* renamed from: r */
    private static String m548r(File file) throws LocalTestingException {
        try {
            return C1044ck.m546a(Arrays.asList(file));
        } catch (IOException e) {
            throw new LocalTestingException(String.format("Could not digest file: %s.", file), e);
        } catch (NoSuchAlgorithmException e2) {
            throw new LocalTestingException("SHA256 algorithm not supported.", e2);
        }
    }

    /* renamed from: s */
    private final void m547s(int i, String str, int i2) throws LocalTestingException {
        Bundle bundle = new Bundle();
        bundle.putInt("app_version_code", this.f443f.m524a());
        bundle.putInt("session_id", i);
        File[] q = m549q(str);
        ArrayList<String> arrayList = new ArrayList<>();
        long j = 0;
        for (File file : q) {
            j += file.length();
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            arrayList2.add(i2 == 3 ? new Intent().setData(Uri.EMPTY) : null);
            String b = C1119ax.m403b(file);
            bundle.putParcelableArrayList(C1160i.m325f("chunk_intents", str, b), arrayList2);
            bundle.putString(C1160i.m325f("uncompressed_hash_sha256", str, b), m548r(file));
            bundle.putLong(C1160i.m325f("uncompressed_size", str, b), file.length());
            arrayList.add(b);
        }
        bundle.putStringArrayList(C1160i.m326e("slice_ids", str), arrayList);
        bundle.putLong(C1160i.m326e("pack_version", str), this.f443f.m524a());
        bundle.putInt(C1160i.m326e(NotificationCompat.CATEGORY_STATUS, str), i2);
        bundle.putInt(C1160i.m326e("error_code", str), 0);
        bundle.putLong(C1160i.m326e("bytes_downloaded", str), m555k(i2, j));
        bundle.putLong(C1160i.m326e("total_bytes_to_download", str), j);
        bundle.putStringArrayList("pack_names", new ArrayList<>(Arrays.asList(str)));
        bundle.putLong("bytes_downloaded", m555k(i2, j));
        bundle.putLong("total_bytes_to_download", j);
        this.f445i.post(new Runnable(this, new Intent("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE").putExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE", bundle)) { // from class: com.google.android.play.core.assetpacks.ci

            /* renamed from: a */
            private final C1043cj f435a;

            /* renamed from: b */
            private final Intent f436b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f435a = this;
                this.f436b = putExtra;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f435a.m554l(this.f436b);
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: a */
    public final Task<AssetPackStates> mo468a(List<String> list, List<String> list2, Map<String, Long> map) {
        f437a.m440d("startDownload(%s)", list2);
        C1277i iVar = new C1277i();
        this.f444g.m341a().execute(new Runnable(this, list2, iVar, list) { // from class: com.google.android.play.core.assetpacks.ce

            /* renamed from: a */
            private final C1043cj f423a;

            /* renamed from: b */
            private final List f424b;

            /* renamed from: c */
            private final C1277i f425c;

            /* renamed from: d */
            private final List f426d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f423a = this;
                this.f424b = list2;
                this.f425c = iVar;
                this.f426d = list;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f423a.m551o(this.f424b, this.f425c, this.f426d);
            }
        });
        return iVar.m78c();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: b */
    public final void mo467b(List<String> list) {
        f437a.m440d("cancelDownload(%s)", list);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: c */
    public final Task<List<String>> mo466c(Map<String, Long> map) {
        f437a.m440d("syncPacks()", new Object[0]);
        return Tasks.m93a(new ArrayList());
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: d */
    public final Task<AssetPackStates> mo465d(List<String> list, AbstractC0998as asVar, Map<String, Long> map) {
        f437a.m440d("getPackStates(%s)", list);
        C1277i iVar = new C1277i();
        this.f444g.m341a().execute(new Runnable(this, list, asVar, iVar) { // from class: com.google.android.play.core.assetpacks.cf

            /* renamed from: a */
            private final C1043cj f427a;

            /* renamed from: b */
            private final List f428b;

            /* renamed from: c */
            private final AbstractC0998as f429c;

            /* renamed from: d */
            private final C1277i f430d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f427a = this;
                this.f428b = list;
                this.f429c = asVar;
                this.f430d = iVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f427a.m552n(this.f428b, this.f429c, this.f430d);
            }
        });
        return iVar.m78c();
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: e */
    public final void mo464e(int i, String str, String str2, int i2) {
        f437a.m440d("notifyChunkTransferred", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: f */
    public final void mo463f(int i, String str) {
        f437a.m440d("notifyModuleCompleted", new Object[0]);
        this.f444g.m341a().execute(new Runnable(this, i, str) { // from class: com.google.android.play.core.assetpacks.cg

            /* renamed from: a */
            private final C1043cj f431a;

            /* renamed from: b */
            private final int f432b;

            /* renamed from: c */
            private final String f433c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f431a = this;
                this.f432b = i;
                this.f433c = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f431a.m553m(this.f432b, this.f433c);
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: g */
    public final void mo462g(int i) {
        f437a.m440d("notifySessionFailed", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: h */
    public final Task<ParcelFileDescriptor> mo461h(int i, String str, String str2, int i2) {
        File[] q;
        int i3;
        f437a.m440d("getChunkFileDescriptor(session=%d, %s, %s, %d)", Integer.valueOf(i), str, str2, Integer.valueOf(i2));
        C1277i iVar = new C1277i();
        try {
            q = m549q(str);
        } catch (LocalTestingException e) {
            f437a.m439e("getChunkFileDescriptor failed", e);
            iVar.m79b(e);
        } catch (FileNotFoundException e2) {
            f437a.m439e("getChunkFileDescriptor failed", e2);
            iVar.m79b(new LocalTestingException("Asset Slice file not found.", e2));
        }
        for (File file : q) {
            if (C1119ax.m403b(file).equals(str2)) {
                iVar.m80a(ParcelFileDescriptor.open(file, 268435456));
                return iVar.m78c();
            }
        }
        throw new LocalTestingException(String.format("Local testing slice for '%s' not found.", str2));
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: i */
    public final void mo460i(String str) {
        f437a.m440d("removePack(%s)", str);
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC1082t
    /* renamed from: j */
    public final void mo459j() {
        f437a.m440d("keepAlive", new Object[0]);
    }

    /* renamed from: l */
    public final /* synthetic */ void m554l(Intent intent) {
        this.f440c.mo135a(this.f442e, intent);
    }

    /* renamed from: m */
    public final /* synthetic */ void m553m(int i, String str) {
        try {
            m547s(i, str, 4);
        } catch (LocalTestingException e) {
            f437a.m439e("notifyModuleCompleted failed", e);
        }
    }

    /* renamed from: n */
    public final /* synthetic */ void m552n(List list, AbstractC0998as asVar, C1277i iVar) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        long j = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                AssetPackState p = m550p(str, asVar.mo580a(8, str));
                j += p.totalBytesToDownload();
                hashMap.put(str, p);
            } catch (LocalTestingException e) {
                iVar.m79b(e);
                return;
            }
        }
        iVar.m80a(AssetPackStates.m681a(j, hashMap));
    }

    /* renamed from: o */
    public final /* synthetic */ void m551o(List list, C1277i iVar, List list2) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        long j = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                AssetPackState p = m550p(str, 1);
                j += p.totalBytesToDownload();
                hashMap.put(str, p);
            } catch (LocalTestingException e) {
                iVar.m79b(e);
                return;
            }
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            try {
                int andIncrement = f438h.getAndIncrement();
                m547s(andIncrement, str2, 1);
                m547s(andIncrement, str2, 2);
                m547s(andIncrement, str2, 3);
            } catch (LocalTestingException e2) {
                iVar.m79b(e2);
                return;
            }
        }
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            String str3 = (String) it3.next();
            hashMap.put(str3, AssetPackState.m683c(str3, 4, 0, 0L, 0L, 0.0d, 1, ""));
        }
        iVar.m80a(AssetPackStates.m681a(j, hashMap));
    }
}
