package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C1102ag;
import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.dd */
/* loaded from: classes.dex */
public final class C1064dd {

    /* renamed from: a */
    private static final C1102ag f519a = new C1102ag("VerifySliceTaskHandler");

    /* renamed from: b */
    private final C1000au f520b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1064dd(C1000au auVar) {
        this.f520b = auVar;
    }

    /* renamed from: b */
    private final void m499b(C1063dc dcVar, File file) {
        try {
            File o = this.f520b.m621o(dcVar.f417k, dcVar.f515a, dcVar.f516b, dcVar.f517c);
            if (o.exists()) {
                try {
                    if (C1044ck.m546a(C1062db.m502a(file, o)).equals(dcVar.f518d)) {
                        f519a.m440d("Verification of slice %s of pack %s successful.", dcVar.f517c, dcVar.f417k);
                        return;
                    }
                    throw new C1017bk(String.format("Verification failed for slice %s.", dcVar.f517c), dcVar.f416j);
                } catch (IOException e) {
                    throw new C1017bk(String.format("Could not digest file during verification for slice %s.", dcVar.f517c), e, dcVar.f416j);
                } catch (NoSuchAlgorithmException e2) {
                    throw new C1017bk("SHA256 algorithm not supported.", e2, dcVar.f416j);
                }
            } else {
                throw new C1017bk(String.format("Cannot find metadata files for slice %s.", dcVar.f517c), dcVar.f416j);
            }
        } catch (IOException e3) {
            throw new C1017bk(String.format("Could not reconstruct slice archive during verification for slice %s.", dcVar.f517c), e3, dcVar.f416j);
        }
    }

    /* renamed from: a */
    public final void m500a(C1063dc dcVar) {
        File h = this.f520b.m628h(dcVar.f417k, dcVar.f515a, dcVar.f516b, dcVar.f517c);
        if (h.exists()) {
            m499b(dcVar, h);
            File i = this.f520b.m627i(dcVar.f417k, dcVar.f515a, dcVar.f516b, dcVar.f517c);
            if (!i.exists()) {
                i.mkdirs();
            }
            if (!h.renameTo(i)) {
                throw new C1017bk(String.format("Failed to move slice %s after verification.", dcVar.f517c), dcVar.f416j);
            }
            return;
        }
        throw new C1017bk(String.format("Cannot find unverified files for slice %s.", dcVar.f517c), dcVar.f416j);
    }
}
