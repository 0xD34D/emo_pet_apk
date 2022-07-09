package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.util.Log;
import com.google.android.play.core.splitcompat.C1207p;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.google.android.play.core.splitinstall.k */
/* loaded from: classes.dex */
public final class C1242k {

    /* renamed from: a */
    private static AbstractC1244m f811a;

    private C1242k() {
    }

    /* renamed from: a */
    public static synchronized AbstractC1244m m154a(Context context) {
        AbstractC1244m mVar;
        synchronized (C1242k.class) {
            if (f811a == null) {
                C1233b bVar = new C1233b(null);
                bVar.m160b(new C1266x(C1207p.m201c(context)));
                f811a = bVar.m161a();
            }
            mVar = f811a;
        }
        return mVar;
    }

    /* renamed from: b */
    public static C1239h m153b(XmlPullParser xmlPullParser, C1238g gVar) {
        String c;
        while (xmlPullParser.next() != 1) {
            try {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("splits")) {
                        while (xmlPullParser.next() != 3) {
                            if (xmlPullParser.getEventType() == 2) {
                                if (!xmlPullParser.getName().equals("module") || (c = m152c("name", xmlPullParser)) == null) {
                                    m151d(xmlPullParser);
                                } else {
                                    while (xmlPullParser.next() != 3) {
                                        if (xmlPullParser.getEventType() == 2) {
                                            if (xmlPullParser.getName().equals("language")) {
                                                while (xmlPullParser.next() != 3) {
                                                    if (xmlPullParser.getEventType() == 2) {
                                                        if (xmlPullParser.getName().equals("entry")) {
                                                            String c2 = m152c("key", xmlPullParser);
                                                            String c3 = m152c("split", xmlPullParser);
                                                            m151d(xmlPullParser);
                                                            if (!(c2 == null || c3 == null)) {
                                                                gVar.m157b(c, c2, c3);
                                                            }
                                                        } else {
                                                            m151d(xmlPullParser);
                                                        }
                                                    }
                                                }
                                            } else {
                                                m151d(xmlPullParser);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        m151d(xmlPullParser);
                    }
                }
            } catch (IOException | IllegalStateException | XmlPullParserException e) {
                Log.e("SplitInstall", "Error while parsing splits.xml", e);
                return null;
            }
        }
        return gVar.m158a();
    }

    /* renamed from: c */
    private static String m152c(String str, XmlPullParser xmlPullParser) {
        for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
            if (xmlPullParser.getAttributeName(i).equals(str)) {
                return xmlPullParser.getAttributeValue(i);
            }
        }
        return null;
    }

    /* renamed from: d */
    private static void m151d(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        int i = 1;
        while (i != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }
}
