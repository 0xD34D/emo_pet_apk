package com.opensource.svgaplayer;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.opensource.svgaplayer.SVGAParser;
import java.net.URL;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: SVGAImageView.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m35d2 = {"<anonymous>", "", "run", "com/opensource/svgaplayer/SVGAImageView$loadAttrs$2$1"}, m34k = 3, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
final class SVGAImageView$loadAttrs$$inlined$let$lambda$1 implements Runnable {
    final /* synthetic */ boolean $antiAlias$inlined;
    final /* synthetic */ boolean $autoPlay$inlined;
    final /* synthetic */ String $it;
    final /* synthetic */ SVGAParser $parser;
    final /* synthetic */ SVGAImageView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SVGAImageView$loadAttrs$$inlined$let$lambda$1(String str, SVGAParser sVGAParser, SVGAImageView sVGAImageView, boolean z, boolean z2) {
        this.$it = str;
        this.$parser = sVGAParser;
        this.this$0 = sVGAImageView;
        this.$antiAlias$inlined = z;
        this.$autoPlay$inlined = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SVGAParser.ParseCompletion parseCompletion = new SVGAParser.ParseCompletion() { // from class: com.opensource.svgaplayer.SVGAImageView$loadAttrs$$inlined$let$lambda$1.1
            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onError() {
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onComplete(final SVGAVideoEntity videoItem) {
                Intrinsics.checkParameterIsNotNull(videoItem, "videoItem");
                SVGAImageView$loadAttrs$$inlined$let$lambda$1.this.this$0.post(new Runnable() { // from class: com.opensource.svgaplayer.SVGAImageView$loadAttrs$.inlined.let.lambda.1.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        videoItem.setAntiAlias(SVGAImageView$loadAttrs$$inlined$let$lambda$1.this.$antiAlias$inlined);
                        SVGAImageView$loadAttrs$$inlined$let$lambda$1.this.this$0.setVideoItem(videoItem);
                        Drawable drawable = SVGAImageView$loadAttrs$$inlined$let$lambda$1.this.this$0.getDrawable();
                        if (!(drawable instanceof SVGADrawable)) {
                            drawable = null;
                        }
                        SVGADrawable sVGADrawable = (SVGADrawable) drawable;
                        if (sVGADrawable != null) {
                            ImageView.ScaleType scaleType = SVGAImageView$loadAttrs$$inlined$let$lambda$1.this.this$0.getScaleType();
                            Intrinsics.checkExpressionValueIsNotNull(scaleType, "scaleType");
                            sVGADrawable.setScaleType(scaleType);
                        }
                        if (SVGAImageView$loadAttrs$$inlined$let$lambda$1.this.$autoPlay$inlined) {
                            SVGAImageView$loadAttrs$$inlined$let$lambda$1.this.this$0.startAnimation();
                        }
                    }
                });
            }
        };
        if (StringsKt.startsWith$default(this.$it, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(this.$it, "https://", false, 2, (Object) null)) {
            this.$parser.parse(new URL(this.$it), parseCompletion);
        } else {
            this.$parser.parse(this.$it, parseCompletion);
        }
    }
}
