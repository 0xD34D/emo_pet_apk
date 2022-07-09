package com.opensource.svgaplayer.drawer;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.media.SoundPool;
import android.os.Build;
import android.text.BoringLayout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.widget.ImageView;
import com.opensource.svgaplayer.IClickAreaListener;
import com.opensource.svgaplayer.SVGADynamicEntity;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.opensource.svgaplayer.drawer.SGVADrawer;
import com.opensource.svgaplayer.entities.SVGAAudioEntity;
import com.opensource.svgaplayer.entities.SVGAPathEntity;
import com.opensource.svgaplayer.entities.SVGAVideoShapeEntity;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: SVGACanvasDrawer.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u000267B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J$\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J \u0010!\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0016J\u001c\u0010$\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u001c\u0010%\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J$\u0010&\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J,\u0010'\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u000e2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010)\u001a\u00020*H\u0002J\"\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020 2\u0010\u0010-\u001a\f\u0012\b\u0012\u00060\u001cR\u00020\u00010.H\u0002J\"\u0010/\u001a\u00020\t2\u0006\u0010,\u001a\u00020 2\u0010\u0010-\u001a\f\u0012\b\u0012\u00060\u001cR\u00020\u00010.H\u0002J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u00020*H\u0002J\u0010\u00103\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u00104\u001a\u00020*2\u0006\u00105\u001a\u00020*H\u0002R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00068"}, m35d2 = {"Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;", "Lcom/opensource/svgaplayer/drawer/SGVADrawer;", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "dynamicItem", "Lcom/opensource/svgaplayer/SVGADynamicEntity;", "(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V", "beginIndexList", "", "", "[Ljava/lang/Boolean;", "drawTextCache", "Ljava/util/HashMap;", "", "Landroid/graphics/Bitmap;", "Lkotlin/collections/HashMap;", "getDynamicItem", "()Lcom/opensource/svgaplayer/SVGADynamicEntity;", "endIndexList", "matrixScaleTempValues", "", "pathCache", "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;", "sharedValues", "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;", "drawDynamic", "", "sprite", "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;", "canvas", "Landroid/graphics/Canvas;", "frameIndex", "", "drawFrame", "scaleType", "Landroid/widget/ImageView$ScaleType;", "drawImage", "drawShape", "drawSprite", "drawTextOnBitmap", "drawingBitmap", "frameMatrix", "Landroid/graphics/Matrix;", "isMatteBegin", "spriteIndex", "sprites", "", "isMatteEnd", "matrixScale", "", "matrix", "playAudio", "shareFrameMatrix", "transform", "PathCache", "ShareValues", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGACanvasDrawer extends SGVADrawer {
    private Boolean[] beginIndexList;
    private final SVGADynamicEntity dynamicItem;
    private Boolean[] endIndexList;
    private final ShareValues sharedValues = new ShareValues();
    private final HashMap<String, Bitmap> drawTextCache = new HashMap<>();
    private final PathCache pathCache = new PathCache();
    private final float[] matrixScaleTempValues = new float[16];

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SVGACanvasDrawer(SVGAVideoEntity videoItem, SVGADynamicEntity dynamicItem) {
        super(videoItem);
        Intrinsics.checkParameterIsNotNull(videoItem, "videoItem");
        Intrinsics.checkParameterIsNotNull(dynamicItem, "dynamicItem");
        this.dynamicItem = dynamicItem;
    }

    public final SVGADynamicEntity getDynamicItem() {
        return this.dynamicItem;
    }

    @Override // com.opensource.svgaplayer.drawer.SGVADrawer
    public void drawFrame(Canvas canvas, int i, ImageView.ScaleType scaleType) {
        int i2;
        int i3;
        SGVADrawer.SVGADrawerSprite sVGADrawerSprite;
        SGVADrawer.SVGADrawerSprite sVGADrawerSprite2;
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        Intrinsics.checkParameterIsNotNull(scaleType, "scaleType");
        super.drawFrame(canvas, i, scaleType);
        playAudio(i);
        this.pathCache.onSizeChanged(canvas);
        List<SGVADrawer.SVGADrawerSprite> requestFrameSprites$library_release = requestFrameSprites$library_release(i);
        if (requestFrameSprites$library_release.size() > 0) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Object obj = null;
            Boolean[] boolArr = null;
            this.beginIndexList = boolArr;
            this.endIndexList = boolArr;
            boolean z = false;
            String imageKey = requestFrameSprites$library_release.get(0).getImageKey();
            int i4 = 2;
            boolean endsWith$default = imageKey != null ? StringsKt.endsWith$default(imageKey, ".matte", false, 2, (Object) null) : false;
            int i5 = 0;
            int i6 = -1;
            for (Object obj2 : requestFrameSprites$library_release) {
                i5++;
                if (i5 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                SGVADrawer.SVGADrawerSprite sVGADrawerSprite3 = (SGVADrawer.SVGADrawerSprite) obj2;
                String imageKey2 = sVGADrawerSprite3.getImageKey();
                if (imageKey2 != null) {
                    if (!endsWith$default || Build.VERSION.SDK_INT < 21) {
                        drawSprite(sVGADrawerSprite3, canvas, i);
                    } else if (StringsKt.endsWith$default(imageKey2, ".matte", z, i4, obj)) {
                        linkedHashMap.put(imageKey2, sVGADrawerSprite3);
                    }
                    obj = null;
                    z = false;
                    i4 = 2;
                }
                if (!isMatteBegin(i5, requestFrameSprites$library_release)) {
                    sVGADrawerSprite = sVGADrawerSprite3;
                    i3 = i5;
                    i2 = -1;
                } else if (Build.VERSION.SDK_INT >= 21) {
                    sVGADrawerSprite = sVGADrawerSprite3;
                    i3 = i5;
                    i2 = -1;
                    i6 = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
                } else {
                    sVGADrawerSprite = sVGADrawerSprite3;
                    i3 = i5;
                    i2 = -1;
                    canvas.save();
                }
                drawSprite(sVGADrawerSprite, canvas, i);
                if (isMatteEnd(i3, requestFrameSprites$library_release) && (sVGADrawerSprite2 = (SGVADrawer.SVGADrawerSprite) linkedHashMap.get(sVGADrawerSprite.getMatteKey())) != null) {
                    drawSprite(sVGADrawerSprite2, this.sharedValues.shareMatteCanvas(canvas.getWidth(), canvas.getHeight()), i);
                    canvas.drawBitmap(this.sharedValues.sharedMatteBitmap(), 0.0f, 0.0f, this.sharedValues.shareMattePaint());
                    if (i6 != i2) {
                        canvas.restoreToCount(i6);
                    } else {
                        canvas.restore();
                    }
                }
                obj = null;
                z = false;
                i4 = 2;
            }
        }
    }

    private final boolean isMatteBegin(int i, List<SGVADrawer.SVGADrawerSprite> list) {
        Boolean bool;
        String matteKey;
        SGVADrawer.SVGADrawerSprite sVGADrawerSprite;
        if (this.beginIndexList == null) {
            int size = list.size();
            Boolean[] boolArr = new Boolean[size];
            for (int i2 = 0; i2 < size; i2++) {
                boolArr[i2] = false;
            }
            int i3 = 0;
            for (Object obj : list) {
                i3++;
                if (i3 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                SGVADrawer.SVGADrawerSprite sVGADrawerSprite2 = (SGVADrawer.SVGADrawerSprite) obj;
                String imageKey = sVGADrawerSprite2.getImageKey();
                if ((imageKey == null || !StringsKt.endsWith$default(imageKey, ".matte", false, 2, (Object) null)) && (matteKey = sVGADrawerSprite2.getMatteKey()) != null && matteKey.length() > 0 && (sVGADrawerSprite = list.get(i3 - 1)) != null) {
                    if (sVGADrawerSprite.getMatteKey() == null || sVGADrawerSprite.getMatteKey().length() == 0) {
                        boolArr[i3] = true;
                    } else if (!Intrinsics.areEqual(sVGADrawerSprite.getMatteKey(), sVGADrawerSprite2.getMatteKey())) {
                        boolArr[i3] = true;
                    }
                }
            }
            this.beginIndexList = boolArr;
        }
        Boolean[] boolArr2 = this.beginIndexList;
        if (boolArr2 == null || (bool = boolArr2[i]) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private final boolean isMatteEnd(int i, List<SGVADrawer.SVGADrawerSprite> list) {
        Boolean bool;
        String matteKey;
        if (this.endIndexList == null) {
            List<SGVADrawer.SVGADrawerSprite> list2 = list;
            int size = list2.size();
            Boolean[] boolArr = new Boolean[size];
            for (int i2 = 0; i2 < size; i2++) {
                boolArr[i2] = false;
            }
            int i3 = 0;
            for (Object obj : list) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                SGVADrawer.SVGADrawerSprite sVGADrawerSprite = (SGVADrawer.SVGADrawerSprite) obj;
                String imageKey = sVGADrawerSprite.getImageKey();
                if ((imageKey == null || !StringsKt.endsWith$default(imageKey, ".matte", false, 2, (Object) null)) && (matteKey = sVGADrawerSprite.getMatteKey()) != null && matteKey.length() > 0) {
                    if (i3 == list2.size() - 1) {
                        boolArr[i3] = true;
                    } else {
                        SGVADrawer.SVGADrawerSprite sVGADrawerSprite2 = list.get(i4);
                        if (sVGADrawerSprite2 != null) {
                            if (sVGADrawerSprite2.getMatteKey() == null || sVGADrawerSprite2.getMatteKey().length() == 0) {
                                boolArr[i3] = true;
                            } else if (!Intrinsics.areEqual(sVGADrawerSprite2.getMatteKey(), sVGADrawerSprite.getMatteKey())) {
                                boolArr[i3] = true;
                            }
                        }
                    }
                }
                i3 = i4;
            }
            this.endIndexList = boolArr;
        }
        Boolean[] boolArr2 = this.endIndexList;
        if (boolArr2 == null || (bool = boolArr2[i]) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    private final void playAudio(int i) {
        SoundPool soundPool$library_release;
        Integer soundID;
        for (SVGAAudioEntity sVGAAudioEntity : getVideoItem().getAudios$library_release()) {
            if (!(sVGAAudioEntity.getStartFrame() != i || (soundPool$library_release = getVideoItem().getSoundPool$library_release()) == null || (soundID = sVGAAudioEntity.getSoundID()) == null)) {
                sVGAAudioEntity.setPlayID(Integer.valueOf(soundPool$library_release.play(soundID.intValue(), 1.0f, 1.0f, 1, 0, 1.0f)));
            }
            if (sVGAAudioEntity.getEndFrame() <= i) {
                Integer playID = sVGAAudioEntity.getPlayID();
                if (playID != null) {
                    int intValue = playID.intValue();
                    SoundPool soundPool$library_release2 = getVideoItem().getSoundPool$library_release();
                    if (soundPool$library_release2 != null) {
                        soundPool$library_release2.stop(intValue);
                    }
                }
                sVGAAudioEntity.setPlayID(null);
            }
        }
    }

    private final Matrix shareFrameMatrix(Matrix matrix) {
        Matrix sharedMatrix = this.sharedValues.sharedMatrix();
        sharedMatrix.postScale(getScaleInfo().getScaleFx(), getScaleInfo().getScaleFy());
        sharedMatrix.postTranslate(getScaleInfo().getTranFx(), getScaleInfo().getTranFy());
        sharedMatrix.preConcat(matrix);
        return sharedMatrix;
    }

    private final void drawSprite(SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Canvas canvas, int i) {
        drawImage(sVGADrawerSprite, canvas);
        drawShape(sVGADrawerSprite, canvas);
        drawDynamic(sVGADrawerSprite, canvas, i);
    }

    private final void drawImage(SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Canvas canvas) {
        String imageKey = sVGADrawerSprite.getImageKey();
        if (imageKey != null && !Intrinsics.areEqual((Object) this.dynamicItem.getDynamicHidden$library_release().get(imageKey), (Object) true)) {
            String replace$default = StringsKt.replace$default(imageKey, ".matte", "", false, 4, (Object) null);
            Bitmap bitmap = this.dynamicItem.getDynamicImage$library_release().get(replace$default);
            if (bitmap == null) {
                bitmap = getVideoItem().getImages$library_release().get(replace$default);
            }
            if (bitmap != null) {
                Matrix shareFrameMatrix = shareFrameMatrix(sVGADrawerSprite.getFrameEntity().getTransform());
                Paint sharedPaint = this.sharedValues.sharedPaint();
                sharedPaint.setAntiAlias(getVideoItem().getAntiAlias());
                sharedPaint.setFilterBitmap(getVideoItem().getAntiAlias());
                sharedPaint.setAlpha((int) (sVGADrawerSprite.getFrameEntity().getAlpha() * 255));
                if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                    SVGAPathEntity maskPath = sVGADrawerSprite.getFrameEntity().getMaskPath();
                    if (maskPath != null) {
                        canvas.save();
                        Path sharedPath = this.sharedValues.sharedPath();
                        maskPath.buildPath(sharedPath);
                        sharedPath.transform(shareFrameMatrix);
                        canvas.clipPath(sharedPath);
                        shareFrameMatrix.preScale((float) (sVGADrawerSprite.getFrameEntity().getLayout().getWidth() / bitmap.getWidth()), (float) (sVGADrawerSprite.getFrameEntity().getLayout().getWidth() / bitmap.getWidth()));
                        if (!bitmap.isRecycled()) {
                            canvas.drawBitmap(bitmap, shareFrameMatrix, sharedPaint);
                        }
                        canvas.restore();
                    } else {
                        return;
                    }
                } else {
                    shareFrameMatrix.preScale((float) (sVGADrawerSprite.getFrameEntity().getLayout().getWidth() / bitmap.getWidth()), (float) (sVGADrawerSprite.getFrameEntity().getLayout().getWidth() / bitmap.getWidth()));
                    if (!bitmap.isRecycled()) {
                        canvas.drawBitmap(bitmap, shareFrameMatrix, sharedPaint);
                    }
                }
                IClickAreaListener iClickAreaListener = this.dynamicItem.getDynamicIClickArea$library_release().get(imageKey);
                if (iClickAreaListener != null) {
                    float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
                    shareFrameMatrix.getValues(fArr);
                    iClickAreaListener.onResponseArea(imageKey, (int) fArr[2], (int) fArr[5], (int) ((bitmap.getWidth() * fArr[0]) + fArr[2]), (int) ((bitmap.getHeight() * fArr[4]) + fArr[5]));
                }
                drawTextOnBitmap(canvas, bitmap, sVGADrawerSprite, shareFrameMatrix);
            }
        }
    }

    private final void drawTextOnBitmap(Canvas canvas, Bitmap bitmap, SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Matrix matrix) {
        int i;
        StaticLayout layout;
        TextPaint drawingTextPaint;
        if (this.dynamicItem.isTextDirty$library_release()) {
            this.drawTextCache.clear();
            this.dynamicItem.setTextDirty$library_release(false);
        }
        String imageKey = sVGADrawerSprite.getImageKey();
        if (imageKey != null) {
            Bitmap bitmap2 = null;
            String str = this.dynamicItem.getDynamicText$library_release().get(imageKey);
            if (!(str == null || (drawingTextPaint = this.dynamicItem.getDynamicTextPaint$library_release().get(imageKey)) == null || (bitmap2 = this.drawTextCache.get(imageKey)) != null)) {
                bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                Canvas canvas2 = new Canvas(bitmap2);
                Intrinsics.checkExpressionValueIsNotNull(drawingTextPaint, "drawingTextPaint");
                drawingTextPaint.setAntiAlias(true);
                drawingTextPaint.setStyle(Paint.Style.FILL);
                drawingTextPaint.setTextAlign(Paint.Align.CENTER);
                Paint.FontMetrics fontMetrics = drawingTextPaint.getFontMetrics();
                float f = 2;
                canvas2.drawText(str, rect.centerX(), (rect.centerY() - (fontMetrics.top / f)) - (fontMetrics.bottom / f), drawingTextPaint);
                HashMap<String, Bitmap> hashMap = this.drawTextCache;
                if (bitmap2 != null) {
                    hashMap.put(imageKey, bitmap2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.graphics.Bitmap");
                }
            }
            BoringLayout it = this.dynamicItem.getDynamicBoringLayoutText$library_release().get(imageKey);
            if (it != null && (bitmap2 = this.drawTextCache.get(imageKey)) == null) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                TextPaint paint = it.getPaint();
                Intrinsics.checkExpressionValueIsNotNull(paint, "it.paint");
                paint.setAntiAlias(true);
                bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas3 = new Canvas(bitmap2);
                canvas3.translate(0.0f, (bitmap.getHeight() - it.getHeight()) / 2);
                it.draw(canvas3);
                HashMap<String, Bitmap> hashMap2 = this.drawTextCache;
                if (bitmap2 != null) {
                    hashMap2.put(imageKey, bitmap2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.graphics.Bitmap");
                }
            }
            StaticLayout it2 = this.dynamicItem.getDynamicStaticLayoutText$library_release().get(imageKey);
            if (it2 != null && (bitmap2 = this.drawTextCache.get(imageKey)) == null) {
                Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                TextPaint paint2 = it2.getPaint();
                Intrinsics.checkExpressionValueIsNotNull(paint2, "it.paint");
                paint2.setAntiAlias(true);
                if (Build.VERSION.SDK_INT >= 23) {
                    try {
                        Field field = StaticLayout.class.getDeclaredField("mMaximumVisibleLineCount");
                        Intrinsics.checkExpressionValueIsNotNull(field, "field");
                        field.setAccessible(true);
                        i = field.getInt(it2);
                    } catch (Exception unused) {
                        i = Integer.MAX_VALUE;
                    }
                    layout = StaticLayout.Builder.obtain(it2.getText(), 0, it2.getText().length(), it2.getPaint(), bitmap.getWidth()).setAlignment(it2.getAlignment()).setMaxLines(i).setEllipsize(TextUtils.TruncateAt.END).build();
                } else {
                    layout = new StaticLayout(it2.getText(), 0, it2.getText().length(), it2.getPaint(), bitmap.getWidth(), it2.getAlignment(), it2.getSpacingMultiplier(), it2.getSpacingAdd(), false);
                }
                bitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas4 = new Canvas(bitmap2);
                int height = bitmap.getHeight();
                Intrinsics.checkExpressionValueIsNotNull(layout, "layout");
                canvas4.translate(0.0f, (height - layout.getHeight()) / 2);
                layout.draw(canvas4);
                HashMap<String, Bitmap> hashMap3 = this.drawTextCache;
                if (bitmap2 != null) {
                    hashMap3.put(imageKey, bitmap2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.graphics.Bitmap");
                }
            }
            if (bitmap2 != null) {
                Paint sharedPaint = this.sharedValues.sharedPaint();
                sharedPaint.setAntiAlias(getVideoItem().getAntiAlias());
                sharedPaint.setAlpha((int) (sVGADrawerSprite.getFrameEntity().getAlpha() * 255));
                if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                    SVGAPathEntity maskPath = sVGADrawerSprite.getFrameEntity().getMaskPath();
                    if (maskPath != null) {
                        canvas.save();
                        canvas.concat(matrix);
                        canvas.clipRect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                        sharedPaint.setShader(new BitmapShader(bitmap2, Shader.TileMode.REPEAT, Shader.TileMode.REPEAT));
                        Path sharedPath = this.sharedValues.sharedPath();
                        maskPath.buildPath(sharedPath);
                        canvas.drawPath(sharedPath, sharedPaint);
                        canvas.restore();
                        return;
                    }
                    return;
                }
                sharedPaint.setFilterBitmap(getVideoItem().getAntiAlias());
                canvas.drawBitmap(bitmap2, matrix, sharedPaint);
            }
        }
    }

    private final void drawShape(SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Canvas canvas) {
        float[] lineDash;
        String lineJoin;
        String lineCap;
        int fill;
        Matrix shareFrameMatrix = shareFrameMatrix(sVGADrawerSprite.getFrameEntity().getTransform());
        for (SVGAVideoShapeEntity sVGAVideoShapeEntity : sVGADrawerSprite.getFrameEntity().getShapes()) {
            sVGAVideoShapeEntity.buildPath();
            if (sVGAVideoShapeEntity.getShapePath() != null) {
                Paint sharedPaint = this.sharedValues.sharedPaint();
                sharedPaint.reset();
                sharedPaint.setAntiAlias(getVideoItem().getAntiAlias());
                double d = 255;
                sharedPaint.setAlpha((int) (sVGADrawerSprite.getFrameEntity().getAlpha() * d));
                Path sharedPath = this.sharedValues.sharedPath();
                sharedPath.reset();
                sharedPath.addPath(this.pathCache.buildPath(sVGAVideoShapeEntity));
                Matrix sharedMatrix2 = this.sharedValues.sharedMatrix2();
                sharedMatrix2.reset();
                Matrix transform = sVGAVideoShapeEntity.getTransform();
                if (transform != null) {
                    sharedMatrix2.postConcat(transform);
                }
                sharedMatrix2.postConcat(shareFrameMatrix);
                sharedPath.transform(sharedMatrix2);
                SVGAVideoShapeEntity.Styles styles = sVGAVideoShapeEntity.getStyles();
                if (!(styles == null || (fill = styles.getFill()) == 0)) {
                    sharedPaint.setStyle(Paint.Style.FILL);
                    sharedPaint.setColor(fill);
                    sharedPaint.setAlpha(Math.min(255, Math.max(0, (int) (sVGADrawerSprite.getFrameEntity().getAlpha() * d))));
                    if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                        canvas.save();
                    }
                    SVGAPathEntity maskPath = sVGADrawerSprite.getFrameEntity().getMaskPath();
                    if (maskPath != null) {
                        Path sharedPath2 = this.sharedValues.sharedPath2();
                        maskPath.buildPath(sharedPath2);
                        sharedPath2.transform(shareFrameMatrix);
                        canvas.clipPath(sharedPath2);
                    }
                    canvas.drawPath(sharedPath, sharedPaint);
                    if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                        canvas.restore();
                    }
                }
                SVGAVideoShapeEntity.Styles styles2 = sVGAVideoShapeEntity.getStyles();
                if (styles2 != null) {
                    float f = 0;
                    if (styles2.getStrokeWidth() > f) {
                        sharedPaint.setStyle(Paint.Style.STROKE);
                        SVGAVideoShapeEntity.Styles styles3 = sVGAVideoShapeEntity.getStyles();
                        if (styles3 != null) {
                            sharedPaint.setColor(styles3.getStroke());
                            sharedPaint.setAlpha(Math.min(255, Math.max(0, (int) (sVGADrawerSprite.getFrameEntity().getAlpha() * d))));
                        }
                        float matrixScale = matrixScale(shareFrameMatrix);
                        SVGAVideoShapeEntity.Styles styles4 = sVGAVideoShapeEntity.getStyles();
                        if (styles4 != null) {
                            sharedPaint.setStrokeWidth(styles4.getStrokeWidth() * matrixScale);
                        }
                        SVGAVideoShapeEntity.Styles styles5 = sVGAVideoShapeEntity.getStyles();
                        if (!(styles5 == null || (lineCap = styles5.getLineCap()) == null)) {
                            if (StringsKt.equals(lineCap, "butt", true)) {
                                sharedPaint.setStrokeCap(Paint.Cap.BUTT);
                            } else if (StringsKt.equals(lineCap, "round", true)) {
                                sharedPaint.setStrokeCap(Paint.Cap.ROUND);
                            } else if (StringsKt.equals(lineCap, "square", true)) {
                                sharedPaint.setStrokeCap(Paint.Cap.SQUARE);
                            }
                        }
                        SVGAVideoShapeEntity.Styles styles6 = sVGAVideoShapeEntity.getStyles();
                        if (!(styles6 == null || (lineJoin = styles6.getLineJoin()) == null)) {
                            if (StringsKt.equals(lineJoin, "miter", true)) {
                                sharedPaint.setStrokeJoin(Paint.Join.MITER);
                            } else if (StringsKt.equals(lineJoin, "round", true)) {
                                sharedPaint.setStrokeJoin(Paint.Join.ROUND);
                            } else if (StringsKt.equals(lineJoin, "bevel", true)) {
                                sharedPaint.setStrokeJoin(Paint.Join.BEVEL);
                            }
                        }
                        SVGAVideoShapeEntity.Styles styles7 = sVGAVideoShapeEntity.getStyles();
                        if (styles7 != null) {
                            sharedPaint.setStrokeMiter(styles7.getMiterLimit() * matrixScale);
                        }
                        SVGAVideoShapeEntity.Styles styles8 = sVGAVideoShapeEntity.getStyles();
                        if (styles8 != null && (lineDash = styles8.getLineDash()) != null && lineDash.length == 3 && (lineDash[0] > f || lineDash[1] > f)) {
                            float[] fArr = new float[2];
                            float f2 = 1.0f;
                            if (lineDash[0] >= 1.0f) {
                                f2 = lineDash[0];
                            }
                            fArr[0] = f2 * matrixScale;
                            float f3 = 0.1f;
                            if (lineDash[1] >= 0.1f) {
                                f3 = lineDash[1];
                            }
                            fArr[1] = f3 * matrixScale;
                            sharedPaint.setPathEffect(new DashPathEffect(fArr, lineDash[2] * matrixScale));
                        }
                        if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                            canvas.save();
                        }
                        SVGAPathEntity maskPath2 = sVGADrawerSprite.getFrameEntity().getMaskPath();
                        if (maskPath2 != null) {
                            Path sharedPath22 = this.sharedValues.sharedPath2();
                            maskPath2.buildPath(sharedPath22);
                            sharedPath22.transform(shareFrameMatrix);
                            canvas.clipPath(sharedPath22);
                        }
                        canvas.drawPath(sharedPath, sharedPaint);
                        if (sVGADrawerSprite.getFrameEntity().getMaskPath() != null) {
                            canvas.restore();
                        }
                    }
                }
            }
        }
    }

    private final float matrixScale(Matrix matrix) {
        matrix.getValues(this.matrixScaleTempValues);
        float[] fArr = this.matrixScaleTempValues;
        if (fArr[0] == 0.0f) {
            return 0.0f;
        }
        double d = fArr[0];
        double d2 = fArr[3];
        double d3 = fArr[1];
        double d4 = fArr[4];
        if (d * d4 == d2 * d3) {
            return 0.0f;
        }
        double sqrt = Math.sqrt((d * d) + (d2 * d2));
        double d5 = d / sqrt;
        double d6 = d2 / sqrt;
        double d7 = (d5 * d3) + (d6 * d4);
        double d8 = d3 - (d5 * d7);
        double d9 = d4 - (d7 * d6);
        double sqrt2 = Math.sqrt((d8 * d8) + (d9 * d9));
        if (d5 * (d9 / sqrt2) < d6 * (d8 / sqrt2)) {
            sqrt = -sqrt;
        }
        return Math.abs(getScaleInfo().getRatioX() ? (float) sqrt : (float) sqrt2);
    }

    private final void drawDynamic(SGVADrawer.SVGADrawerSprite sVGADrawerSprite, Canvas canvas, int i) {
        String imageKey = sVGADrawerSprite.getImageKey();
        if (imageKey != null) {
            Function2<Canvas, Integer, Boolean> function2 = this.dynamicItem.getDynamicDrawer$library_release().get(imageKey);
            if (function2 != null) {
                Matrix shareFrameMatrix = shareFrameMatrix(sVGADrawerSprite.getFrameEntity().getTransform());
                canvas.save();
                canvas.concat(shareFrameMatrix);
                function2.invoke(canvas, Integer.valueOf(i));
                canvas.restore();
            }
            Function4<Canvas, Integer, Integer, Integer, Boolean> function4 = this.dynamicItem.getDynamicDrawerSized$library_release().get(imageKey);
            if (function4 != null) {
                Matrix shareFrameMatrix2 = shareFrameMatrix(sVGADrawerSprite.getFrameEntity().getTransform());
                canvas.save();
                canvas.concat(shareFrameMatrix2);
                function4.invoke(canvas, Integer.valueOf(i), Integer.valueOf((int) sVGADrawerSprite.getFrameEntity().getLayout().getWidth()), Integer.valueOf((int) sVGADrawerSprite.getFrameEntity().getLayout().getHeight()));
                canvas.restore();
            }
        }
    }

    /* compiled from: SVGACanvasDrawer.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m35d2 = {"Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;", "", "()V", "shareMatteCanvas", "Landroid/graphics/Canvas;", "shareMattePaint", "Landroid/graphics/Paint;", "sharedMatrix", "Landroid/graphics/Matrix;", "sharedMatrix2", "sharedMatteBitmap", "Landroid/graphics/Bitmap;", "sharedPaint", "sharedPath", "Landroid/graphics/Path;", "sharedPath2", "width", "", "height", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public static final class ShareValues {
        private Canvas shareMatteCanvas;
        private Bitmap sharedMatteBitmap;
        private final Paint sharedPaint = new Paint();
        private final Path sharedPath = new Path();
        private final Path sharedPath2 = new Path();
        private final Matrix sharedMatrix = new Matrix();
        private final Matrix sharedMatrix2 = new Matrix();
        private final Paint shareMattePaint = new Paint();

        public final Paint sharedPaint() {
            this.sharedPaint.reset();
            return this.sharedPaint;
        }

        public final Path sharedPath() {
            this.sharedPath.reset();
            return this.sharedPath;
        }

        public final Path sharedPath2() {
            this.sharedPath2.reset();
            return this.sharedPath2;
        }

        public final Matrix sharedMatrix() {
            this.sharedMatrix.reset();
            return this.sharedMatrix;
        }

        public final Matrix sharedMatrix2() {
            this.sharedMatrix2.reset();
            return this.sharedMatrix2;
        }

        public final Paint shareMattePaint() {
            this.shareMattePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            return this.shareMattePaint;
        }

        public final Bitmap sharedMatteBitmap() {
            Bitmap bitmap = this.sharedMatteBitmap;
            if (bitmap != null) {
                return bitmap;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.graphics.Bitmap");
        }

        public final Canvas shareMatteCanvas(int i, int i2) {
            if (this.shareMatteCanvas == null) {
                this.sharedMatteBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ALPHA_8);
            }
            return new Canvas(this.sharedMatteBitmap);
        }
    }

    /* compiled from: SVGACanvasDrawer.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m35d2 = {"Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;", "", "()V", "cache", "Ljava/util/HashMap;", "Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;", "Landroid/graphics/Path;", "Lkotlin/collections/HashMap;", "canvasHeight", "", "canvasWidth", "buildPath", "shape", "onSizeChanged", "", "canvas", "Landroid/graphics/Canvas;", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public static final class PathCache {
        private final HashMap<SVGAVideoShapeEntity, Path> cache = new HashMap<>();
        private int canvasHeight;
        private int canvasWidth;

        public final void onSizeChanged(Canvas canvas) {
            Intrinsics.checkParameterIsNotNull(canvas, "canvas");
            if (!(this.canvasWidth == canvas.getWidth() && this.canvasHeight == canvas.getHeight())) {
                this.cache.clear();
            }
            this.canvasWidth = canvas.getWidth();
            this.canvasHeight = canvas.getHeight();
        }

        public final Path buildPath(SVGAVideoShapeEntity shape) {
            Intrinsics.checkParameterIsNotNull(shape, "shape");
            if (!this.cache.containsKey(shape)) {
                Path path = new Path();
                path.set(shape.getShapePath());
                this.cache.put(shape, path);
            }
            Path path2 = this.cache.get(shape);
            if (path2 == null) {
                Intrinsics.throwNpe();
            }
            return path2;
        }
    }
}
