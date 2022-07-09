package p012uk.p013co.senab.photoview.log;

import android.util.Log;
/* renamed from: uk.co.senab.photoview.log.LoggerDefault */
/* loaded from: classes.dex */
public class LoggerDefault implements Logger {
    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: v */
    public int mo3v(String str, String str2) {
        return Log.v(str, str2);
    }

    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: v */
    public int mo2v(String str, String str2, Throwable th) {
        return Log.v(str, str2, th);
    }

    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: d */
    public int mo9d(String str, String str2) {
        return Log.d(str, str2);
    }

    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: d */
    public int mo8d(String str, String str2, Throwable th) {
        return Log.d(str, str2, th);
    }

    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: i */
    public int mo5i(String str, String str2) {
        return Log.i(str, str2);
    }

    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: i */
    public int mo4i(String str, String str2, Throwable th) {
        return Log.i(str, str2, th);
    }

    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: w */
    public int mo1w(String str, String str2) {
        return Log.w(str, str2);
    }

    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: w */
    public int mo0w(String str, String str2, Throwable th) {
        return Log.w(str, str2, th);
    }

    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: e */
    public int mo7e(String str, String str2) {
        return Log.e(str, str2);
    }

    @Override // p012uk.p013co.senab.photoview.log.Logger
    /* renamed from: e */
    public int mo6e(String str, String str2, Throwable th) {
        return Log.e(str, str2, th);
    }
}
