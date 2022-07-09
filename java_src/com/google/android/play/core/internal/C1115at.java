package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.util.Log;
import com.google.android.play.core.splitcompat.C1194c;
import com.google.android.play.core.splitcompat.C1207p;
import com.google.android.play.core.splitcompat.SplitCompat;
import com.google.android.play.core.splitinstall.AbstractC1235d;
import com.google.android.play.core.splitinstall.AbstractC1237f;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.internal.at */
/* loaded from: classes.dex */
public final class C1115at implements AbstractC1237f {

    /* renamed from: a */
    private final Context f631a;

    /* renamed from: b */
    private final C1194c f632b;

    /* renamed from: c */
    private final C1117av f633c;

    /* renamed from: d */
    private final Executor f634d;

    /* renamed from: e */
    private final C1207p f635e;

    public C1115at(Context context, Executor executor, C1117av avVar, C1194c cVar, C1207p pVar) {
        this.f631a = context;
        this.f632b = cVar;
        this.f633c = avVar;
        this.f634d = executor;
        this.f635e = pVar;
    }

    /* renamed from: c */
    public static /* synthetic */ void m414c(C1115at atVar, AbstractC1235d dVar) {
        try {
            if (!SplitCompat.m245a(C1207p.m201c(atVar.f631a))) {
                Log.e("SplitCompat", "Emulating splits failed.");
                dVar.mo105c(-12);
                return;
            }
            Log.i("SplitCompat", "Splits installed.");
            dVar.mo107a();
        } catch (Exception e) {
            Log.e("SplitCompat", "Error emulating splits.", e);
            dVar.mo105c(-12);
        }
    }

    /* renamed from: d */
    public static /* synthetic */ void m413d(C1115at atVar, List list, AbstractC1235d dVar) {
        Integer e = atVar.m412e(list);
        if (e != null) {
            if (e.intValue() == 0) {
                dVar.mo106b();
            } else {
                dVar.mo105c(e.intValue());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0127 A[Catch: Exception -> 0x012b, TRY_LEAVE, TryCatch #9 {Exception -> 0x012b, blocks: (B:3:0x0004, B:60:0x0127, B:5:0x0016, B:9:0x0024, B:10:0x002d, B:12:0x0033, B:14:0x005b, B:17:0x0068, B:19:0x006e, B:21:0x007a, B:29:0x0099, B:33:0x00ad, B:34:0x00b0, B:35:0x00b1, B:36:0x00b6, B:37:0x00c0, B:39:0x00c8, B:41:0x00d0, B:42:0x00de, B:44:0x00e2, B:45:0x00ee, B:48:0x00f7, B:49:0x00fb, B:51:0x0102, B:58:0x0112), top: B:78:0x0004 }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Integer m412e(List<Intent> list) {
        FileLock fileLock;
        String str;
        File[] listFiles;
        try {
            FileChannel channel = new RandomAccessFile(this.f632b.m229f(), "rw").getChannel();
            Integer num = null;
            try {
                fileLock = channel.tryLock();
            } catch (OverlappingFileLockException unused) {
                fileLock = null;
            }
            if (fileLock != null) {
                int i = 0;
                i = -11;
                try {
                    Log.i("SplitCompat", "Copying splits.");
                    for (Intent intent : list) {
                        String stringExtra = intent.getStringExtra("split_id");
                        AssetFileDescriptor openAssetFileDescriptor = this.f631a.getContentResolver().openAssetFileDescriptor(intent.getData(), "r");
                        File b = this.f632b.m233b(stringExtra);
                        if ((!b.exists() || b.length() == openAssetFileDescriptor.getLength()) && b.exists()) {
                        }
                        if (!this.f632b.m232c(stringExtra).exists()) {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(openAssetFileDescriptor.createInputStream());
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(b);
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int read = bufferedInputStream.read(bArr);
                                    if (read <= 0) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                }
                                fileOutputStream.close();
                                bufferedInputStream.close();
                            } catch (Throwable th) {
                                try {
                                    bufferedInputStream.close();
                                } catch (Throwable th2) {
                                    C1148bz.m342a(th, th2);
                                }
                                throw th;
                            }
                        } else {
                            continue;
                        }
                    }
                    Log.i("SplitCompat", "Splits copied.");
                    try {
                        listFiles = this.f632b.m228g().listFiles();
                        try {
                        } catch (Exception e) {
                            Log.e("SplitCompat", "Error verifying splits.", e);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        str = "Cannot access directory for unverified splits.";
                    }
                } catch (Exception e3) {
                    e = e3;
                    str = "Error copying splits.";
                }
                if (this.f633c.m409a(listFiles)) {
                    if (this.f633c.m408b(listFiles)) {
                        try {
                            File[] listFiles2 = this.f632b.m228g().listFiles();
                            Arrays.sort(listFiles2);
                            int length = listFiles2.length;
                            while (true) {
                                length--;
                                if (length < 0) {
                                    break;
                                }
                                File file = listFiles2[length];
                                file.renameTo(this.f632b.m231d(file));
                            }
                            Log.i("SplitCompat", "Splits verified.");
                        } catch (IOException e4) {
                            e = e4;
                            str = "Cannot write verified split.";
                            Log.e("SplitCompat", str, e);
                            i = -13;
                            num = Integer.valueOf(i);
                            fileLock.release();
                            if (channel != null) {
                            }
                            return num;
                        }
                        num = Integer.valueOf(i);
                        fileLock.release();
                    }
                }
                Log.e("SplitCompat", "Split verification failed.");
                num = Integer.valueOf(i);
                fileLock.release();
            }
            if (channel != null) {
                channel.close();
            }
            return num;
        } catch (Exception e5) {
            Log.e("SplitCompat", "Error locking files.", e5);
            return -13;
        }
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC1237f
    /* renamed from: a */
    public final void mo159a(List<Intent> list, AbstractC1235d dVar) {
        if (SplitCompat.m244b()) {
            this.f634d.execute(new RunnableC1114as(this, list, dVar));
            return;
        }
        throw new IllegalStateException("Ingestion should only be called in SplitCompat mode.");
    }
}
