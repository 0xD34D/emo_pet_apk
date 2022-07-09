package com.google.android.play.core.internal;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.internal.g */
/* loaded from: classes.dex */
public final class C1158g extends C1159h {

    /* renamed from: a */
    private final byte[] f673a;

    public C1158g(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.f673a = bArr;
    }

    @Override // com.google.android.play.core.internal.C1159h, java.security.cert.Certificate
    public final byte[] getEncoded() throws CertificateEncodingException {
        return this.f673a;
    }
}
