package com.opensource.svgaplayer.entities;

import com.opensource.svgaplayer.proto.FrameEntity;
import com.opensource.svgaplayer.proto.SpriteEntity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SVGAVideoSpriteEntity.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u0012"}, m35d2 = {"Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;", "", "obj", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)V", "Lcom/opensource/svgaplayer/proto/SpriteEntity;", "(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V", "frames", "", "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;", "getFrames", "()Ljava/util/List;", "imageKey", "", "getImageKey", "()Ljava/lang/String;", "matteKey", "getMatteKey", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGAVideoSpriteEntity {
    private final List<SVGAVideoSpriteFrameEntity> frames;
    private final String imageKey;
    private final String matteKey;

    public final String getImageKey() {
        return this.imageKey;
    }

    public final String getMatteKey() {
        return this.matteKey;
    }

    public final List<SVGAVideoSpriteFrameEntity> getFrames() {
        return this.frames;
    }

    public SVGAVideoSpriteEntity(JSONObject obj) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        this.imageKey = obj.optString("imageKey");
        this.matteKey = obj.optString("matteKey");
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = obj.optJSONArray("frames");
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    SVGAVideoSpriteFrameEntity sVGAVideoSpriteFrameEntity = new SVGAVideoSpriteFrameEntity(optJSONObject);
                    if ((!sVGAVideoSpriteFrameEntity.getShapes().isEmpty()) && ((SVGAVideoShapeEntity) CollectionsKt.first((List<? extends Object>) sVGAVideoSpriteFrameEntity.getShapes())).isKeep() && arrayList.size() > 0) {
                        sVGAVideoSpriteFrameEntity.setShapes(((SVGAVideoSpriteFrameEntity) CollectionsKt.last((List<? extends Object>) arrayList)).getShapes());
                    }
                    arrayList.add(sVGAVideoSpriteFrameEntity);
                }
            }
        }
        this.frames = CollectionsKt.toList(arrayList);
    }

    public SVGAVideoSpriteEntity(SpriteEntity obj) {
        ArrayList arrayList;
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        this.imageKey = obj.imageKey;
        this.matteKey = obj.matteKey;
        SVGAVideoSpriteFrameEntity sVGAVideoSpriteFrameEntity = null;
        List<FrameEntity> list = obj.frames;
        if (list != null) {
            List<FrameEntity> list2 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            for (FrameEntity it : list2) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                SVGAVideoSpriteFrameEntity sVGAVideoSpriteFrameEntity2 = new SVGAVideoSpriteFrameEntity(it);
                if ((!sVGAVideoSpriteFrameEntity2.getShapes().isEmpty()) && ((SVGAVideoShapeEntity) CollectionsKt.first((List<? extends Object>) sVGAVideoSpriteFrameEntity2.getShapes())).isKeep() && sVGAVideoSpriteFrameEntity != null) {
                    sVGAVideoSpriteFrameEntity2.setShapes(sVGAVideoSpriteFrameEntity.getShapes());
                }
                arrayList2.add(sVGAVideoSpriteFrameEntity2);
                sVGAVideoSpriteFrameEntity = sVGAVideoSpriteFrameEntity2;
            }
            arrayList = arrayList2;
        } else {
            arrayList = CollectionsKt.emptyList();
        }
        this.frames = arrayList;
    }
}
