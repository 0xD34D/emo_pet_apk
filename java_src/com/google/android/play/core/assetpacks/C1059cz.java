package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1148bz;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Properties;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.cz */
/* loaded from: classes.dex */
public final class C1059cz {

    /* renamed from: a */
    private static final C1102ag f502a = new C1102ag("SliceMetadataManager");

    /* renamed from: c */
    private final C1000au f504c;

    /* renamed from: d */
    private final String f505d;

    /* renamed from: e */
    private final int f506e;

    /* renamed from: f */
    private final long f507f;

    /* renamed from: g */
    private final String f508g;

    /* renamed from: b */
    private final byte[] f503b = new byte[8192];

    /* renamed from: h */
    private int f509h = -1;

    public C1059cz(C1000au auVar, String str, int i, long j, String str2) {
        this.f504c = auVar;
        this.f505d = str;
        this.f506e = i;
        this.f507f = j;
        this.f508g = str2;
    }

    /* renamed from: n */
    private final File m504n() {
        File o = this.f504c.m621o(this.f505d, this.f506e, this.f507f, this.f508g);
        if (!o.exists()) {
            o.mkdirs();
        }
        return o;
    }

    /* renamed from: o */
    private final File m503o() throws IOException {
        File m = this.f504c.m623m(this.f505d, this.f506e, this.f507f, this.f508g);
        m.getParentFile().mkdirs();
        m.createNewFile();
        return m;
    }

    /* renamed from: a */
    public final void m517a(String str, long j, long j2, int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "1");
        properties.put("fileName", str);
        properties.put("fileOffset", String.valueOf(j));
        properties.put("remainingBytes", String.valueOf(j2));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f509h));
        FileOutputStream fileOutputStream = new FileOutputStream(m503o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C1148bz.m342a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: b */
    public final void m516b(byte[] bArr, int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "2");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f509h));
        FileOutputStream fileOutputStream = new FileOutputStream(m503o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
            File n = this.f504c.m622n(this.f505d, this.f506e, this.f507f, this.f508g);
            if (n.exists()) {
                n.delete();
            }
            fileOutputStream = new FileOutputStream(n);
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } finally {
                try {
                    fileOutputStream.close();
                } catch (Throwable th) {
                    C1148bz.m342a(th, th);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* renamed from: c */
    public final void m515c(int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "3");
        properties.put("fileOffset", String.valueOf(m508j().length()));
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f509h));
        FileOutputStream fileOutputStream = new FileOutputStream(m503o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C1148bz.m342a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: d */
    public final void m514d(int i) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "4");
        properties.put("previousChunk", String.valueOf(i));
        properties.put("metadataFileCounter", String.valueOf(this.f509h));
        FileOutputStream fileOutputStream = new FileOutputStream(m503o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C1148bz.m342a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: e */
    public final C1058cy m513e() throws IOException {
        File m = this.f504c.m623m(this.f505d, this.f506e, this.f507f, this.f508g);
        if (m.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream = new FileInputStream(m);
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
                if (properties.getProperty("fileStatus") == null || properties.getProperty("previousChunk") == null) {
                    throw new C1017bk("Slice checkpoint file corrupt.");
                }
                try {
                    int parseInt = Integer.parseInt(properties.getProperty("fileStatus"));
                    String property = properties.getProperty("fileName");
                    long parseLong = Long.parseLong(properties.getProperty("fileOffset", "-1"));
                    long parseLong2 = Long.parseLong(properties.getProperty("remainingBytes", "-1"));
                    int parseInt2 = Integer.parseInt(properties.getProperty("previousChunk"));
                    this.f509h = Integer.parseInt(properties.getProperty("metadataFileCounter", "0"));
                    return new C1058cy(parseInt, property, parseLong, parseLong2, parseInt2);
                } catch (NumberFormatException e) {
                    throw new C1017bk("Slice checkpoint file corrupt.", e);
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    C1148bz.m342a(th, th2);
                }
                throw th;
            }
        } else {
            throw new C1017bk("Slice checkpoint file does not exist.");
        }
    }

    /* renamed from: f */
    public final void m512f(InputStream inputStream, long j) throws IOException {
        int read;
        RandomAccessFile randomAccessFile = new RandomAccessFile(m508j(), "rw");
        try {
            randomAccessFile.seek(j);
            do {
                read = inputStream.read(this.f503b);
                if (read > 0) {
                    randomAccessFile.write(this.f503b, 0, read);
                }
            } while (read == 8192);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                C1148bz.m342a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: g */
    public final void m511g(byte[] bArr) throws IOException {
        this.f509h++;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(m504n(), String.format("%s-LFH.dat", Integer.valueOf(this.f509h))));
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (IOException e) {
            throw new C1017bk("Could not write metadata file.", e);
        }
    }

    /* renamed from: h */
    public final void m510h(byte[] bArr, InputStream inputStream) throws IOException {
        this.f509h++;
        FileOutputStream fileOutputStream = new FileOutputStream(m508j());
        try {
            fileOutputStream.write(bArr);
            int read = inputStream.read(this.f503b);
            while (read > 0) {
                fileOutputStream.write(this.f503b, 0, read);
                read = inputStream.read(this.f503b);
            }
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C1148bz.m342a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: i */
    public final void m509i(long j, byte[] bArr, int i, int i2) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(m508j(), "rw");
        try {
            randomAccessFile.seek(j);
            randomAccessFile.write(bArr, i, i2);
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                C1148bz.m342a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: j */
    public final File m508j() {
        return new File(m504n(), String.format("%s-NAM.dat", Integer.valueOf(this.f509h)));
    }

    /* renamed from: k */
    public final int m507k() throws IOException {
        File m = this.f504c.m623m(this.f505d, this.f506e, this.f507f, this.f508g);
        if (!m.exists()) {
            return 0;
        }
        FileInputStream fileInputStream = new FileInputStream(m);
        try {
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (Integer.parseInt(properties.getProperty("fileStatus", "-1")) == 4) {
                return -1;
            }
            if (properties.getProperty("previousChunk") != null) {
                return Integer.parseInt(properties.getProperty("previousChunk")) + 1;
            }
            throw new C1017bk("Slice checkpoint file corrupt.");
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                C1148bz.m342a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: l */
    public final boolean m506l() {
        File m = this.f504c.m623m(this.f505d, this.f506e, this.f507f, this.f508g);
        if (!m.exists()) {
            return false;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(m);
            Properties properties = new Properties();
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("fileStatus") != null) {
                return Integer.parseInt(properties.getProperty("fileStatus")) == 4;
            }
            f502a.m442b("Slice checkpoint file corrupt while checking if extraction finished.", new Object[0]);
            return false;
        } catch (IOException e) {
            f502a.m442b("Could not read checkpoint while checking if extraction finished. %s", e);
            return false;
        }
    }

    /* renamed from: m */
    public final void m505m(byte[] bArr, int i) throws IOException {
        this.f509h++;
        FileOutputStream fileOutputStream = new FileOutputStream(m508j());
        try {
            fileOutputStream.write(bArr, 0, i);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                C1148bz.m342a(th, th2);
            }
            throw th;
        }
    }
}
