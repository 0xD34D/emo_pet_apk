package com.google.android.play.core.splitinstall;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class SplitInstallRequest {

    /* renamed from: a */
    private final List<String> f742a;

    /* renamed from: b */
    private final List<Locale> f743b;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a */
        private final List<String> f744a = new ArrayList();

        /* renamed from: b */
        private final List<Locale> f745b = new ArrayList();

        private Builder() {
        }

        /* synthetic */ Builder(byte[] bArr) {
        }

        public Builder addLanguage(Locale locale) {
            this.f745b.add(locale);
            return this;
        }

        public Builder addModule(String str) {
            this.f744a.add(str);
            return this;
        }

        public SplitInstallRequest build() {
            return new SplitInstallRequest(this);
        }
    }

    /* synthetic */ SplitInstallRequest(Builder builder) {
        this.f742a = new ArrayList(builder.f744a);
        this.f743b = new ArrayList(builder.f745b);
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public List<Locale> getLanguages() {
        return this.f743b;
    }

    public List<String> getModuleNames() {
        return this.f742a;
    }

    public String toString() {
        return String.format("SplitInstallRequest{modulesNames=%s,languages=%s}", this.f742a, this.f743b);
    }
}
