package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C1102ag;
import java.io.File;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.co */
/* loaded from: classes.dex */
public final class C1048co {

    /* renamed from: a */
    private static final C1102ag f461a = new C1102ag("MergeSliceTaskHandler");

    /* renamed from: b */
    private final C1000au f462b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1048co(C1000au auVar) {
        this.f462b = auVar;
    }

    /* renamed from: b */
    private static void m528b(File file, File file2) {
        if (file.isDirectory()) {
            file2.mkdirs();
            File[] listFiles = file.listFiles();
            for (File file3 : listFiles) {
                m528b(file3, new File(file2, file3.getName()));
            }
            if (!file.delete()) {
                String valueOf = String.valueOf(file);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
                sb.append("Unable to delete directory: ");
                sb.append(valueOf);
                throw new C1017bk(sb.toString());
            }
        } else if (file2.exists()) {
            String valueOf2 = String.valueOf(file2);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 51);
            sb2.append("File clashing with existing file from other slice: ");
            sb2.append(valueOf2);
            throw new C1017bk(sb2.toString());
        } else if (!file.renameTo(file2)) {
            String valueOf3 = String.valueOf(file);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 21);
            sb3.append("Unable to move file: ");
            sb3.append(valueOf3);
            throw new C1017bk(sb3.toString());
        }
    }

    /* renamed from: a */
    public final void m529a(C1047cn cnVar) {
        File i = this.f462b.m627i(cnVar.f417k, cnVar.f458a, cnVar.f459b, cnVar.f460c);
        if (i.exists()) {
            File j = this.f462b.m626j(cnVar.f417k, cnVar.f458a, cnVar.f459b);
            if (!j.exists()) {
                j.mkdirs();
            }
            m528b(i, j);
            try {
                this.f462b.m624l(cnVar.f417k, cnVar.f458a, cnVar.f459b, this.f462b.m625k(cnVar.f417k, cnVar.f458a, cnVar.f459b) + 1);
            } catch (IOException e) {
                f461a.m442b("Writing merge checkpoint failed with %s.", e.getMessage());
                throw new C1017bk("Writing merge checkpoint failed.", e, cnVar.f416j);
            }
        } else {
            throw new C1017bk(String.format("Cannot find verified files for slice %s.", cnVar.f460c), cnVar.f416j);
        }
    }
}
