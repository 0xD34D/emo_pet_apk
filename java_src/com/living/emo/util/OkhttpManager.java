package com.living.emo.util;

import java.io.InputStream;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.OkHttpClient;
/* loaded from: classes.dex */
public class OkhttpManager {
    private static OkhttpManager mOkhttpManager;
    private InputStream mTrustrCertificate;

    public static OkhttpManager getInstance() {
        if (mOkhttpManager == null) {
            mOkhttpManager = new OkhttpManager();
        }
        return mOkhttpManager;
    }

    public SSLSocketFactory getSSLSocketFactory() {
        try {
            SSLContext instance = SSLContext.getInstance("SSL");
            instance.init(null, getTrustManager(), new SecureRandom());
            return instance.getSocketFactory();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private TrustManager[] getTrustManager() {
        return new TrustManager[]{new X509TrustManager() { // from class: com.living.emo.util.OkhttpManager.1
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        }};
    }

    public HostnameVerifier getHostnameVerifier() {
        return new HostnameVerifier() { // from class: com.living.emo.util.OkhttpManager.2
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        };
    }

    public OkHttpClient build() {
        return new OkHttpClient.Builder().sslSocketFactory(getSSLSocketFactory()).hostnameVerifier(getHostnameVerifier()).build();
    }
}
