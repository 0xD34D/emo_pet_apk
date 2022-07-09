package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.splitcompat.C1192a;
import com.google.android.play.core.splitcompat.C1194c;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.google.android.play.core.internal.av */
/* loaded from: classes.dex */
public final class C1117av {

    /* renamed from: a */
    private final C1194c f638a;

    /* renamed from: b */
    private final Context f639b;

    /* renamed from: c */
    private final C1116au f640c;

    /* renamed from: d */
    private PackageInfo f641d;

    /* renamed from: e */
    private final C1119ax f642e;

    public C1117av(Context context, C1194c cVar, C1119ax axVar, byte[] bArr) {
        C1116au auVar = new C1116au(new C1192a(cVar));
        this.f638a = cVar;
        this.f642e = axVar;
        this.f639b = context;
        this.f640c = auVar;
    }

    /* renamed from: d */
    private final PackageInfo m406d() {
        if (this.f641d == null) {
            try {
                this.f641d = this.f639b.getPackageManager().getPackageInfo(this.f639b.getPackageName(), 64);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        return this.f641d;
    }

    /* renamed from: e */
    private static X509Certificate m405e(Signature signature) {
        try {
            return (X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(signature.toByteArray()));
        } catch (CertificateException e) {
            Log.e("SplitCompat", "Cannot decode certificate.", e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0058, code lost:
        android.util.Log.e("SplitCompat", r13);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m409a(File[] fileArr) {
        PackageInfo d = m406d();
        ArrayList<X509Certificate> arrayList = null;
        if (!(d == null || d.signatures == null)) {
            arrayList = new ArrayList();
            for (Signature signature : d.signatures) {
                X509Certificate e = m405e(signature);
                if (e != null) {
                    arrayList.add(e);
                }
            }
        }
        if (arrayList == null || arrayList.isEmpty()) {
            Log.e("SplitCompat", "No app certificates found.");
            return false;
        }
        int length = fileArr.length;
        loop1: while (true) {
            length--;
            if (length < 0) {
                return true;
            }
            try {
                String absolutePath = fileArr[length].getAbsolutePath();
                try {
                    X509Certificate[][] g = C1160i.m324g(absolutePath);
                    if (g == null || g.length == 0 || g[0].length == 0) {
                        break;
                    } else if (arrayList.isEmpty()) {
                        String sb = "No certificates found for app.";
                        break;
                    } else {
                        for (X509Certificate x509Certificate : arrayList) {
                            for (X509Certificate[] x509CertificateArr : g) {
                                if (!x509CertificateArr[0].equals(x509Certificate)) {
                                }
                            }
                            Log.i("SplitCompat", "There's an app certificate that doesn't sign the split.");
                        }
                    }
                } catch (Exception e2) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(absolutePath).length() + 32);
                    sb2.append("Downloaded split ");
                    sb2.append(absolutePath);
                    sb2.append(" is not signed.");
                    Log.e("SplitCompat", sb2.toString(), e2);
                }
            } catch (Exception e3) {
                Log.e("SplitCompat", "Split verification error.", e3);
                return false;
            }
        }
        Log.e("SplitCompat", "Split verification failure.");
        return false;
    }

    /* renamed from: b */
    public final boolean m408b(File[] fileArr) throws IOException, XmlPullParserException {
        PackageInfo d = m406d();
        long longVersionCode = Build.VERSION.SDK_INT >= 28 ? d.getLongVersionCode() : d.versionCode;
        AssetManager assetManager = (AssetManager) C1130bh.m376c(AssetManager.class);
        int length = fileArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
            this.f640c.m411a(assetManager, fileArr[length]);
        } while (longVersionCode == this.f640c.m410b());
        return false;
    }

    /* renamed from: c */
    public final boolean m407c(List<Intent> list) throws IOException {
        for (Intent intent : list) {
            if (!this.f638a.m232c(intent.getStringExtra("split_id")).exists()) {
                return false;
            }
        }
        return true;
    }
}
