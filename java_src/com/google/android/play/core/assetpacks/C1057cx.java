package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC1150ca;
import com.google.android.play.core.internal.C1102ag;
import com.google.android.play.core.internal.C1130bh;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
/* renamed from: com.google.android.play.core.assetpacks.cx */
/* loaded from: classes.dex */
public final class C1057cx {

    /* renamed from: a */
    private static final C1102ag f494a = new C1102ag("PatchSliceTaskHandler");

    /* renamed from: b */
    private final C1000au f495b;

    /* renamed from: c */
    private final AbstractC1150ca<AbstractC1082t> f496c;

    public C1057cx(C1000au auVar, AbstractC1150ca<AbstractC1082t> caVar) {
        this.f495b = auVar;
        this.f496c = caVar;
    }

    /* renamed from: a */
    public final void m523a(C1056cw cwVar) {
        File f = this.f495b.m630f(cwVar.f417k, cwVar.f486a, cwVar.f487b);
        File file = new File(this.f495b.m629g(cwVar.f417k, cwVar.f486a, cwVar.f487b), cwVar.f491f);
        try {
            InputStream inputStream = cwVar.f493h;
            if (cwVar.f490e == 2) {
                inputStream = new GZIPInputStream(inputStream, 8192);
            }
            C1002aw awVar = new C1002aw(f, file);
            File h = this.f495b.m628h(cwVar.f417k, cwVar.f488c, cwVar.f489d, cwVar.f491f);
            if (!h.exists()) {
                h.mkdirs();
            }
            C1059cz czVar = new C1059cz(this.f495b, cwVar.f417k, cwVar.f488c, cwVar.f489d, cwVar.f491f);
            C1130bh.m367l(awVar, inputStream, new C1020bn(h, czVar), cwVar.f492g);
            czVar.m514d(0);
            inputStream.close();
            f494a.m440d("Patching and extraction finished for slice %s of pack %s.", cwVar.f491f, cwVar.f417k);
            this.f496c.m341a().mo464e(cwVar.f416j, cwVar.f417k, cwVar.f491f, 0);
            try {
                cwVar.f493h.close();
            } catch (IOException unused) {
                f494a.m439e("Could not close file for slice %s of pack %s.", cwVar.f491f, cwVar.f417k);
            }
        } catch (IOException e) {
            f494a.m442b("IOException during patching %s.", e.getMessage());
            throw new C1017bk(String.format("Error patching slice %s of pack %s.", cwVar.f491f, cwVar.f417k), e, cwVar.f416j);
        }
    }
}
