package com.opensource.svgaplayer.entities;

import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.opensource.svgaplayer.proto.ShapeEntity;
import com.opensource.svgaplayer.proto.Transform;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SVGAVideoShapeEntity.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u000201B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010*\u001a\u00020+J\u0010\u0010,\u001a\u00020+2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010,\u001a\u00020+2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010-\u001a\u00020+2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010-\u001a\u00020+2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010.\u001a\u00020+2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010.\u001a\u00020+2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010/\u001a\u00020+2\u0006\u0010\u0002\u001a\u00020\u0005H\u0002J\u0010\u0010/\u001a\u00020+2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R@\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\b2\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\b@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R(\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u0007\u001a\u0004\u0018\u00010\u0018@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR(\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u001e@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020$@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u00062"}, m35d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;", "", "obj", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "Lcom/opensource/svgaplayer/proto/ShapeEntity;", "(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V", "<set-?>", "", "", "args", "getArgs", "()Ljava/util/Map;", "setArgs", "(Ljava/util/Map;)V", "isKeep", "", "()Z", "shapePath", "Landroid/graphics/Path;", "getShapePath", "()Landroid/graphics/Path;", "setShapePath", "(Landroid/graphics/Path;)V", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;", "styles", "getStyles", "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;", "setStyles", "(Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;)V", "Landroid/graphics/Matrix;", "transform", "getTransform", "()Landroid/graphics/Matrix;", "setTransform", "(Landroid/graphics/Matrix;)V", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "type", "getType", "()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "setType", "(Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;)V", "buildPath", "", "parseArgs", "parseStyles", "parseTransform", "parseType", "Styles", "Type", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGAVideoShapeEntity {
    private Map<String, ? extends Object> args;
    private Path shapePath;
    private Styles styles;
    private Matrix transform;
    private Type type = Type.shape;

    /* compiled from: SVGAVideoShapeEntity.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m35d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;", "", "(Ljava/lang/String;I)V", "shape", "rect", "ellipse", "keep", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public enum Type {
        shape,
        rect,
        ellipse,
        keep
    }

    @Metadata(m37bv = {1, 0, 3}, m34k = 3, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[ShapeEntity.ShapeType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[ShapeEntity.ShapeType.SHAPE.ordinal()] = 1;
            iArr[ShapeEntity.ShapeType.RECT.ordinal()] = 2;
            iArr[ShapeEntity.ShapeType.ELLIPSE.ordinal()] = 3;
            iArr[ShapeEntity.ShapeType.KEEP.ordinal()] = 4;
            int[] iArr2 = new int[ShapeEntity.ShapeStyle.LineCap.values().length];
            $EnumSwitchMapping$1 = iArr2;
            iArr2[ShapeEntity.ShapeStyle.LineCap.LineCap_BUTT.ordinal()] = 1;
            iArr2[ShapeEntity.ShapeStyle.LineCap.LineCap_ROUND.ordinal()] = 2;
            iArr2[ShapeEntity.ShapeStyle.LineCap.LineCap_SQUARE.ordinal()] = 3;
            int[] iArr3 = new int[ShapeEntity.ShapeStyle.LineJoin.values().length];
            $EnumSwitchMapping$2 = iArr3;
            iArr3[ShapeEntity.ShapeStyle.LineJoin.LineJoin_BEVEL.ordinal()] = 1;
            iArr3[ShapeEntity.ShapeStyle.LineJoin.LineJoin_MITER.ordinal()] = 2;
            iArr3[ShapeEntity.ShapeStyle.LineJoin.LineJoin_ROUND.ordinal()] = 3;
        }
    }

    /* compiled from: SVGAVideoShapeEntity.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0010@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000fR$\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR$\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\tR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u001f@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006%"}, m35d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;", "", "()V", "<set-?>", "", "fill", "getFill", "()I", "setFill$library_release", "(I)V", "", "lineCap", "getLineCap", "()Ljava/lang/String;", "setLineCap$library_release", "(Ljava/lang/String;)V", "", "lineDash", "getLineDash", "()[F", "setLineDash$library_release", "([F)V", "lineJoin", "getLineJoin", "setLineJoin$library_release", "miterLimit", "getMiterLimit", "setMiterLimit$library_release", "stroke", "getStroke", "setStroke$library_release", "", "strokeWidth", "getStrokeWidth", "()F", "setStrokeWidth$library_release", "(F)V", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public static final class Styles {
        private int fill;
        private int miterLimit;
        private int stroke;
        private float strokeWidth;
        private String lineCap = "butt";
        private String lineJoin = "miter";
        private float[] lineDash = new float[0];

        public final int getFill() {
            return this.fill;
        }

        public final void setFill$library_release(int i) {
            this.fill = i;
        }

        public final int getStroke() {
            return this.stroke;
        }

        public final void setStroke$library_release(int i) {
            this.stroke = i;
        }

        public final float getStrokeWidth() {
            return this.strokeWidth;
        }

        public final void setStrokeWidth$library_release(float f) {
            this.strokeWidth = f;
        }

        public final String getLineCap() {
            return this.lineCap;
        }

        public final void setLineCap$library_release(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.lineCap = str;
        }

        public final String getLineJoin() {
            return this.lineJoin;
        }

        public final void setLineJoin$library_release(String str) {
            Intrinsics.checkParameterIsNotNull(str, "<set-?>");
            this.lineJoin = str;
        }

        public final int getMiterLimit() {
            return this.miterLimit;
        }

        public final void setMiterLimit$library_release(int i) {
            this.miterLimit = i;
        }

        public final float[] getLineDash() {
            return this.lineDash;
        }

        public final void setLineDash$library_release(float[] fArr) {
            Intrinsics.checkParameterIsNotNull(fArr, "<set-?>");
            this.lineDash = fArr;
        }
    }

    private final void setType(Type type) {
        this.type = type;
    }

    public final Type getType() {
        return this.type;
    }

    private final void setArgs(Map<String, ? extends Object> map) {
        this.args = map;
    }

    public final Map<String, Object> getArgs() {
        return this.args;
    }

    private final void setStyles(Styles styles) {
        this.styles = styles;
    }

    public final Styles getStyles() {
        return this.styles;
    }

    private final void setTransform(Matrix matrix) {
        this.transform = matrix;
    }

    public final Matrix getTransform() {
        return this.transform;
    }

    public SVGAVideoShapeEntity(JSONObject obj) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        parseType(obj);
        parseArgs(obj);
        parseStyles(obj);
        parseTransform(obj);
    }

    public SVGAVideoShapeEntity(ShapeEntity obj) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        parseType(obj);
        parseArgs(obj);
        parseStyles(obj);
        parseTransform(obj);
    }

    public final boolean isKeep() {
        return this.type == Type.keep;
    }

    public final Path getShapePath() {
        return this.shapePath;
    }

    public final void setShapePath(Path path) {
        this.shapePath = path;
    }

    private final void parseType(JSONObject jSONObject) {
        String optString = jSONObject.optString("type");
        if (optString == null) {
            return;
        }
        if (StringsKt.equals(optString, "shape", true)) {
            this.type = Type.shape;
        } else if (StringsKt.equals(optString, "rect", true)) {
            this.type = Type.rect;
        } else if (StringsKt.equals(optString, "ellipse", true)) {
            this.type = Type.ellipse;
        } else if (StringsKt.equals(optString, "keep", true)) {
            this.type = Type.keep;
        }
    }

    private final void parseType(ShapeEntity shapeEntity) {
        Type type;
        ShapeEntity.ShapeType shapeType = shapeEntity.type;
        if (shapeType != null) {
            int i = WhenMappings.$EnumSwitchMapping$0[shapeType.ordinal()];
            if (i == 1) {
                type = Type.shape;
            } else if (i == 2) {
                type = Type.rect;
            } else if (i == 3) {
                type = Type.ellipse;
            } else if (i == 4) {
                type = Type.keep;
            } else {
                throw new NoWhenBranchMatchedException();
            }
            this.type = type;
        }
    }

    private final void parseArgs(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        JSONObject optJSONObject = jSONObject.optJSONObject("args");
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            Intrinsics.checkExpressionValueIsNotNull(keys, "values.keys()");
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = optJSONObject.get(next);
                if (obj != null) {
                    hashMap.put(next, obj);
                }
            }
            this.args = hashMap;
        }
    }

    private final void parseArgs(ShapeEntity shapeEntity) {
        String str;
        HashMap hashMap = new HashMap();
        ShapeEntity.ShapeArgs shapeArgs = shapeEntity.shape;
        if (!(shapeArgs == null || (str = shapeArgs.f1003d) == null)) {
            hashMap.put("d", str);
        }
        ShapeEntity.EllipseArgs ellipseArgs = shapeEntity.ellipse;
        if (ellipseArgs != null) {
            Float f = ellipseArgs.f995x;
            if (f == null) {
                f = Float.valueOf(0.0f);
            }
            hashMap.put("x", f);
            Float f2 = ellipseArgs.f996y;
            if (f2 == null) {
                f2 = Float.valueOf(0.0f);
            }
            hashMap.put("y", f2);
            Float f3 = ellipseArgs.radiusX;
            if (f3 == null) {
                f3 = Float.valueOf(0.0f);
            }
            hashMap.put("radiusX", f3);
            Float f4 = ellipseArgs.radiusY;
            if (f4 == null) {
                f4 = Float.valueOf(0.0f);
            }
            hashMap.put("radiusY", f4);
        }
        ShapeEntity.RectArgs rectArgs = shapeEntity.rect;
        if (rectArgs != null) {
            Float f5 = rectArgs.f999x;
            if (f5 == null) {
                f5 = Float.valueOf(0.0f);
            }
            hashMap.put("x", f5);
            Float f6 = rectArgs.f1000y;
            if (f6 == null) {
                f6 = Float.valueOf(0.0f);
            }
            hashMap.put("y", f6);
            Float f7 = rectArgs.width;
            if (f7 == null) {
                f7 = Float.valueOf(0.0f);
            }
            hashMap.put("width", f7);
            Float f8 = rectArgs.height;
            if (f8 == null) {
                f8 = Float.valueOf(0.0f);
            }
            hashMap.put("height", f8);
            Float f9 = rectArgs.cornerRadius;
            if (f9 == null) {
                f9 = Float.valueOf(0.0f);
            }
            hashMap.put("cornerRadius", f9);
        }
        this.args = hashMap;
    }

    private final void parseStyles(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("styles");
        if (optJSONObject != null) {
            Styles styles = new Styles();
            JSONArray optJSONArray = optJSONObject.optJSONArray("fill");
            if (optJSONArray != null && optJSONArray.length() == 4) {
                double d = 255;
                styles.setFill$library_release(Color.argb((int) (optJSONArray.optDouble(3) * d), (int) (optJSONArray.optDouble(0) * d), (int) (optJSONArray.optDouble(1) * d), (int) (optJSONArray.optDouble(2) * d)));
            }
            JSONArray optJSONArray2 = optJSONObject.optJSONArray("stroke");
            if (optJSONArray2 != null && optJSONArray2.length() == 4) {
                double d2 = 255;
                styles.setStroke$library_release(Color.argb((int) (optJSONArray2.optDouble(3) * d2), (int) (optJSONArray2.optDouble(0) * d2), (int) (optJSONArray2.optDouble(1) * d2), (int) (optJSONArray2.optDouble(2) * d2)));
            }
            styles.setStrokeWidth$library_release((float) optJSONObject.optDouble("strokeWidth", 0.0d));
            String optString = optJSONObject.optString("lineCap", "butt");
            Intrinsics.checkExpressionValueIsNotNull(optString, "it.optString(\"lineCap\", \"butt\")");
            styles.setLineCap$library_release(optString);
            String optString2 = optJSONObject.optString("lineJoin", "miter");
            Intrinsics.checkExpressionValueIsNotNull(optString2, "it.optString(\"lineJoin\", \"miter\")");
            styles.setLineJoin$library_release(optString2);
            styles.setMiterLimit$library_release(optJSONObject.optInt("miterLimit", 0));
            JSONArray optJSONArray3 = optJSONObject.optJSONArray("lineDash");
            if (optJSONArray3 != null) {
                styles.setLineDash$library_release(new float[optJSONArray3.length()]);
                int length = optJSONArray3.length();
                for (int i = 0; i < length; i++) {
                    styles.getLineDash()[i] = (float) optJSONArray3.optDouble(i, 0.0d);
                }
            }
            this.styles = styles;
        }
    }

    private final void parseStyles(ShapeEntity shapeEntity) {
        ShapeEntity.ShapeStyle shapeStyle = shapeEntity.styles;
        if (shapeStyle != null) {
            Styles styles = new Styles();
            ShapeEntity.ShapeStyle.RGBAColor rGBAColor = shapeStyle.fill;
            float f = 0.0f;
            if (rGBAColor != null) {
                Float f2 = rGBAColor.f1005a;
                float f3 = 255;
                int floatValue = (int) ((f2 != null ? f2.floatValue() : 0.0f) * f3);
                Float f4 = rGBAColor.f1008r;
                int floatValue2 = (int) ((f4 != null ? f4.floatValue() : 0.0f) * f3);
                Float f5 = rGBAColor.f1007g;
                int floatValue3 = (int) ((f5 != null ? f5.floatValue() : 0.0f) * f3);
                Float f6 = rGBAColor.f1006b;
                styles.setFill$library_release(Color.argb(floatValue, floatValue2, floatValue3, (int) ((f6 != null ? f6.floatValue() : 0.0f) * f3)));
            }
            ShapeEntity.ShapeStyle.RGBAColor rGBAColor2 = shapeStyle.stroke;
            if (rGBAColor2 != null) {
                Float f7 = rGBAColor2.f1005a;
                float f8 = 255;
                int floatValue4 = (int) ((f7 != null ? f7.floatValue() : 0.0f) * f8);
                Float f9 = rGBAColor2.f1008r;
                int floatValue5 = (int) ((f9 != null ? f9.floatValue() : 0.0f) * f8);
                Float f10 = rGBAColor2.f1007g;
                int floatValue6 = (int) ((f10 != null ? f10.floatValue() : 0.0f) * f8);
                Float f11 = rGBAColor2.f1006b;
                styles.setStroke$library_release(Color.argb(floatValue4, floatValue5, floatValue6, (int) ((f11 != null ? f11.floatValue() : 0.0f) * f8)));
            }
            Float f12 = shapeStyle.strokeWidth;
            styles.setStrokeWidth$library_release(f12 != null ? f12.floatValue() : 0.0f);
            ShapeEntity.ShapeStyle.LineCap lineCap = shapeStyle.lineCap;
            if (lineCap != null) {
                int i = WhenMappings.$EnumSwitchMapping$1[lineCap.ordinal()];
                if (i == 1) {
                    styles.setLineCap$library_release("butt");
                } else if (i == 2) {
                    styles.setLineCap$library_release("round");
                } else if (i == 3) {
                    styles.setLineCap$library_release("square");
                }
            }
            ShapeEntity.ShapeStyle.LineJoin lineJoin = shapeStyle.lineJoin;
            if (lineJoin != null) {
                int i2 = WhenMappings.$EnumSwitchMapping$2[lineJoin.ordinal()];
                if (i2 == 1) {
                    styles.setLineJoin$library_release("bevel");
                } else if (i2 == 2) {
                    styles.setLineJoin$library_release("miter");
                } else if (i2 == 3) {
                    styles.setLineJoin$library_release("round");
                }
            }
            Float f13 = shapeStyle.miterLimit;
            if (f13 != null) {
                f = f13.floatValue();
            }
            styles.setMiterLimit$library_release((int) f);
            styles.setLineDash$library_release(new float[3]);
            Float f14 = shapeStyle.lineDashI;
            if (f14 != null) {
                styles.getLineDash()[0] = f14.floatValue();
            }
            Float f15 = shapeStyle.lineDashII;
            if (f15 != null) {
                styles.getLineDash()[1] = f15.floatValue();
            }
            Float f16 = shapeStyle.lineDashIII;
            if (f16 != null) {
                styles.getLineDash()[2] = f16.floatValue();
            }
            this.styles = styles;
        }
    }

    private final void parseTransform(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("transform");
        if (optJSONObject != null) {
            Matrix matrix = new Matrix();
            double optDouble = optJSONObject.optDouble("a", 1.0d);
            double optDouble2 = optJSONObject.optDouble("b", 0.0d);
            float f = (float) 0.0d;
            matrix.setValues(new float[]{(float) optDouble, (float) optJSONObject.optDouble("c", 0.0d), (float) optJSONObject.optDouble("tx", 0.0d), (float) optDouble2, (float) optJSONObject.optDouble("d", 1.0d), (float) optJSONObject.optDouble("ty", 0.0d), f, f, (float) 1.0d});
            this.transform = matrix;
        }
    }

    private final void parseTransform(ShapeEntity shapeEntity) {
        Transform transform = shapeEntity.transform;
        if (transform != null) {
            Matrix matrix = new Matrix();
            float[] fArr = new float[9];
            Float f = transform.f1013a;
            float floatValue = f != null ? f.floatValue() : 1.0f;
            Float f2 = transform.f1014b;
            float floatValue2 = f2 != null ? f2.floatValue() : 0.0f;
            Float f3 = transform.f1015c;
            float floatValue3 = f3 != null ? f3.floatValue() : 0.0f;
            Float f4 = transform.f1016d;
            float floatValue4 = f4 != null ? f4.floatValue() : 1.0f;
            Float f5 = transform.f1017tx;
            float floatValue5 = f5 != null ? f5.floatValue() : 0.0f;
            Float f6 = transform.f1018ty;
            float floatValue6 = f6 != null ? f6.floatValue() : 0.0f;
            fArr[0] = floatValue;
            fArr[1] = floatValue3;
            fArr[2] = floatValue5;
            fArr[3] = floatValue2;
            fArr[4] = floatValue4;
            fArr[5] = floatValue6;
            fArr[6] = 0.0f;
            fArr[7] = 0.0f;
            fArr[8] = 1.0f;
            matrix.setValues(fArr);
            this.transform = matrix;
        }
    }

    public final void buildPath() {
        if (this.shapePath == null) {
            SVGAVideoShapeEntityKt.getSharedPath().reset();
            Object obj = null;
            if (this.type == Type.shape) {
                Map<String, ? extends Object> map = this.args;
                Object obj2 = map != null ? map.get("d") : null;
                if (obj2 instanceof String) {
                    obj = obj2;
                }
                String str = (String) obj;
                if (str != null) {
                    new SVGAPathEntity(str).buildPath(SVGAVideoShapeEntityKt.getSharedPath());
                }
            } else if (this.type == Type.ellipse) {
                Map<String, ? extends Object> map2 = this.args;
                Object obj3 = map2 != null ? map2.get("x") : null;
                if (!(obj3 instanceof Number)) {
                    obj3 = null;
                }
                Number number = (Number) obj3;
                if (number != null) {
                    Map<String, ? extends Object> map3 = this.args;
                    Object obj4 = map3 != null ? map3.get("y") : null;
                    if (!(obj4 instanceof Number)) {
                        obj4 = null;
                    }
                    Number number2 = (Number) obj4;
                    if (number2 != null) {
                        Map<String, ? extends Object> map4 = this.args;
                        Object obj5 = map4 != null ? map4.get("radiusX") : null;
                        if (!(obj5 instanceof Number)) {
                            obj5 = null;
                        }
                        Number number3 = (Number) obj5;
                        if (number3 != null) {
                            Map<String, ? extends Object> map5 = this.args;
                            Object obj6 = map5 != null ? map5.get("radiusY") : null;
                            if (obj6 instanceof Number) {
                                obj = obj6;
                            }
                            Number number4 = (Number) obj;
                            if (number4 != null) {
                                float floatValue = number.floatValue();
                                float floatValue2 = number2.floatValue();
                                float floatValue3 = number3.floatValue();
                                float floatValue4 = number4.floatValue();
                                SVGAVideoShapeEntityKt.getSharedPath().addOval(new RectF(floatValue - floatValue3, floatValue2 - floatValue4, floatValue + floatValue3, floatValue2 + floatValue4), Path.Direction.CW);
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } else if (this.type == Type.rect) {
                Map<String, ? extends Object> map6 = this.args;
                Object obj7 = map6 != null ? map6.get("x") : null;
                if (!(obj7 instanceof Number)) {
                    obj7 = null;
                }
                Number number5 = (Number) obj7;
                if (number5 != null) {
                    Map<String, ? extends Object> map7 = this.args;
                    Object obj8 = map7 != null ? map7.get("y") : null;
                    if (!(obj8 instanceof Number)) {
                        obj8 = null;
                    }
                    Number number6 = (Number) obj8;
                    if (number6 != null) {
                        Map<String, ? extends Object> map8 = this.args;
                        Object obj9 = map8 != null ? map8.get("width") : null;
                        if (!(obj9 instanceof Number)) {
                            obj9 = null;
                        }
                        Number number7 = (Number) obj9;
                        if (number7 != null) {
                            Map<String, ? extends Object> map9 = this.args;
                            Object obj10 = map9 != null ? map9.get("height") : null;
                            if (!(obj10 instanceof Number)) {
                                obj10 = null;
                            }
                            Number number8 = (Number) obj10;
                            if (number8 != null) {
                                Map<String, ? extends Object> map10 = this.args;
                                Object obj11 = map10 != null ? map10.get("cornerRadius") : null;
                                if (obj11 instanceof Number) {
                                    obj = obj11;
                                }
                                Number number9 = (Number) obj;
                                if (number9 != null) {
                                    float floatValue5 = number5.floatValue();
                                    float floatValue6 = number6.floatValue();
                                    float floatValue7 = number7.floatValue();
                                    float floatValue8 = number8.floatValue();
                                    float floatValue9 = number9.floatValue();
                                    SVGAVideoShapeEntityKt.getSharedPath().addRoundRect(new RectF(floatValue5, floatValue6, floatValue7 + floatValue5, floatValue8 + floatValue6), floatValue9, floatValue9, Path.Direction.CW);
                                } else {
                                    return;
                                }
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            Path path = new Path();
            this.shapePath = path;
            if (path != null) {
                path.set(SVGAVideoShapeEntityKt.getSharedPath());
            }
        }
    }
}
