package com.google.android.play.core.internal;

import android.content.res.AssetManager;
import com.google.android.play.core.splitcompat.C1192a;
import java.io.File;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.google.android.play.core.internal.au */
/* loaded from: classes.dex */
public final class C1116au {

    /* renamed from: a */
    private final C1192a f636a;

    /* renamed from: b */
    private XmlPullParser f637b;

    public C1116au(C1192a aVar) {
        this.f636a = aVar;
    }

    /* renamed from: a */
    public final void m411a(AssetManager assetManager, File file) throws IOException {
        this.f637b = assetManager.openXmlResourceParser(C1192a.m235c(assetManager, file), "AndroidManifest.xml");
    }

    /* renamed from: b */
    public final long m410b() throws IOException, XmlPullParserException {
        if (this.f637b != null) {
            while (true) {
                int next = this.f637b.next();
                if (next != 2) {
                    if (next == 1) {
                        break;
                    }
                } else if (this.f637b.getName().equals("manifest")) {
                    String attributeValue = this.f637b.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCode");
                    String attributeValue2 = this.f637b.getAttributeValue("http://schemas.android.com/apk/res/android", "versionCodeMajor");
                    if (attributeValue != null) {
                        try {
                            int parseInt = Integer.parseInt(attributeValue);
                            if (attributeValue2 == null) {
                                return parseInt;
                            }
                            try {
                                return (Integer.parseInt(attributeValue2) << 32) | (parseInt & 4294967295L);
                            } catch (NumberFormatException e) {
                                throw new XmlPullParserException(String.format("Couldn't parse versionCodeMajor to int: %s", e.getMessage()));
                            }
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException(String.format("Couldn't parse versionCode to int: %s", e2.getMessage()));
                        }
                    } else {
                        throw new XmlPullParserException("Manifest entry doesn't contain 'versionCode' attribute.");
                    }
                }
            }
            throw new XmlPullParserException("Couldn't find manifest entry at top-level.");
        }
        throw new XmlPullParserException("Manifest file needs to be loaded before parsing.");
    }
}
