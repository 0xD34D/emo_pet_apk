package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.play.core.internal.C1130bh;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitcompat.a */
/* loaded from: classes.dex */
public final class C1192a {

    /* renamed from: a */
    private final C1194c f712a;

    public C1192a(C1194c cVar) {
        this.f712a = cVar;
    }

    /* renamed from: c */
    public static final int m235c(AssetManager assetManager, File file) {
        int intValue = ((Integer) C1130bh.m378a(assetManager, "addAssetPath", Integer.class, String.class, file.getPath())).intValue();
        StringBuilder sb = new StringBuilder(39);
        sb.append("addAssetPath completed with ");
        sb.append(intValue);
        Log.d("SplitCompat", sb.toString());
        return intValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0028 A[Catch: Exception -> 0x0045, all -> 0x0043, LOOP:0: B:11:0x0022->B:13:0x0028, LOOP_END, TryCatch #3 {Exception -> 0x0045, blocks: (B:10:0x0019, B:11:0x0022, B:13:0x0028, B:14:0x0038), top: B:30:0x0019, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d A[Catch: all -> 0x000e, TRY_ENTER, TRY_LEAVE, TryCatch #4 {, blocks: (B:3:0x0001, B:4:0x0005, B:9:0x0012, B:16:0x003d, B:23:0x004f, B:10:0x0019, B:11:0x0022, B:13:0x0028, B:14:0x0038, B:21:0x0046), top: B:26:0x0001 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized boolean m237a(Context context, Set<String> set) {
        StrictMode.ThreadPolicy threadPolicy;
        boolean z;
        Exception e;
        try {
            threadPolicy = StrictMode.getThreadPolicy();
        } catch (Exception e2) {
            e = e2;
            threadPolicy = null;
        }
        try {
            StrictMode.allowThreadDiskReads();
            StrictMode.allowThreadDiskWrites();
        } catch (Exception e3) {
            e = e3;
            Log.i("SplitCompat", "Unable to set up strict mode.", e);
            HashSet hashSet = new HashSet();
            while (r6.hasNext()) {
            }
            m236b(context, hashSet);
            if (threadPolicy != null) {
            }
            z = true;
            return z;
        }
        try {
            HashSet hashSet2 = new HashSet();
            for (String str : set) {
                hashSet2.add(this.f712a.m232c(str));
            }
            m236b(context, hashSet2);
            if (threadPolicy != null) {
                StrictMode.setThreadPolicy(threadPolicy);
            }
            z = true;
        } catch (Exception e4) {
            Log.e("SplitCompat", "Error installing additional splits", e4);
            if (threadPolicy != null) {
                StrictMode.setThreadPolicy(threadPolicy);
            }
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final synchronized void m236b(Context context, Set<File> set) {
        AssetManager assets = context.getAssets();
        for (File file : set) {
            m235c(assets, file);
        }
    }
}
