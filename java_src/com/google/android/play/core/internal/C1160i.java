package com.google.android.play.core.internal;

import android.support.p000v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.play.core.internal.i */
/* loaded from: classes.dex */
public final class C1160i {
    /* renamed from: a */
    static Pair<ByteBuffer, Long> m330a(RandomAccessFile randomAccessFile) throws IOException {
        if (randomAccessFile.length() < 22) {
            return null;
        }
        Pair<ByteBuffer, Long> h = m323h(randomAccessFile, 0);
        return h != null ? h : m323h(randomAccessFile, SupportMenu.USER_MASK);
    }

    /* renamed from: b */
    public static long m329b(ByteBuffer byteBuffer) {
        m322i(byteBuffer);
        return m321j(byteBuffer, byteBuffer.position() + 16);
    }

    /* renamed from: c */
    public static void m328c(ByteBuffer byteBuffer, long j) {
        m322i(byteBuffer);
        int position = byteBuffer.position() + 16;
        if (j < 0 || j > 4294967295L) {
            StringBuilder sb = new StringBuilder(47);
            sb.append("uint32 value of out range: ");
            sb.append(j);
            throw new IllegalArgumentException(sb.toString());
        }
        byteBuffer.putInt(byteBuffer.position() + position, (int) j);
    }

    /* renamed from: d */
    public static long m327d(ByteBuffer byteBuffer) {
        m322i(byteBuffer);
        return m321j(byteBuffer, byteBuffer.position() + 12);
    }

    /* renamed from: e */
    public static String m326e(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: f */
    public static String m325f(String str, String str2, String str3) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length + 2 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        sb.append(":");
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: g */
    public static X509Certificate[][] m324g(String str) throws C1157f, SecurityException, IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair<ByteBuffer, Long> a = m330a(randomAccessFile);
            if (a != null) {
                ByteBuffer byteBuffer = (ByteBuffer) a.first;
                long longValue = ((Long) a.second).longValue();
                long j = (-20) + longValue;
                if (j >= 0) {
                    randomAccessFile.seek(j);
                    if (randomAccessFile.readInt() == 1347094023) {
                        throw new C1157f("ZIP64 APK not supported");
                    }
                }
                long b = m329b(byteBuffer);
                if (b >= longValue) {
                    StringBuilder sb = new StringBuilder(122);
                    sb.append("ZIP Central Directory offset out of range: ");
                    sb.append(b);
                    sb.append(". ZIP End of Central Directory offset: ");
                    sb.append(longValue);
                    throw new C1157f(sb.toString());
                } else if (m327d(byteBuffer) + b != longValue) {
                    throw new C1157f("ZIP Central Directory is not immediately followed by End of Central Directory");
                } else if (b >= 32) {
                    ByteBuffer allocate = ByteBuffer.allocate(24);
                    allocate.order(ByteOrder.LITTLE_ENDIAN);
                    randomAccessFile.seek(b - allocate.capacity());
                    randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                    if (allocate.getLong(8) == 2334950737559900225L && allocate.getLong(16) == 3617552046287187010L) {
                        int i = 0;
                        long j2 = allocate.getLong(0);
                        if (j2 < allocate.capacity() || j2 > 2147483639) {
                            StringBuilder sb2 = new StringBuilder(57);
                            sb2.append("APK Signing Block size out of range: ");
                            sb2.append(j2);
                            throw new C1157f(sb2.toString());
                        }
                        int i2 = (int) (8 + j2);
                        long j3 = b - i2;
                        if (j3 >= 0) {
                            ByteBuffer allocate2 = ByteBuffer.allocate(i2);
                            allocate2.order(ByteOrder.LITTLE_ENDIAN);
                            randomAccessFile.seek(j3);
                            randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                            long j4 = allocate2.getLong(0);
                            if (j4 == j2) {
                                Pair create = Pair.create(allocate2, Long.valueOf(j3));
                                ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                                long longValue2 = ((Long) create.second).longValue();
                                if (byteBuffer2.order() == ByteOrder.LITTLE_ENDIAN) {
                                    int capacity = byteBuffer2.capacity() - 24;
                                    if (capacity >= 8) {
                                        int capacity2 = byteBuffer2.capacity();
                                        if (capacity <= byteBuffer2.capacity()) {
                                            int limit = byteBuffer2.limit();
                                            int position = byteBuffer2.position();
                                            byteBuffer2.position(0);
                                            byteBuffer2.limit(capacity);
                                            byteBuffer2.position(8);
                                            ByteBuffer slice = byteBuffer2.slice();
                                            slice.order(byteBuffer2.order());
                                            byteBuffer2.position(0);
                                            byteBuffer2.limit(limit);
                                            byteBuffer2.position(position);
                                            while (slice.hasRemaining()) {
                                                i++;
                                                if (slice.remaining() >= 8) {
                                                    long j5 = slice.getLong();
                                                    if (j5 < 4 || j5 > 2147483647L) {
                                                        StringBuilder sb3 = new StringBuilder(76);
                                                        sb3.append("APK Signing Block entry #");
                                                        sb3.append(i);
                                                        sb3.append(" size out of range: ");
                                                        sb3.append(j5);
                                                        throw new C1157f(sb3.toString());
                                                    }
                                                    int i3 = (int) j5;
                                                    int position2 = slice.position() + i3;
                                                    if (i3 > slice.remaining()) {
                                                        int remaining = slice.remaining();
                                                        StringBuilder sb4 = new StringBuilder(91);
                                                        sb4.append("APK Signing Block entry #");
                                                        sb4.append(i);
                                                        sb4.append(" size out of range: ");
                                                        sb4.append(i3);
                                                        sb4.append(", available: ");
                                                        sb4.append(remaining);
                                                        throw new C1157f(sb4.toString());
                                                    } else if (slice.getInt() == 1896449818) {
                                                        X509Certificate[][] k = m320k(randomAccessFile.getChannel(), new C1156e(m313r(slice, i3 - 4), longValue2, b, longValue, byteBuffer));
                                                        randomAccessFile.close();
                                                        return k;
                                                    } else {
                                                        slice.position(position2);
                                                    }
                                                } else {
                                                    StringBuilder sb5 = new StringBuilder(70);
                                                    sb5.append("Insufficient data to read size of APK Signing Block entry #");
                                                    sb5.append(i);
                                                    throw new C1157f(sb5.toString());
                                                }
                                            }
                                            throw new C1157f("No APK Signature Scheme v2 block in APK Signing Block");
                                        }
                                        StringBuilder sb6 = new StringBuilder(41);
                                        sb6.append("end > capacity: ");
                                        sb6.append(capacity);
                                        sb6.append(" > ");
                                        sb6.append(capacity2);
                                        throw new IllegalArgumentException(sb6.toString());
                                    }
                                    StringBuilder sb7 = new StringBuilder(38);
                                    sb7.append("end < start: ");
                                    sb7.append(capacity);
                                    sb7.append(" < ");
                                    sb7.append(8);
                                    throw new IllegalArgumentException(sb7.toString());
                                }
                                throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                            }
                            StringBuilder sb8 = new StringBuilder(103);
                            sb8.append("APK Signing Block sizes in header and footer do not match: ");
                            sb8.append(j4);
                            sb8.append(" vs ");
                            sb8.append(j2);
                            throw new C1157f(sb8.toString());
                        }
                        StringBuilder sb9 = new StringBuilder(59);
                        sb9.append("APK Signing Block offset out of range: ");
                        sb9.append(j3);
                        throw new C1157f(sb9.toString());
                    }
                    throw new C1157f("No APK Signing Block before ZIP Central Directory");
                } else {
                    StringBuilder sb10 = new StringBuilder(87);
                    sb10.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                    sb10.append(b);
                    throw new C1157f(sb10.toString());
                }
            } else {
                long length = randomAccessFile.length();
                StringBuilder sb11 = new StringBuilder(102);
                sb11.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
                sb11.append(length);
                sb11.append(" bytes");
                throw new C1157f(sb11.toString());
            }
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: h */
    private static Pair<ByteBuffer, Long> m323h(RandomAccessFile randomAccessFile, int i) throws IOException {
        int i2;
        long length = randomAccessFile.length();
        if (length < 22) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i, (-22) + length)) + 22);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long capacity = length - allocate.capacity();
        randomAccessFile.seek(capacity);
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        m322i(allocate);
        int capacity2 = allocate.capacity();
        if (capacity2 >= 22) {
            int i3 = capacity2 - 22;
            int min = Math.min(i3, (int) SupportMenu.USER_MASK);
            for (int i4 = 0; i4 < min; i4++) {
                i2 = i3 - i4;
                if (allocate.getInt(i2) == 101010256 && ((char) allocate.getShort(i2 + 20)) == i4) {
                    break;
                }
            }
        }
        i2 = -1;
        if (i2 == -1) {
            return null;
        }
        allocate.position(i2);
        ByteBuffer slice = allocate.slice();
        slice.order(ByteOrder.LITTLE_ENDIAN);
        return Pair.create(slice, Long.valueOf(capacity + i2));
    }

    /* renamed from: i */
    private static void m322i(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    /* renamed from: j */
    private static long m321j(ByteBuffer byteBuffer, int i) {
        return byteBuffer.getInt(i) & 4294967295L;
    }

    /* renamed from: k */
    private static X509Certificate[][] m320k(FileChannel fileChannel, C1156e eVar) throws SecurityException {
        ByteBuffer byteBuffer;
        long j;
        long j2;
        long j3;
        ByteBuffer byteBuffer2;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory instance = CertificateFactory.getInstance("X.509");
            try {
                byteBuffer = eVar.f668a;
                ByteBuffer s = m312s(byteBuffer);
                int i = 0;
                while (s.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(m319l(m312s(s), hashMap, instance));
                    } catch (IOException | SecurityException | BufferUnderflowException e) {
                        StringBuilder sb = new StringBuilder(48);
                        sb.append("Failed to parse/verify signer #");
                        sb.append(i);
                        sb.append(" block");
                        throw new SecurityException(sb.toString(), e);
                    }
                }
                if (i <= 0) {
                    throw new SecurityException("No signers found");
                } else if (!hashMap.isEmpty()) {
                    j = eVar.f669b;
                    j2 = eVar.f670c;
                    j3 = eVar.f671d;
                    byteBuffer2 = eVar.f672e;
                    m318m(hashMap, fileChannel, j, j2, j3, byteBuffer2);
                    return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                } else {
                    throw new SecurityException("No content digests found");
                }
            } catch (IOException e2) {
                throw new SecurityException("Failed to read list of signers", e2);
            }
        } catch (CertificateException e3) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
        r11 = m316o(r5);
        r12 = m316o(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        if (r11 == 1) goto L_0x0016;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r12 == 1) goto L_0x0055;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x014b A[Catch: NoSuchAlgorithmException -> 0x0277, InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x0275, InvalidKeyException -> 0x0273, InvalidAlgorithmParameterException -> 0x0271, SignatureException -> 0x026f, TryCatch #5 {InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException -> 0x0275, blocks: (B:66:0x0135, B:68:0x014b, B:69:0x014e), top: B:125:0x0135 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0157  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static X509Certificate[] m319l(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) throws SecurityException, IOException {
        String str;
        Pair pair;
        String str2;
        AlgorithmParameterSpec algorithmParameterSpec;
        Signature instance;
        String str3;
        String str4;
        PSSParameterSpec pSSParameterSpec;
        ByteBuffer s = m312s(byteBuffer);
        ByteBuffer s2 = m312s(byteBuffer);
        byte[] t = m311t(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArr = null;
        int i = -1;
        byte[] bArr2 = null;
        int i2 = 0;
        while (s2.hasRemaining()) {
            i2++;
            try {
                ByteBuffer s3 = m312s(s2);
                if (s3.remaining() >= 8) {
                    int i3 = s3.getInt();
                    arrayList.add(Integer.valueOf(i3));
                    if (!(i3 == 513 || i3 == 514 || i3 == 769)) {
                        switch (i3) {
                            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                            case 258:
                            case 259:
                            case 260:
                                break;
                            default:
                                continue;
                        }
                    }
                    bArr2 = m311t(s3);
                    i = i3;
                } else {
                    throw new SecurityException("Signature record too short");
                }
            } catch (IOException | BufferUnderflowException e) {
                StringBuilder sb = new StringBuilder(45);
                sb.append("Failed to parse signature record #");
                sb.append(i2);
                throw new SecurityException(sb.toString(), e);
            }
        }
        if (i != -1) {
            if (i == 513 || i == 514) {
                str = "EC";
            } else if (i != 769) {
                switch (i) {
                    case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                    case 258:
                    case 259:
                    case 260:
                        str = "RSA";
                        break;
                    default:
                        String valueOf = String.valueOf(Long.toHexString(i));
                        throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf) : new String("Unknown signature algorithm: 0x"));
                }
            } else {
                str = "DSA";
            }
            try {
                if (i == 513) {
                    str3 = "SHA256withECDSA";
                } else if (i == 514) {
                    str3 = "SHA512withECDSA";
                } else if (i != 769) {
                    switch (i) {
                        case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
                            pSSParameterSpec = new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1);
                            str4 = "SHA256withRSA/PSS";
                            pair = Pair.create(str4, pSSParameterSpec);
                            break;
                        case 258:
                            pSSParameterSpec = new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1);
                            str4 = "SHA512withRSA/PSS";
                            pair = Pair.create(str4, pSSParameterSpec);
                            break;
                        case 259:
                            str3 = "SHA256withRSA";
                            break;
                        case 260:
                            str3 = "SHA512withRSA";
                            break;
                        default:
                            String valueOf2 = String.valueOf(Long.toHexString(i));
                            throw new IllegalArgumentException(valueOf2.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf2) : new String("Unknown signature algorithm: 0x"));
                    }
                    str2 = (String) pair.first;
                    algorithmParameterSpec = (AlgorithmParameterSpec) pair.second;
                    PublicKey generatePublic = KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(t));
                    instance = Signature.getInstance(str2);
                    instance.initVerify(generatePublic);
                    if (algorithmParameterSpec != null) {
                        instance.setParameter(algorithmParameterSpec);
                    }
                    instance.update(s);
                    if (!instance.verify(bArr2)) {
                        s.clear();
                        ByteBuffer s4 = m312s(s);
                        ArrayList arrayList2 = new ArrayList();
                        int i4 = 0;
                        while (s4.hasRemaining()) {
                            i4++;
                            try {
                                ByteBuffer s5 = m312s(s4);
                                if (s5.remaining() >= 8) {
                                    int i5 = s5.getInt();
                                    arrayList2.add(Integer.valueOf(i5));
                                    if (i5 == i) {
                                        bArr = m311t(s5);
                                    }
                                } else {
                                    throw new IOException("Record too short");
                                }
                            } catch (IOException | BufferUnderflowException e2) {
                                StringBuilder sb2 = new StringBuilder(42);
                                sb2.append("Failed to parse digest record #");
                                sb2.append(i4);
                                throw new IOException(sb2.toString(), e2);
                            }
                        }
                        if (arrayList.equals(arrayList2)) {
                            int o = m316o(i);
                            byte[] put = map.put(Integer.valueOf(o), bArr);
                            if (put == null || MessageDigest.isEqual(put, bArr)) {
                                ByteBuffer s6 = m312s(s);
                                ArrayList arrayList3 = new ArrayList();
                                int i6 = 0;
                                while (s6.hasRemaining()) {
                                    i6++;
                                    byte[] t2 = m311t(s6);
                                    try {
                                        arrayList3.add(new C1158g((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(t2)), t2));
                                    } catch (CertificateException e3) {
                                        StringBuilder sb3 = new StringBuilder(41);
                                        sb3.append("Failed to decode certificate #");
                                        sb3.append(i6);
                                        throw new SecurityException(sb3.toString(), e3);
                                    }
                                }
                                if (arrayList3.isEmpty()) {
                                    throw new SecurityException("No certificates listed");
                                } else if (Arrays.equals(t, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                                    return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
                                } else {
                                    throw new SecurityException("Public key mismatch between certificate and signature record");
                                }
                            } else {
                                throw new SecurityException(m315p(o).concat(" contents digest does not match the digest specified by a preceding signer"));
                            }
                        } else {
                            throw new SecurityException("Signature algorithms don't match between digests and signatures records");
                        }
                    } else {
                        throw new SecurityException(String.valueOf(str2).concat(" signature did not verify"));
                    }
                } else {
                    str3 = "SHA256withDSA";
                }
                PublicKey generatePublic2 = KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(t));
                instance = Signature.getInstance(str2);
                instance.initVerify(generatePublic2);
                if (algorithmParameterSpec != null) {
                }
                instance.update(s);
                if (!instance.verify(bArr2)) {
                }
            } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException | InvalidKeySpecException e4) {
                StringBuilder sb4 = new StringBuilder(String.valueOf(str2).length() + 27);
                sb4.append("Failed to verify ");
                sb4.append(str2);
                sb4.append(" signature");
                throw new SecurityException(sb4.toString(), e4);
            }
            pair = Pair.create(str3, null);
            str2 = (String) pair.first;
            algorithmParameterSpec = (AlgorithmParameterSpec) pair.second;
        } else if (i2 == 0) {
            throw new SecurityException("No signatures found");
        } else {
            throw new SecurityException("No supported signatures found");
        }
    }

    /* renamed from: m */
    private static void m318m(Map<Integer, byte[]> map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) throws SecurityException {
        if (!map.isEmpty()) {
            C1155d dVar = new C1155d(fileChannel, 0L, j);
            C1155d dVar2 = new C1155d(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            m328c(duplicate, j);
            C1122b bVar = new C1122b(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i = 0;
            for (Integer num : map.keySet()) {
                iArr[i] = num.intValue();
                i++;
            }
            try {
                byte[][] n = m317n(iArr, new AbstractC1149c[]{dVar, dVar2, bVar});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), n[i2])) {
                        throw new SecurityException(m315p(i3).concat(" digest of contents did not verify"));
                    }
                }
            } catch (DigestException e) {
                throw new SecurityException("Failed to compute digest(s) of contents", e);
            }
        } else {
            throw new SecurityException("No digests provided");
        }
    }

    /* renamed from: n */
    private static byte[][] m317n(int[] iArr, AbstractC1149c[] cVarArr) throws DigestException {
        long j;
        int i;
        int length;
        long j2 = 0;
        long j3 = 0;
        int i2 = 0;
        while (true) {
            j = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            if (i2 >= 3) {
                break;
            }
            j3 += (cVarArr[i2].mo337a() + 1048575) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            i2++;
        }
        if (j3 < 2097151) {
            int i3 = (int) j3;
            byte[][] bArr = new byte[iArr.length];
            int i4 = 0;
            while (true) {
                length = iArr.length;
                if (i4 >= length) {
                    break;
                }
                byte[] bArr2 = new byte[(m314q(iArr[i4]) * i3) + 5];
                bArr2[0] = 90;
                m310u(i3, bArr2);
                bArr[i4] = bArr2;
                i4++;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            for (int i5 = 0; i5 < iArr.length; i5++) {
                String p = m315p(iArr[i5]);
                try {
                    messageDigestArr[i5] = MessageDigest.getInstance(p);
                } catch (NoSuchAlgorithmException e) {
                    throw new RuntimeException(p.concat(" digest not supported"), e);
                }
            }
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            for (i = 3; i6 < i; i = 3) {
                AbstractC1149c cVar = cVarArr[i6];
                long a = cVar.mo337a();
                long j4 = j2;
                while (a > j2) {
                    int min = (int) Math.min(a, j);
                    m310u(min, bArr3);
                    for (int i9 = 0; i9 < length; i9++) {
                        messageDigestArr[i9].update(bArr3);
                    }
                    try {
                        cVar.mo336b(messageDigestArr, j4, min);
                        int i10 = 0;
                        while (i10 < iArr.length) {
                            int i11 = iArr[i10];
                            byte[] bArr4 = bArr[i10];
                            int q = m314q(i11);
                            MessageDigest messageDigest = messageDigestArr[i10];
                            int digest = messageDigest.digest(bArr4, (i7 * q) + 5, q);
                            if (digest == q) {
                                i10++;
                                cVar = cVar;
                                bArr3 = bArr3;
                                messageDigestArr = messageDigestArr;
                            } else {
                                String algorithm = messageDigest.getAlgorithm();
                                StringBuilder sb = new StringBuilder(String.valueOf(algorithm).length() + 46);
                                sb.append("Unexpected output size of ");
                                sb.append(algorithm);
                                sb.append(" digest: ");
                                sb.append(digest);
                                throw new RuntimeException(sb.toString());
                            }
                        }
                        long j5 = min;
                        j4 += j5;
                        a -= j5;
                        i7++;
                        j2 = 0;
                        j = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                        cVar = cVar;
                        bArr3 = bArr3;
                    } catch (IOException e2) {
                        StringBuilder sb2 = new StringBuilder(59);
                        sb2.append("Failed to digest chunk #");
                        sb2.append(i7);
                        sb2.append(" of section #");
                        sb2.append(i8);
                        throw new DigestException(sb2.toString(), e2);
                    }
                }
                i8++;
                i6++;
                j2 = 0;
                j = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            }
            byte[][] bArr5 = new byte[iArr.length];
            for (int i12 = 0; i12 < iArr.length; i12++) {
                int i13 = iArr[i12];
                byte[] bArr6 = bArr[i12];
                String p2 = m315p(i13);
                try {
                    bArr5[i12] = MessageDigest.getInstance(p2).digest(bArr6);
                } catch (NoSuchAlgorithmException e3) {
                    throw new RuntimeException(p2.concat(" digest not supported"), e3);
                }
            }
            return bArr5;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Too many chunks: ");
        sb3.append(j3);
        throw new DigestException(sb3.toString());
    }

    /* renamed from: o */
    private static int m316o(int i) {
        if (i == 513) {
            return 1;
        }
        if (i == 514) {
            return 2;
        }
        if (i == 769) {
            return 1;
        }
        switch (i) {
            case InputDeviceCompat.SOURCE_KEYBOARD /* 257 */:
            case 259:
                return 1;
            case 258:
            case 260:
                return 2;
            default:
                String valueOf = String.valueOf(Long.toHexString(i));
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf) : new String("Unknown signature algorithm: 0x"));
        }
    }

    /* renamed from: p */
    private static String m315p(int i) {
        if (i == 1) {
            return "SHA-256";
        }
        if (i == 2) {
            return "SHA-512";
        }
        StringBuilder sb = new StringBuilder(44);
        sb.append("Unknown content digest algorthm: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: q */
    private static int m314q(int i) {
        if (i == 1) {
            return 32;
        }
        if (i == 2) {
            return 64;
        }
        StringBuilder sb = new StringBuilder(44);
        sb.append("Unknown content digest algorthm: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: r */
    private static ByteBuffer m313r(ByteBuffer byteBuffer, int i) throws BufferUnderflowException {
        if (i >= 0) {
            int limit = byteBuffer.limit();
            int position = byteBuffer.position();
            int i2 = i + position;
            if (i2 < position || i2 > limit) {
                throw new BufferUnderflowException();
            }
            byteBuffer.limit(i2);
            try {
                ByteBuffer slice = byteBuffer.slice();
                slice.order(byteBuffer.order());
                byteBuffer.position(i2);
                return slice;
            } finally {
                byteBuffer.limit(limit);
            }
        } else {
            StringBuilder sb = new StringBuilder(17);
            sb.append("size: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* renamed from: s */
    private static ByteBuffer m312s(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i < 0) {
                throw new IllegalArgumentException("Negative length");
            } else if (i <= byteBuffer.remaining()) {
                return m313r(byteBuffer, i);
            } else {
                int remaining = byteBuffer.remaining();
                StringBuilder sb = new StringBuilder(101);
                sb.append("Length-prefixed field longer than remaining buffer. Field length: ");
                sb.append(i);
                sb.append(", remaining: ");
                sb.append(remaining);
                throw new IOException(sb.toString());
            }
        } else {
            int remaining2 = byteBuffer.remaining();
            StringBuilder sb2 = new StringBuilder(93);
            sb2.append("Remaining buffer too short to contain length of length-prefixed field. Remaining: ");
            sb2.append(remaining2);
            throw new IOException(sb2.toString());
        }
    }

    /* renamed from: t */
    private static byte[] m311t(ByteBuffer byteBuffer) throws IOException {
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IOException("Negative length");
        } else if (i <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i];
            byteBuffer.get(bArr);
            return bArr;
        } else {
            int remaining = byteBuffer.remaining();
            StringBuilder sb = new StringBuilder(90);
            sb.append("Underflow while reading length-prefixed value. Length: ");
            sb.append(i);
            sb.append(", available: ");
            sb.append(remaining);
            throw new IOException(sb.toString());
        }
    }

    /* renamed from: u */
    private static void m310u(int i, byte[] bArr) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }
}
