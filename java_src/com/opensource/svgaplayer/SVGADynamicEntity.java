package com.opensource.svgaplayer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.text.BoringLayout;
import android.text.StaticLayout;
import android.text.TextPaint;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SVGADynamicEntity.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\u0005J\u0014\u0010>\u001a\u00020=2\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00050@JF\u0010A\u001a\u00020=26\u0010B\u001a2\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\r2\u0006\u0010C\u001a\u00020\u0005Jp\u0010D\u001a\u00020=2`\u0010B\u001a\\\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010E\u001a\u00020=2\u0006\u0010F\u001a\u00020%2\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010E\u001a\u00020=2\u0006\u0010G\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010H\u001a\u00020=2\u0006\u0010I\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010H\u001a\u00020=2\u0006\u0010I\u001a\u00020)2\u0006\u0010C\u001a\u00020\u0005J\u001e\u0010H\u001a\u00020=2\u0006\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u0002002\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010L\u001a\u00020=2\u0006\u0010M\u001a\u00020\u00142\u0006\u0010C\u001a\u00020\u0005R6\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0096\u0001\u0010\f\u001a~\u0012\u0004\u0012\u00020\u0005\u00124\u00122\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\r0\u0004j>\u0012\u0004\u0012\u00020\u0005\u00124\u00122\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\r`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u000bRë\u0001\u0010\u0017\u001aÒ\u0001\u0012\u0004\u0012\u00020\u0005\u0012^\u0012\\\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00140\u00180\u0004jh\u0012\u0004\u0012\u00020\u0005\u0012^\u0012\\\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00140\u0018`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\t\"\u0004\b\u001c\u0010\u000bR6\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00140\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0014`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\t\"\u0004\b\u001f\u0010\u000bR6\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020!0\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020!`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR6\u0010$\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020%0\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020%`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\t\"\u0004\b'\u0010\u000bR6\u0010(\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020)0\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020)`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\t\"\u0004\b+\u0010\u000bR6\u0010,\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\t\"\u0004\b.\u0010\u000bR6\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002000\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u000200`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\t\"\u0004\b2\u0010\u000bR\u001a\u00103\u001a\u00020\u0014X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R6\u00108\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002090\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u000209`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\t\"\u0004\b;\u0010\u000b¨\u0006N"}, m35d2 = {"Lcom/opensource/svgaplayer/SVGADynamicEntity;", "", "()V", "dynamicBoringLayoutText", "Ljava/util/HashMap;", "", "Landroid/text/BoringLayout;", "Lkotlin/collections/HashMap;", "getDynamicBoringLayoutText$library_release", "()Ljava/util/HashMap;", "setDynamicBoringLayoutText$library_release", "(Ljava/util/HashMap;)V", "dynamicDrawer", "Lkotlin/Function2;", "Landroid/graphics/Canvas;", "Lkotlin/ParameterName;", "name", "canvas", "", "frameIndex", "", "getDynamicDrawer$library_release", "setDynamicDrawer$library_release", "dynamicDrawerSized", "Lkotlin/Function4;", "width", "height", "getDynamicDrawerSized$library_release", "setDynamicDrawerSized$library_release", "dynamicHidden", "getDynamicHidden$library_release", "setDynamicHidden$library_release", "dynamicIClickArea", "Lcom/opensource/svgaplayer/IClickAreaListener;", "getDynamicIClickArea$library_release", "setDynamicIClickArea$library_release", "dynamicImage", "Landroid/graphics/Bitmap;", "getDynamicImage$library_release", "setDynamicImage$library_release", "dynamicStaticLayoutText", "Landroid/text/StaticLayout;", "getDynamicStaticLayoutText$library_release", "setDynamicStaticLayoutText$library_release", "dynamicText", "getDynamicText$library_release", "setDynamicText$library_release", "dynamicTextPaint", "Landroid/text/TextPaint;", "getDynamicTextPaint$library_release", "setDynamicTextPaint$library_release", "isTextDirty", "isTextDirty$library_release", "()Z", "setTextDirty$library_release", "(Z)V", "mClickMap", "", "getMClickMap$library_release", "setMClickMap$library_release", "clearDynamicObjects", "", "setClickArea", "clickKey", "", "setDynamicDrawer", "drawer", "forKey", "setDynamicDrawerSized", "setDynamicImage", "bitmap", "url", "setDynamicText", "layoutText", "text", "textPaint", "setHidden", "value", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGADynamicEntity {
    private boolean isTextDirty;
    private HashMap<String, Boolean> dynamicHidden = new HashMap<>();
    private HashMap<String, Bitmap> dynamicImage = new HashMap<>();
    private HashMap<String, String> dynamicText = new HashMap<>();
    private HashMap<String, TextPaint> dynamicTextPaint = new HashMap<>();
    private HashMap<String, StaticLayout> dynamicStaticLayoutText = new HashMap<>();
    private HashMap<String, BoringLayout> dynamicBoringLayoutText = new HashMap<>();
    private HashMap<String, Function2<Canvas, Integer, Boolean>> dynamicDrawer = new HashMap<>();
    private HashMap<String, int[]> mClickMap = new HashMap<>();
    private HashMap<String, IClickAreaListener> dynamicIClickArea = new HashMap<>();
    private HashMap<String, Function4<Canvas, Integer, Integer, Integer, Boolean>> dynamicDrawerSized = new HashMap<>();

    public final HashMap<String, Boolean> getDynamicHidden$library_release() {
        return this.dynamicHidden;
    }

    public final void setDynamicHidden$library_release(HashMap<String, Boolean> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.dynamicHidden = hashMap;
    }

    public final HashMap<String, Bitmap> getDynamicImage$library_release() {
        return this.dynamicImage;
    }

    public final void setDynamicImage$library_release(HashMap<String, Bitmap> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.dynamicImage = hashMap;
    }

    public final HashMap<String, String> getDynamicText$library_release() {
        return this.dynamicText;
    }

    public final void setDynamicText$library_release(HashMap<String, String> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.dynamicText = hashMap;
    }

    public final HashMap<String, TextPaint> getDynamicTextPaint$library_release() {
        return this.dynamicTextPaint;
    }

    public final void setDynamicTextPaint$library_release(HashMap<String, TextPaint> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.dynamicTextPaint = hashMap;
    }

    public final HashMap<String, StaticLayout> getDynamicStaticLayoutText$library_release() {
        return this.dynamicStaticLayoutText;
    }

    public final void setDynamicStaticLayoutText$library_release(HashMap<String, StaticLayout> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.dynamicStaticLayoutText = hashMap;
    }

    public final HashMap<String, BoringLayout> getDynamicBoringLayoutText$library_release() {
        return this.dynamicBoringLayoutText;
    }

    public final void setDynamicBoringLayoutText$library_release(HashMap<String, BoringLayout> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.dynamicBoringLayoutText = hashMap;
    }

    public final HashMap<String, Function2<Canvas, Integer, Boolean>> getDynamicDrawer$library_release() {
        return this.dynamicDrawer;
    }

    public final void setDynamicDrawer$library_release(HashMap<String, Function2<Canvas, Integer, Boolean>> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.dynamicDrawer = hashMap;
    }

    public final HashMap<String, int[]> getMClickMap$library_release() {
        return this.mClickMap;
    }

    public final void setMClickMap$library_release(HashMap<String, int[]> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.mClickMap = hashMap;
    }

    public final HashMap<String, IClickAreaListener> getDynamicIClickArea$library_release() {
        return this.dynamicIClickArea;
    }

    public final void setDynamicIClickArea$library_release(HashMap<String, IClickAreaListener> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.dynamicIClickArea = hashMap;
    }

    public final HashMap<String, Function4<Canvas, Integer, Integer, Integer, Boolean>> getDynamicDrawerSized$library_release() {
        return this.dynamicDrawerSized;
    }

    public final void setDynamicDrawerSized$library_release(HashMap<String, Function4<Canvas, Integer, Integer, Integer, Boolean>> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.dynamicDrawerSized = hashMap;
    }

    public final boolean isTextDirty$library_release() {
        return this.isTextDirty;
    }

    public final void setTextDirty$library_release(boolean z) {
        this.isTextDirty = z;
    }

    public final void setHidden(boolean z, String forKey) {
        Intrinsics.checkParameterIsNotNull(forKey, "forKey");
        this.dynamicHidden.put(forKey, Boolean.valueOf(z));
    }

    public final void setDynamicImage(Bitmap bitmap, String forKey) {
        Intrinsics.checkParameterIsNotNull(bitmap, "bitmap");
        Intrinsics.checkParameterIsNotNull(forKey, "forKey");
        this.dynamicImage.put(forKey, bitmap);
    }

    public final void setDynamicImage(String url, String forKey) {
        Intrinsics.checkParameterIsNotNull(url, "url");
        Intrinsics.checkParameterIsNotNull(forKey, "forKey");
        SVGAParser.Companion.getThreadPoolExecutor$library_release().execute(new SVGADynamicEntity$setDynamicImage$1(this, url, new Handler(), forKey));
    }

    public final void setDynamicText(String text, TextPaint textPaint, String forKey) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(textPaint, "textPaint");
        Intrinsics.checkParameterIsNotNull(forKey, "forKey");
        this.isTextDirty = true;
        this.dynamicText.put(forKey, text);
        this.dynamicTextPaint.put(forKey, textPaint);
    }

    public final void setDynamicText(StaticLayout layoutText, String forKey) {
        Intrinsics.checkParameterIsNotNull(layoutText, "layoutText");
        Intrinsics.checkParameterIsNotNull(forKey, "forKey");
        this.isTextDirty = true;
        this.dynamicStaticLayoutText.put(forKey, layoutText);
    }

    public final void setDynamicText(BoringLayout layoutText, String forKey) {
        Intrinsics.checkParameterIsNotNull(layoutText, "layoutText");
        Intrinsics.checkParameterIsNotNull(forKey, "forKey");
        this.isTextDirty = true;
        if (BoringLayout.isBoring(layoutText.getText(), layoutText.getPaint()) != null) {
            this.dynamicBoringLayoutText.put(forKey, layoutText);
        }
    }

    public final void setDynamicDrawer(Function2<? super Canvas, ? super Integer, Boolean> drawer, String forKey) {
        Intrinsics.checkParameterIsNotNull(drawer, "drawer");
        Intrinsics.checkParameterIsNotNull(forKey, "forKey");
        this.dynamicDrawer.put(forKey, drawer);
    }

    public final void setClickArea(List<String> clickKey) {
        Intrinsics.checkParameterIsNotNull(clickKey, "clickKey");
        for (String str : clickKey) {
            this.dynamicIClickArea.put(str, new IClickAreaListener() { // from class: com.opensource.svgaplayer.SVGADynamicEntity$setClickArea$1
                @Override // com.opensource.svgaplayer.IClickAreaListener
                public void onResponseArea(String key, int i, int i2, int i3, int i4) {
                    Intrinsics.checkParameterIsNotNull(key, "key");
                    HashMap<String, int[]> mClickMap$library_release = SVGADynamicEntity.this.getMClickMap$library_release();
                    if (mClickMap$library_release.get(key) == null) {
                        mClickMap$library_release.put(key, new int[]{i, i2, i3, i4});
                        return;
                    }
                    int[] iArr = mClickMap$library_release.get(key);
                    if (iArr != null) {
                        iArr[0] = i;
                        iArr[1] = i2;
                        iArr[2] = i3;
                        iArr[3] = i4;
                    }
                }
            });
        }
    }

    public final void setClickArea(String clickKey) {
        Intrinsics.checkParameterIsNotNull(clickKey, "clickKey");
        this.dynamicIClickArea.put(clickKey, new IClickAreaListener() { // from class: com.opensource.svgaplayer.SVGADynamicEntity$setClickArea$2
            @Override // com.opensource.svgaplayer.IClickAreaListener
            public void onResponseArea(String key, int i, int i2, int i3, int i4) {
                Intrinsics.checkParameterIsNotNull(key, "key");
                HashMap<String, int[]> mClickMap$library_release = SVGADynamicEntity.this.getMClickMap$library_release();
                if (mClickMap$library_release.get(key) == null) {
                    mClickMap$library_release.put(key, new int[]{i, i2, i3, i4});
                    return;
                }
                int[] iArr = mClickMap$library_release.get(key);
                if (iArr != null) {
                    iArr[0] = i;
                    iArr[1] = i2;
                    iArr[2] = i3;
                    iArr[3] = i4;
                }
            }
        });
    }

    public final void setDynamicDrawerSized(Function4<? super Canvas, ? super Integer, ? super Integer, ? super Integer, Boolean> drawer, String forKey) {
        Intrinsics.checkParameterIsNotNull(drawer, "drawer");
        Intrinsics.checkParameterIsNotNull(forKey, "forKey");
        this.dynamicDrawerSized.put(forKey, drawer);
    }

    public final void clearDynamicObjects() {
        this.isTextDirty = true;
        this.dynamicHidden.clear();
        this.dynamicImage.clear();
        this.dynamicText.clear();
        this.dynamicTextPaint.clear();
        this.dynamicStaticLayoutText.clear();
        this.dynamicBoringLayoutText.clear();
        this.dynamicDrawer.clear();
        this.dynamicIClickArea.clear();
        this.mClickMap.clear();
        this.dynamicDrawerSized.clear();
    }
}
