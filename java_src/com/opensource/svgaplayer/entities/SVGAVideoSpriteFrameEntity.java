package com.opensource.svgaplayer.entities;

import android.graphics.Matrix;
import com.opensource.svgaplayer.proto.FrameEntity;
import com.opensource.svgaplayer.proto.Layout;
import com.opensource.svgaplayer.proto.ShapeEntity;
import com.opensource.svgaplayer.proto.Transform;
import com.opensource.svgaplayer.utils.SVGARect;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SVGAVideoSpriteFrameEntity.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006&"}, m35d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;", "", "obj", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "Lcom/opensource/svgaplayer/proto/FrameEntity;", "(Lcom/opensource/svgaplayer/proto/FrameEntity;)V", "alpha", "", "getAlpha", "()D", "setAlpha", "(D)V", "layout", "Lcom/opensource/svgaplayer/utils/SVGARect;", "getLayout", "()Lcom/opensource/svgaplayer/utils/SVGARect;", "setLayout", "(Lcom/opensource/svgaplayer/utils/SVGARect;)V", "maskPath", "Lcom/opensource/svgaplayer/entities/SVGAPathEntity;", "getMaskPath", "()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;", "setMaskPath", "(Lcom/opensource/svgaplayer/entities/SVGAPathEntity;)V", "shapes", "", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;", "getShapes", "()Ljava/util/List;", "setShapes", "(Ljava/util/List;)V", "transform", "Landroid/graphics/Matrix;", "getTransform", "()Landroid/graphics/Matrix;", "setTransform", "(Landroid/graphics/Matrix;)V", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGAVideoSpriteFrameEntity {
    private double alpha;
    private SVGARect layout;
    private SVGAPathEntity maskPath;
    private List<SVGAVideoShapeEntity> shapes;
    private Matrix transform;

    public final double getAlpha() {
        return this.alpha;
    }

    public final void setAlpha(double d) {
        this.alpha = d;
    }

    public final SVGARect getLayout() {
        return this.layout;
    }

    public final void setLayout(SVGARect sVGARect) {
        Intrinsics.checkParameterIsNotNull(sVGARect, "<set-?>");
        this.layout = sVGARect;
    }

    public final Matrix getTransform() {
        return this.transform;
    }

    public final void setTransform(Matrix matrix) {
        Intrinsics.checkParameterIsNotNull(matrix, "<set-?>");
        this.transform = matrix;
    }

    public final SVGAPathEntity getMaskPath() {
        return this.maskPath;
    }

    public final void setMaskPath(SVGAPathEntity sVGAPathEntity) {
        this.maskPath = sVGAPathEntity;
    }

    public final List<SVGAVideoShapeEntity> getShapes() {
        return this.shapes;
    }

    public final void setShapes(List<SVGAVideoShapeEntity> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.shapes = list;
    }

    public SVGAVideoSpriteFrameEntity(JSONObject obj) {
        int i;
        int i2;
        SVGAVideoSpriteFrameEntity sVGAVideoSpriteFrameEntity = this;
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        sVGAVideoSpriteFrameEntity.layout = new SVGARect(0.0d, 0.0d, 0.0d, 0.0d);
        sVGAVideoSpriteFrameEntity.transform = new Matrix();
        sVGAVideoSpriteFrameEntity.shapes = CollectionsKt.emptyList();
        sVGAVideoSpriteFrameEntity.alpha = obj.optDouble("alpha", 0.0d);
        JSONObject optJSONObject = obj.optJSONObject("layout");
        if (optJSONObject != null) {
            sVGAVideoSpriteFrameEntity.layout = new SVGARect(optJSONObject.optDouble("x", 0.0d), optJSONObject.optDouble("y", 0.0d), optJSONObject.optDouble("width", 0.0d), optJSONObject.optDouble("height", 0.0d));
        }
        JSONObject optJSONObject2 = obj.optJSONObject("transform");
        if (optJSONObject2 != null) {
            double optDouble = optJSONObject2.optDouble("a", 1.0d);
            double optDouble2 = optJSONObject2.optDouble("b", 0.0d);
            double optDouble3 = optJSONObject2.optDouble("c", 0.0d);
            double optDouble4 = optJSONObject2.optDouble("d", 1.0d);
            double optDouble5 = optJSONObject2.optDouble("tx", 0.0d);
            double optDouble6 = optJSONObject2.optDouble("ty", 0.0d);
            i = 0;
            float f = (float) optDouble3;
            i2 = 1;
            float f2 = (float) 0.0d;
            float[] fArr = {(float) optDouble, f, (float) optDouble5, (float) optDouble2, (float) optDouble4, (float) optDouble6, f2, f2, (float) 1.0d};
            sVGAVideoSpriteFrameEntity = this;
            sVGAVideoSpriteFrameEntity.transform.setValues(fArr);
        } else {
            i2 = 1;
            i = 0;
        }
        String optString = obj.optString("clipPath");
        if (optString != null) {
            if ((optString.length() <= 0 ? i : i2) != 0) {
                sVGAVideoSpriteFrameEntity.maskPath = new SVGAPathEntity(optString);
            }
        }
        JSONArray optJSONArray = obj.optJSONArray("shapes");
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            int length = optJSONArray.length();
            for (int i3 = i; i3 < length; i3++) {
                JSONObject optJSONObject3 = optJSONArray.optJSONObject(i3);
                if (optJSONObject3 != null) {
                    arrayList.add(new SVGAVideoShapeEntity(optJSONObject3));
                }
            }
            sVGAVideoSpriteFrameEntity.shapes = CollectionsKt.toList(arrayList);
        }
    }

    public SVGAVideoSpriteFrameEntity(FrameEntity obj) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        this.layout = new SVGARect(0.0d, 0.0d, 0.0d, 0.0d);
        this.transform = new Matrix();
        this.shapes = CollectionsKt.emptyList();
        Float f = obj.alpha;
        this.alpha = f != null ? f.floatValue() : 0.0f;
        Layout layout = obj.layout;
        if (layout != null) {
            Float f2 = layout.f991x;
            double floatValue = f2 != null ? f2.floatValue() : 0.0f;
            Float f3 = layout.f992y;
            double floatValue2 = f3 != null ? f3.floatValue() : 0.0f;
            Float f4 = layout.width;
            double floatValue3 = f4 != null ? f4.floatValue() : 0.0f;
            Float f5 = layout.height;
            this.layout = new SVGARect(floatValue, floatValue2, floatValue3, f5 != null ? f5.floatValue() : 0.0f);
        }
        Transform transform = obj.transform;
        boolean z = true;
        if (transform != null) {
            float[] fArr = new float[9];
            Float f6 = transform.f1013a;
            float floatValue4 = f6 != null ? f6.floatValue() : 1.0f;
            Float f7 = transform.f1014b;
            float floatValue5 = f7 != null ? f7.floatValue() : 0.0f;
            Float f8 = transform.f1015c;
            float floatValue6 = f8 != null ? f8.floatValue() : 0.0f;
            Float f9 = transform.f1016d;
            float floatValue7 = f9 != null ? f9.floatValue() : 1.0f;
            Float f10 = transform.f1017tx;
            float floatValue8 = f10 != null ? f10.floatValue() : 0.0f;
            Float f11 = transform.f1018ty;
            float floatValue9 = f11 != null ? f11.floatValue() : 0.0f;
            fArr[0] = floatValue4;
            fArr[1] = floatValue6;
            fArr[2] = floatValue8;
            fArr[3] = floatValue5;
            fArr[4] = floatValue7;
            fArr[5] = floatValue9;
            fArr[6] = 0.0f;
            fArr[7] = 0.0f;
            fArr[8] = 1.0f;
            this.transform.setValues(fArr);
        }
        String str = obj.clipPath;
        if (str != null) {
            str = !(str.length() <= 0 ? false : z) ? null : str;
            if (str != null) {
                this.maskPath = new SVGAPathEntity(str);
            }
        }
        List<ShapeEntity> list = obj.shapes;
        Intrinsics.checkExpressionValueIsNotNull(list, "obj.shapes");
        List<ShapeEntity> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (ShapeEntity it : list2) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(new SVGAVideoShapeEntity(it));
        }
        this.shapes = arrayList;
    }
}
