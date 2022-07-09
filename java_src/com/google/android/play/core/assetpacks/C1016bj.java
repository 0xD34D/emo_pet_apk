package com.google.android.play.core.assetpacks;

import android.support.p000v4.media.session.PlaybackStateCompat;
import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.internal.C1102ag;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.io.SequenceInputStream;
import java.util.zip.GZIPInputStream;
/* renamed from: com.google.android.play.core.assetpacks.bj */
/* loaded from: classes.dex */
public final class C1016bj {

    /* renamed from: a */
    private static final C1102ag f338a = new C1102ag("ExtractChunkTaskHandler");

    /* renamed from: b */
    private final byte[] f339b = new byte[8192];

    /* renamed from: c */
    private final C1000au f340c;

    /* renamed from: d */
    private final AbstractC1150ca<AbstractC1082t> f341d;

    /* renamed from: e */
    private final AbstractC1150ca<C0997ar> f342e;

    /* renamed from: f */
    private final C1021bo f343f;

    public C1016bj(C1000au auVar, AbstractC1150ca<AbstractC1082t> caVar, AbstractC1150ca<C0997ar> caVar2, C1021bo boVar) {
        this.f340c = auVar;
        this.f341d = caVar;
        this.f342e = caVar2;
        this.f343f = boVar;
    }

    /* renamed from: b */
    private final File m588b(C1015bi biVar) {
        File h = this.f340c.m628h(biVar.f417k, biVar.f329a, biVar.f330b, biVar.f331c);
        if (!h.exists()) {
            h.mkdirs();
        }
        return h;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:2|(1:4)|5|106|6|(1:8)(2:9|10)|11|(2:13|(12:15|(1:(1:(2:19|(2:22|23))(2:24|25))(2:26|(10:28|(7:51|(4:52|(2:56|(1:64)(4:60|(1:62)|115|63))|65|(1:67)(1:113))|114|69|(1:71)|72|(2:74|(1:76)(2:77|(1:79)(3:80|(2:82|(1:84)(2:85|86))(1:87)|88))))|89|90|(2:107|92)|96|109|97|99|(2:101|102)(1:116))(2:29|30)))(2:31|(4:33|(4:34|(1:36)|37|(1:41)(1:111))|42|(1:44))(2:45|46))|21|(0)|89|90|(0)|96|109|97|99|(0)(0))(2:47|48))|49|(0)|89|90|(0)|96|109|97|99|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02ed, code lost:
        com.google.android.play.core.assetpacks.C1016bj.f338a.m439e("Could not close file for chunk %s of slice %s of pack %s.", java.lang.Integer.valueOf(r23.f333e), r23.f331c, r23.f417k);
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0291 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x017d A[Catch: all -> 0x032f, TryCatch #3 {IOException -> 0x033b, blocks: (B:6:0x002f, B:9:0x0037, B:89:0x0288, B:11:0x003f, B:13:0x0045, B:15:0x0053, B:19:0x005d, B:22:0x0077, B:23:0x0080, B:24:0x0081, B:25:0x009a, B:26:0x009b, B:28:0x00c2, B:29:0x00ce, B:30:0x00d7, B:31:0x00d8, B:33:0x00f6, B:34:0x0108, B:36:0x011b, B:37:0x0120, B:42:0x012f, B:44:0x0138, B:45:0x0150, B:46:0x0159, B:47:0x015a, B:48:0x0179, B:51:0x017d, B:52:0x0186, B:54:0x0190, B:56:0x0196, B:58:0x019c, B:60:0x01a2, B:62:0x01c6, B:63:0x01d2, B:64:0x01d6, B:65:0x01dd, B:67:0x01e3, B:69:0x01e9, B:71:0x01ef, B:72:0x01ff, B:74:0x0205, B:76:0x020b, B:77:0x021e, B:79:0x0224, B:80:0x0233, B:82:0x0239, B:85:0x0261, B:86:0x0268, B:87:0x0269, B:88:0x027a), top: B:106:0x002f }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m589a(C1015bi biVar) {
        C1065de a;
        long j;
        File file;
        int min;
        int max;
        long j2;
        C1059cz czVar = new C1059cz(this.f340c, biVar.f417k, biVar.f329a, biVar.f330b, biVar.f331c);
        File o = this.f340c.m621o(biVar.f417k, biVar.f329a, biVar.f330b, biVar.f331c);
        if (!o.exists()) {
            o.mkdirs();
        }
        try {
            InputStream inputStream = biVar.f337i;
            InputStream gZIPInputStream = biVar.f332d != 1 ? inputStream : new GZIPInputStream(inputStream, 8192);
            InputStream inputStream2 = null;
            if (biVar.f333e > 0) {
                C1058cy e = czVar.m513e();
                int e2 = e.m518e();
                int i = biVar.f333e;
                if (e2 == i - 1) {
                    int a2 = e.m522a();
                    if (a2 == 1) {
                        f338a.m443a("Resuming zip entry from last chunk during file %s.", e.m521b());
                        File file2 = new File(e.m521b());
                        if (file2.exists()) {
                            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
                            randomAccessFile.seek(e.m520c());
                            long d = e.m519d();
                            while (true) {
                                min = (int) Math.min(d, (long) PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                                max = Math.max(gZIPInputStream.read(this.f339b, 0, min), 0);
                                if (max > 0) {
                                    randomAccessFile.write(this.f339b, 0, max);
                                }
                                j2 = d - max;
                                if (j2 <= 0 || max <= 0) {
                                    break;
                                }
                                d = j2;
                            }
                            long length = randomAccessFile.length();
                            randomAccessFile.close();
                            if (max != min) {
                                f338a.m443a("Chunk has ended while resuming the previous chunks file content.", new Object[0]);
                                czVar.m517a(file2.getCanonicalPath(), length, j2, biVar.f333e);
                            }
                        } else {
                            throw new C1017bk("Partial file specified in checkpoint does not exist. Corrupt directory.", biVar.f416j);
                        }
                    } else if (a2 == 2) {
                        f338a.m443a("Resuming zip entry from last chunk during local file header.", new Object[0]);
                        File n = this.f340c.m622n(biVar.f417k, biVar.f329a, biVar.f330b, biVar.f331c);
                        if (n.exists()) {
                            inputStream2 = new SequenceInputStream(new FileInputStream(n), gZIPInputStream);
                            if (inputStream2 != null) {
                                C1010bd bdVar = new C1010bd(inputStream2);
                                File b = m588b(biVar);
                                do {
                                    a = bdVar.m604a();
                                    if (!a.m492g() && !bdVar.m602c()) {
                                        if (!a.m496c() || a.m497b()) {
                                            czVar.m510h(a.m490i(), bdVar);
                                        } else {
                                            czVar.m511g(a.m490i());
                                            File file3 = new File(b, a.m495d());
                                            file3.getParentFile().mkdirs();
                                            FileOutputStream fileOutputStream = new FileOutputStream(file3);
                                            int read = bdVar.read(this.f339b);
                                            while (read > 0) {
                                                fileOutputStream.write(this.f339b, 0, read);
                                                read = bdVar.read(this.f339b);
                                            }
                                            fileOutputStream.close();
                                        }
                                    }
                                    if (bdVar.m603b()) {
                                        break;
                                    }
                                } while (!bdVar.m602c());
                                if (bdVar.m602c()) {
                                    f338a.m443a("Writing central directory metadata.", new Object[0]);
                                    czVar.m510h(a.m490i(), inputStream2);
                                }
                                if (!biVar.m590a()) {
                                    if (a.m492g()) {
                                        f338a.m443a("Writing slice checkpoint for partial local file header.", new Object[0]);
                                        czVar.m516b(a.m490i(), biVar.f333e);
                                    } else if (bdVar.m602c()) {
                                        f338a.m443a("Writing slice checkpoint for central directory.", new Object[0]);
                                        czVar.m515c(biVar.f333e);
                                    } else {
                                        if (a.m493f() == 0) {
                                            f338a.m443a("Writing slice checkpoint for partial file.", new Object[0]);
                                            file = new File(m588b(biVar), a.m495d());
                                            j = a.m494e() - bdVar.m601d();
                                            if (file.length() != j) {
                                                throw new C1017bk("Partial file is of unexpected size.");
                                            }
                                        } else {
                                            f338a.m443a("Writing slice checkpoint for partial unextractable file.", new Object[0]);
                                            file = czVar.m508j();
                                            j = file.length();
                                        }
                                        czVar.m517a(file.getCanonicalPath(), j, bdVar.m601d(), biVar.f333e);
                                    }
                                }
                            }
                            gZIPInputStream.close();
                            if (biVar.m590a()) {
                                try {
                                    czVar.m514d(biVar.f333e);
                                } catch (IOException e3) {
                                    f338a.m442b("Writing extraction finished checkpoint failed with %s.", e3.getMessage());
                                    throw new C1017bk("Writing extraction finished checkpoint failed.", e3, biVar.f416j);
                                }
                            }
                            f338a.m440d("Extraction finished for chunk %s of slice %s of pack %s of session %s.", Integer.valueOf(biVar.f333e), biVar.f331c, biVar.f417k, Integer.valueOf(biVar.f416j));
                            this.f341d.m341a().mo464e(biVar.f416j, biVar.f417k, biVar.f331c, biVar.f333e);
                            biVar.f337i.close();
                            if (biVar.f336h == 3) {
                                String str = biVar.f417k;
                                long j3 = biVar.f335g;
                                this.f342e.m341a().m654b(AssetPackState.m683c(str, 3, 0, j3, j3, this.f343f.m583c(str, biVar), 1, ""));
                                return;
                            }
                            return;
                        }
                        throw new C1017bk("Checkpoint extension file not found.", biVar.f416j);
                    } else if (a2 == 3) {
                        f338a.m443a("Resuming central directory from last chunk.", new Object[0]);
                        czVar.m512f(gZIPInputStream, e.m520c());
                        if (!biVar.m590a()) {
                            throw new C1017bk("Chunk has ended twice during central directory. This should not be possible with chunk sizes of 50MB.", biVar.f416j);
                        }
                    } else {
                        throw new C1017bk(String.format("Slice checkpoint file corrupt. Unexpected FileExtractionStatus %s.", Integer.valueOf(e.m522a())), biVar.f416j);
                    }
                    if (inputStream2 != null) {
                    }
                    gZIPInputStream.close();
                    if (biVar.m590a()) {
                    }
                    f338a.m440d("Extraction finished for chunk %s of slice %s of pack %s of session %s.", Integer.valueOf(biVar.f333e), biVar.f331c, biVar.f417k, Integer.valueOf(biVar.f416j));
                    this.f341d.m341a().mo464e(biVar.f416j, biVar.f417k, biVar.f331c, biVar.f333e);
                    biVar.f337i.close();
                    if (biVar.f336h == 3) {
                    }
                } else {
                    throw new C1017bk(String.format("Trying to resume with chunk number %s when previously processed chunk was number %s.", Integer.valueOf(i), Integer.valueOf(e.m518e())), biVar.f416j);
                }
            }
            inputStream2 = gZIPInputStream;
            if (inputStream2 != null) {
            }
            gZIPInputStream.close();
            if (biVar.m590a()) {
            }
            f338a.m440d("Extraction finished for chunk %s of slice %s of pack %s of session %s.", Integer.valueOf(biVar.f333e), biVar.f331c, biVar.f417k, Integer.valueOf(biVar.f416j));
            this.f341d.m341a().mo464e(biVar.f416j, biVar.f417k, biVar.f331c, biVar.f333e);
            biVar.f337i.close();
            if (biVar.f336h == 3) {
            }
        } catch (IOException e4) {
            f338a.m442b("IOException during extraction %s.", e4.getMessage());
            throw new C1017bk(String.format("Error extracting chunk %s of slice %s of pack %s of session %s.", Integer.valueOf(biVar.f333e), biVar.f331c, biVar.f417k, Integer.valueOf(biVar.f416j)), e4, biVar.f416j);
        }
    }
}
