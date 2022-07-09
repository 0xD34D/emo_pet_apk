package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.support.p000v4.media.session.PlaybackStateCompat;
import android.util.Base64;
import com.google.android.play.core.internal.C1119ax;
import com.google.android.play.core.internal.C1148bz;
import com.google.android.play.core.splitcompat.C1207p;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.List;
import java.util.zip.ZipException;
import kotlin.UByte;
/* renamed from: com.google.android.play.core.assetpacks.ck */
/* loaded from: classes.dex */
public final class C1044ck {

    /* renamed from: a */
    private static AbstractC0979a f446a;

    /* renamed from: a */
    public static String m546a(List<File> list) throws NoSuchAlgorithmException, IOException {
        int read;
        MessageDigest instance = MessageDigest.getInstance("SHA256");
        byte[] bArr = new byte[8192];
        for (File file : list) {
            FileInputStream fileInputStream = new FileInputStream(file);
            do {
                try {
                    read = fileInputStream.read(bArr);
                    if (read > 0) {
                        instance.update(bArr, 0, read);
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        C1148bz.m342a(th, th2);
                    }
                    throw th;
                }
            } while (read != -1);
            fileInputStream.close();
        }
        return Base64.encodeToString(instance.digest(), 11);
    }

    /* renamed from: b */
    public static AssetLocation m545b(String str, String str2) throws IOException {
        Long l;
        C1119ax.m402c(str != null, "Attempted to get file location from a null apk path.");
        C1119ax.m402c(str2 != null, String.format("Attempted to get file location in apk %s with a null file path.", str));
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        byte[] bArr = new byte[22];
        randomAccessFile.seek(randomAccessFile.length() - 22);
        randomAccessFile.readFully(bArr);
        C1008bb k = m544c(bArr, 0) == 1347093766 ? m536k(bArr) : null;
        byte b = 5;
        if (k == null) {
            long length = randomAccessFile.length() - 22;
            long j = (-65536) + length;
            if (j < 0) {
                j = 0;
            }
            int min = (int) Math.min((long) PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID, randomAccessFile.length());
            byte[] bArr2 = new byte[min];
            byte[] bArr3 = new byte[22];
            loop0: while (true) {
                long max = Math.max(3 + (length - min), j);
                randomAccessFile.seek(max);
                randomAccessFile.readFully(bArr2);
                for (int i = min - 4; i >= 0; i -= 4) {
                    byte b2 = bArr2[i];
                    int i2 = b2 != b ? b2 != 6 ? b2 != 75 ? b2 != 80 ? -1 : 0 : 1 : 3 : 2;
                    if (i2 >= 0 && i >= i2 && m544c(bArr2, i - i2) == 1347093766) {
                        randomAccessFile.seek((max + i) - i2);
                        randomAccessFile.readFully(bArr3);
                        k = m536k(bArr3);
                        break loop0;
                    }
                    b = 5;
                }
                if (max != j) {
                    length = max;
                } else {
                    throw new ZipException(String.format("End Of Central Directory signature not found in APK %s", str));
                }
            }
        }
        long j2 = k.f291a;
        byte[] bytes = str2.getBytes("UTF-8");
        byte[] bArr4 = new byte[46];
        byte[] bArr5 = new byte[str2.length()];
        int i3 = 0;
        while (true) {
            if (i3 >= k.f292b) {
                l = null;
                break;
            }
            randomAccessFile.seek(j2);
            randomAccessFile.readFully(bArr4);
            int c = m544c(bArr4, 0);
            if (c == 1347092738) {
                randomAccessFile.seek(j2 + 28);
                int e = m542e(bArr4, 28);
                if (e == str2.length()) {
                    randomAccessFile.seek(46 + j2);
                    randomAccessFile.read(bArr5);
                    if (Arrays.equals(bArr5, bytes)) {
                        l = Long.valueOf(m543d(bArr4, 42));
                        break;
                    }
                }
                j2 += e + 46 + m542e(bArr4, 30) + m542e(bArr4, 32);
                i3++;
            } else {
                throw new ZipException(String.format("Missing central directory file header signature when looking for file %s in APK %s. Read %d entries out of %d. Found %d instead of the header signature %d.", str2, str, Integer.valueOf(i3), Integer.valueOf(k.f292b), Integer.valueOf(c), 1347092738));
            }
        }
        if (l == null) {
            return null;
        }
        long longValue = l.longValue();
        byte[] bArr6 = new byte[8];
        randomAccessFile.seek(22 + longValue);
        randomAccessFile.readFully(bArr6);
        return AssetLocation.m686a(str, longValue + 30 + m542e(bArr6, 4) + m542e(bArr6, 6), m543d(bArr6, 0));
    }

    /* renamed from: c */
    static int m544c(byte[] bArr, int i) {
        return (bArr[i + 3] & UByte.MAX_VALUE) | ((bArr[i] & UByte.MAX_VALUE) << 24) | ((bArr[i + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i + 2] & UByte.MAX_VALUE) << 8);
    }

    /* renamed from: d */
    public static long m543d(byte[] bArr, int i) {
        return ((m542e(bArr, i + 2) << 16) | m542e(bArr, i)) & 4294967295L;
    }

    /* renamed from: e */
    public static int m542e(byte[] bArr, int i) {
        return ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | (bArr[i] & UByte.MAX_VALUE);
    }

    /* renamed from: f */
    public static boolean m541f(int i) {
        return i == 1 || i == 7 || i == 2 || i == 3;
    }

    /* renamed from: g */
    public static boolean m540g(int i) {
        return i == 5 || i == 6 || i == 4;
    }

    /* renamed from: h */
    public static boolean m539h(int i) {
        return i == 2 || i == 7 || i == 3;
    }

    /* renamed from: i */
    public static boolean m538i(int i, int i2) {
        if (i == 5) {
            if (i2 != 5) {
                return true;
            }
            i = 5;
        }
        if (i == 6 && i2 != 6 && i2 != 5) {
            return true;
        }
        if (i == 4 && i2 != 4) {
            return true;
        }
        if (i == 3 && (i2 == 2 || i2 == 7 || i2 == 1 || i2 == 8)) {
            return true;
        }
        if (i == 2) {
            return i2 == 1 || i2 == 8;
        }
        return false;
    }

    /* renamed from: j */
    public static synchronized AbstractC0979a m537j(Context context) {
        AbstractC0979a aVar;
        synchronized (C1044ck.class) {
            if (f446a == null) {
                C1013bg bgVar = new C1013bg(null);
                bgVar.m594b(new C1073l(C1207p.m201c(context)));
                f446a = bgVar.m595a();
            }
            aVar = f446a;
        }
        return aVar;
    }

    /* renamed from: k */
    private static C1008bb m536k(byte[] bArr) {
        int e = m542e(bArr, 10);
        m543d(bArr, 12);
        return new C1008bb(m543d(bArr, 16), e);
    }
}
