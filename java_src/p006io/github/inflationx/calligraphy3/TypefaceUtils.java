package p006io.github.inflationx.calligraphy3;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
/* renamed from: io.github.inflationx.calligraphy3.TypefaceUtils */
/* loaded from: classes.dex */
public final class TypefaceUtils {
    private static final Map<String, Typeface> sCachedFonts = new HashMap();
    private static final Map<Typeface, CalligraphyTypefaceSpan> sCachedSpans = new HashMap();

    public static Typeface load(AssetManager assetManager, String str) {
        Typeface typeface;
        Map<String, Typeface> map = sCachedFonts;
        try {
            synchronized (map) {
                try {
                    if (!map.containsKey(str)) {
                        if (str.startsWith("/")) {
                            typeface = Typeface.createFromFile(str);
                        } else {
                            typeface = Typeface.createFromAsset(assetManager, str);
                        }
                        map.put(str, typeface);
                        return typeface;
                    }
                    return map.get(str);
                } catch (Exception e) {
                    Log.w("Calligraphy", "Can't create asset from " + str + ". Make sure you have passed in the correct path and file name.", e);
                    sCachedFonts.put(str, null);
                    return null;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static CalligraphyTypefaceSpan getSpan(Typeface typeface) {
        if (typeface == null) {
            return null;
        }
        Map<Typeface, CalligraphyTypefaceSpan> map = sCachedSpans;
        synchronized (map) {
            if (!map.containsKey(typeface)) {
                CalligraphyTypefaceSpan calligraphyTypefaceSpan = new CalligraphyTypefaceSpan(typeface);
                map.put(typeface, calligraphyTypefaceSpan);
                return calligraphyTypefaceSpan;
            }
            return map.get(typeface);
        }
    }

    public static boolean isLoaded(Typeface typeface) {
        return typeface != null && sCachedFonts.containsValue(typeface);
    }

    private TypefaceUtils() {
    }
}
