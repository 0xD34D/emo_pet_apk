package com.opensource.svgaplayer.drawer;

import android.graphics.Canvas;
import android.widget.ImageView;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.opensource.svgaplayer.entities.SVGAVideoSpriteEntity;
import com.opensource.svgaplayer.entities.SVGAVideoSpriteFrameEntity;
import com.opensource.svgaplayer.utils.SVGAScaleInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: SGVADrawer.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001:\u0001\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001f\u0010\u0013\u001a\f\u0012\b\u0012\u00060\u0015R\u00020\u00000\u00142\u0006\u0010\u000f\u001a\u00020\u0010H\u0000¢\u0006\u0002\b\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0018"}, m35d2 = {"Lcom/opensource/svgaplayer/drawer/SGVADrawer;", "", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V", "scaleInfo", "Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;", "getScaleInfo", "()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;", "getVideoItem", "()Lcom/opensource/svgaplayer/SVGAVideoEntity;", "drawFrame", "", "canvas", "Landroid/graphics/Canvas;", "frameIndex", "", "scaleType", "Landroid/widget/ImageView$ScaleType;", "requestFrameSprites", "", "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;", "requestFrameSprites$library_release", "SVGADrawerSprite", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public class SGVADrawer {
    private final SVGAScaleInfo scaleInfo = new SVGAScaleInfo();
    private final SVGAVideoEntity videoItem;

    public SGVADrawer(SVGAVideoEntity videoItem) {
        Intrinsics.checkParameterIsNotNull(videoItem, "videoItem");
        this.videoItem = videoItem;
    }

    public final SVGAVideoEntity getVideoItem() {
        return this.videoItem;
    }

    public final SVGAScaleInfo getScaleInfo() {
        return this.scaleInfo;
    }

    /* compiled from: SGVADrawer.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\r"}, m35d2 = {"Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;", "", "matteKey", "", "imageKey", "frameEntity", "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;", "(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V", "getFrameEntity", "()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;", "getImageKey", "()Ljava/lang/String;", "getMatteKey", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public final class SVGADrawerSprite {
        private final SVGAVideoSpriteFrameEntity frameEntity;
        private final String imageKey;
        private final String matteKey;
        final /* synthetic */ SGVADrawer this$0;

        public SVGADrawerSprite(SGVADrawer sGVADrawer, String str, String str2, SVGAVideoSpriteFrameEntity frameEntity) {
            Intrinsics.checkParameterIsNotNull(frameEntity, "frameEntity");
            this.this$0 = sGVADrawer;
            this.matteKey = str;
            this.imageKey = str2;
            this.frameEntity = frameEntity;
        }

        public final SVGAVideoSpriteFrameEntity getFrameEntity() {
            return this.frameEntity;
        }

        public final String getImageKey() {
            return this.imageKey;
        }

        public final String getMatteKey() {
            return this.matteKey;
        }
    }

    public final List<SVGADrawerSprite> requestFrameSprites$library_release(int i) {
        String imageKey;
        ArrayList arrayList = new ArrayList();
        for (SVGAVideoSpriteEntity sVGAVideoSpriteEntity : this.videoItem.getSprites$library_release()) {
            SVGADrawerSprite sVGADrawerSprite = null;
            if (i >= 0 && i < sVGAVideoSpriteEntity.getFrames().size() && (imageKey = sVGAVideoSpriteEntity.getImageKey()) != null && (StringsKt.endsWith$default(imageKey, ".matte", false, 2, (Object) null) || sVGAVideoSpriteEntity.getFrames().get(i).getAlpha() > 0.0d)) {
                sVGADrawerSprite = new SVGADrawerSprite(this, sVGAVideoSpriteEntity.getMatteKey(), sVGAVideoSpriteEntity.getImageKey(), sVGAVideoSpriteEntity.getFrames().get(i));
            }
            if (sVGADrawerSprite != null) {
                arrayList.add(sVGADrawerSprite);
            }
        }
        return arrayList;
    }

    public void drawFrame(Canvas canvas, int i, ImageView.ScaleType scaleType) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        Intrinsics.checkParameterIsNotNull(scaleType, "scaleType");
        this.scaleInfo.performScaleType(canvas.getWidth(), canvas.getHeight(), (float) this.videoItem.getVideoSize().getWidth(), (float) this.videoItem.getVideoSize().getHeight(), scaleType);
    }
}
