package com.google.android.play.core.splitcompat;

import java.io.File;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.splitcompat.q */
/* loaded from: classes.dex */
public final class C1208q {

    /* renamed from: a */
    private final File f738a;

    /* renamed from: b */
    private final String f739b;

    C1208q() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1208q(File file, String str) {
        this();
        Objects.requireNonNull(file, "Null splitFile");
        this.f738a = file;
        Objects.requireNonNull(str, "Null splitId");
        this.f739b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public File m200a() {
        return this.f738a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public String m199b() {
        return this.f739b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1208q) {
            C1208q qVar = (C1208q) obj;
            if (this.f738a.equals(qVar.m200a()) && this.f739b.equals(qVar.m199b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f738a.hashCode() ^ 1000003) * 1000003) ^ this.f739b.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f738a);
        String str = this.f739b;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35 + str.length());
        sb.append("SplitFileInfo{splitFile=");
        sb.append(valueOf);
        sb.append(", splitId=");
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
