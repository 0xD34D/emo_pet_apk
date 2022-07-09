package com.opensource.svgaplayer;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.p007io.CloseableKt;
/* compiled from: SVGADynamicEntity.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m35d2 = {"<anonymous>", "", "run"}, m34k = 3, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
final class SVGADynamicEntity$setDynamicImage$1 implements Runnable {
    final /* synthetic */ String $forKey;
    final /* synthetic */ Handler $handler;
    final /* synthetic */ String $url;
    final /* synthetic */ SVGADynamicEntity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SVGADynamicEntity$setDynamicImage$1(SVGADynamicEntity sVGADynamicEntity, String str, Handler handler, String str2) {
        this.this$0 = sVGADynamicEntity;
        this.$url = str;
        this.$handler = handler;
        this.$forKey = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        URLConnection openConnection = new URL(this.$url).openConnection();
        if (!(openConnection instanceof HttpURLConnection)) {
            openConnection = null;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        if (httpURLConnection != null) {
            try {
                try {
                    httpURLConnection.setConnectTimeout(20000);
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.connect();
                    InputStream inputStream = httpURLConnection.getInputStream();
                    Throwable th = null;
                    try {
                        final Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                        if (decodeStream != null) {
                            Boolean.valueOf(this.$handler.post(new Runnable() { // from class: com.opensource.svgaplayer.SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.this$0.setDynamicImage(decodeStream, this.$forKey);
                                }
                            }));
                        }
                        CloseableKt.closeFinally(inputStream, th);
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(inputStream, th2);
                            throw th3;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    Unit unit = Unit.INSTANCE;
                }
                try {
                    httpURLConnection.disconnect();
                } catch (Throwable unused) {
                }
            } catch (Throwable th4) {
                try {
                    httpURLConnection.disconnect();
                } catch (Throwable unused2) {
                }
                throw th4;
            }
        }
    }
}
