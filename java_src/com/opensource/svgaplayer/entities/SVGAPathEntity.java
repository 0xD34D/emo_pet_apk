package com.opensource.svgaplayer.entities;

import android.graphics.Path;
import com.opensource.svgaplayer.utils.SVGAPoint;
import java.util.Set;
import java.util.StringTokenizer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: SVGAPathEntity.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006J \u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m35d2 = {"Lcom/opensource/svgaplayer/entities/SVGAPathEntity;", "", "originValue", "", "(Ljava/lang/String;)V", "cachedPath", "Landroid/graphics/Path;", "replacedValue", "buildPath", "", "toPath", "operate", "finalPath", "method", "args", "Ljava/util/StringTokenizer;", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGAPathEntity {
    private Path cachedPath;
    private final String replacedValue;

    public SVGAPathEntity(String originValue) {
        Intrinsics.checkParameterIsNotNull(originValue, "originValue");
        this.replacedValue = StringsKt.contains$default((CharSequence) originValue, (CharSequence) ",", false, 2, (Object) null) ? StringsKt.replace$default(originValue, ",", " ", false, 4, (Object) null) : originValue;
    }

    public final void buildPath(Path toPath) {
        Set set;
        Intrinsics.checkParameterIsNotNull(toPath, "toPath");
        Path path = this.cachedPath;
        if (path != null) {
            toPath.set(path);
            return;
        }
        Path path2 = new Path();
        StringTokenizer stringTokenizer = new StringTokenizer(this.replacedValue, "MLHVCSQRAZmlhvcsqraz", true);
        String str = "";
        while (stringTokenizer.hasMoreTokens()) {
            String segment = stringTokenizer.nextToken();
            Intrinsics.checkExpressionValueIsNotNull(segment, "segment");
            if (!(segment.length() == 0)) {
                set = SVGAPathEntityKt.VALID_METHODS;
                if (set.contains(segment)) {
                    if (Intrinsics.areEqual(segment, "Z") || Intrinsics.areEqual(segment, "z")) {
                        operate(path2, segment, new StringTokenizer("", ""));
                    }
                    str = segment;
                } else {
                    operate(path2, str, new StringTokenizer(segment, " "));
                }
            }
        }
        this.cachedPath = path2;
        toPath.set(path2);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void operate(Path path, String str, StringTokenizer stringTokenizer) {
        int i = 0;
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        while (stringTokenizer.hasMoreTokens()) {
            try {
                String s = stringTokenizer.nextToken();
                Intrinsics.checkExpressionValueIsNotNull(s, "s");
                if (!(s.length() == 0)) {
                    if (i == 0) {
                        f = Float.parseFloat(s);
                    }
                    if (i == 1) {
                        f2 = Float.parseFloat(s);
                    }
                    if (i == 2) {
                        f3 = Float.parseFloat(s);
                    }
                    if (i == 3) {
                        f4 = Float.parseFloat(s);
                    }
                    if (i == 4) {
                        f5 = Float.parseFloat(s);
                    }
                    if (i == 5) {
                        f6 = Float.parseFloat(s);
                    }
                    i++;
                }
            } catch (Exception unused) {
            }
        }
        SVGAPoint sVGAPoint = new SVGAPoint(0.0f, 0.0f, 0.0f);
        if (Intrinsics.areEqual(str, "M")) {
            path.moveTo(f, f2);
            sVGAPoint = new SVGAPoint(f, f2, 0.0f);
        } else if (Intrinsics.areEqual(str, "m")) {
            path.rMoveTo(f, f2);
            sVGAPoint = new SVGAPoint(sVGAPoint.getX() + f, sVGAPoint.getY() + f2, 0.0f);
            if (!Intrinsics.areEqual(str, "L")) {
                path.lineTo(f, f2);
            } else if (Intrinsics.areEqual(str, "l")) {
                path.rLineTo(f, f2);
            }
            if (!Intrinsics.areEqual(str, "C")) {
                path.cubicTo(f, f2, f3, f4, f5, f6);
            } else if (Intrinsics.areEqual(str, "c")) {
                path.rCubicTo(f, f2, f3, f4, f5, f6);
            }
            if (!Intrinsics.areEqual(str, "Q")) {
                path.quadTo(f, f2, f3, f4);
            } else if (Intrinsics.areEqual(str, "q")) {
                path.rQuadTo(f, f2, f3, f4);
            }
            if (!Intrinsics.areEqual(str, "H")) {
                path.lineTo(f, sVGAPoint.getY());
            } else if (Intrinsics.areEqual(str, "h")) {
                path.rLineTo(f, 0.0f);
            }
            if (!Intrinsics.areEqual(str, "V")) {
                path.lineTo(sVGAPoint.getX(), f);
            } else if (Intrinsics.areEqual(str, "v")) {
                path.rLineTo(0.0f, f);
            }
            if (!Intrinsics.areEqual(str, "Z")) {
                path.close();
                return;
            } else if (Intrinsics.areEqual(str, "z")) {
                path.close();
                return;
            } else {
                return;
            }
        }
        if (!Intrinsics.areEqual(str, "L")) {
        }
        if (!Intrinsics.areEqual(str, "C")) {
        }
        if (!Intrinsics.areEqual(str, "Q")) {
        }
        if (!Intrinsics.areEqual(str, "H")) {
        }
        if (!Intrinsics.areEqual(str, "V")) {
        }
        if (!Intrinsics.areEqual(str, "Z")) {
        }
    }
}
