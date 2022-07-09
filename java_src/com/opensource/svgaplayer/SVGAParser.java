package com.opensource.svgaplayer;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.http.HttpResponseCache;
import android.os.Handler;
import android.util.Log;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.proto.MovieEntity;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.zip.Inflater;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.p007io.CloseableKt;
import kotlin.text.StringsKt;
import org.json.JSONObject;
/* compiled from: SVGAParser.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 02\u00020\u0001:\u0003012B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u001a\u0010\u0018\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J*\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u001c\u001a\u00020\u001dJ \u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u001f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0012\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020!H\u0002J\u000e\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u0003J\u001a\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020'2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u001a\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020*2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002J\u0010\u0010+\u001a\u00020\u001d2\u0006\u0010\r\u001a\u00020\u000eH\u0002J,\u0010,\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u001c\u001a\u00020\u001dH\u0007J\u001a\u0010,\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\u001a\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\u0012\u0010.\u001a\u0004\u0018\u00010!2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0018\u0010/\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00063"}, m35d2 = {"Lcom/opensource/svgaplayer/SVGAParser;", "", "mContext", "Landroid/content/Context;", "(Landroid/content/Context;)V", "fileDownloader", "Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;", "getFileDownloader", "()Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;", "setFileDownloader", "(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;)V", "buildCacheDir", "Ljava/io/File;", "cacheKey", "", "buildCacheKey", "url", "Ljava/net/URL;", "str", "decodeFromAssets", "", "name", "callback", "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "decodeFromCacheKey", "decodeFromInputStream", "inputStream", "Ljava/io/InputStream;", "closeInputStream", "", "decodeFromURL", "Lkotlin/Function0;", "inflate", "", "byteArray", "init", "context", "invokeCompleteCallback", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "invokeErrorCallback", "e", "Ljava/lang/Exception;", "isCached", "parse", "assetsName", "readAsBytes", "unzip", "Companion", "FileDownloader", "ParseCompletion", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGAParser {
    private FileDownloader fileDownloader = new FileDownloader();
    private Context mContext;
    public static final Companion Companion = new Companion(null);
    private static ExecutorService threadPoolExecutor = Executors.newCachedThreadPool();
    private static SVGAParser mShareParser = new SVGAParser(null);

    /* compiled from: SVGAParser.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, m35d2 = {"Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "", "onComplete", "", "videoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "onError", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public interface ParseCompletion {
        void onComplete(SVGAVideoEntity sVGAVideoEntity);

        void onError();
    }

    public SVGAParser(Context context) {
        this.mContext = context;
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J`\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\r2!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u000b0\u000f2%\u0010\u0014\u001a!\u0012\u0017\u0012\u00150\u0015j\u0002`\u0016¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0017\u0012\u0004\u0012\u00020\u000b0\u000fH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0018"}, m35d2 = {"Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;", "", "()V", "noCache", "", "getNoCache", "()Z", "setNoCache", "(Z)V", "resume", "Lkotlin/Function0;", "", "url", "Ljava/net/URL;", "complete", "Lkotlin/Function1;", "Ljava/io/InputStream;", "Lkotlin/ParameterName;", "name", "inputStream", "failure", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public static class FileDownloader {
        private boolean noCache;

        public final boolean getNoCache() {
            return this.noCache;
        }

        public final void setNoCache(boolean z) {
            this.noCache = z;
        }

        public Function0<Unit> resume(final URL url, final Function1<? super InputStream, Unit> complete, final Function1<? super Exception, Unit> failure) {
            Intrinsics.checkParameterIsNotNull(url, "url");
            Intrinsics.checkParameterIsNotNull(complete, "complete");
            Intrinsics.checkParameterIsNotNull(failure, "failure");
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            booleanRef.element = false;
            SVGAParser$FileDownloader$resume$cancelBlock$1 sVGAParser$FileDownloader$resume$cancelBlock$1 = new SVGAParser$FileDownloader$resume$cancelBlock$1(booleanRef);
            SVGAParser.Companion.getThreadPoolExecutor$library_release().execute(new Runnable() { // from class: com.opensource.svgaplayer.SVGAParser$FileDownloader$resume$1
                @Override // java.lang.Runnable
                public final void run() {
                    int read;
                    try {
                        if (HttpResponseCache.getInstalled() == null && !SVGAParser.FileDownloader.this.getNoCache()) {
                            Log.e("SVGAParser", "SVGAParser can not handle cache before install HttpResponseCache. see https://github.com/yyued/SVGAPlayer-Android#cache");
                            Log.e("SVGAParser", "在配置 HttpResponseCache 前 SVGAParser 无法缓存. 查看 https://github.com/yyued/SVGAPlayer-Android#cache ");
                        }
                        URLConnection openConnection = url.openConnection();
                        if (!(openConnection instanceof HttpURLConnection)) {
                            openConnection = null;
                        }
                        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                        if (httpURLConnection != null) {
                            httpURLConnection.setConnectTimeout(20000);
                            httpURLConnection.setRequestMethod("GET");
                            httpURLConnection.connect();
                            ByteArrayOutputStream inputStream = httpURLConnection.getInputStream();
                            th = null;
                            InputStream inputStream2 = inputStream;
                            inputStream = new ByteArrayOutputStream();
                            Throwable th = null;
                            try {
                                ByteArrayOutputStream byteArrayOutputStream = inputStream;
                                byte[] bArr = new byte[4096];
                                while (!booleanRef.element && (read = inputStream2.read(bArr, 0, 4096)) != -1) {
                                    byteArrayOutputStream.write(bArr, 0, read);
                                }
                                if (booleanRef.element) {
                                    CloseableKt.closeFinally(inputStream, th);
                                    return;
                                }
                                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                                Throwable th2 = null;
                                complete.invoke(byteArrayInputStream);
                                Unit unit = Unit.INSTANCE;
                                CloseableKt.closeFinally(byteArrayInputStream, th2);
                                Unit unit2 = Unit.INSTANCE;
                                CloseableKt.closeFinally(inputStream, th);
                                Unit unit3 = Unit.INSTANCE;
                            } catch (Throwable th3) {
                                try {
                                    throw th3;
                                } finally {
                                    CloseableKt.closeFinally(inputStream, th3);
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        failure.invoke(e);
                    }
                }
            });
            return sVGAParser$FileDownloader$resume$cancelBlock$1;
        }
    }

    public final FileDownloader getFileDownloader() {
        return this.fileDownloader;
    }

    public final void setFileDownloader(FileDownloader fileDownloader) {
        Intrinsics.checkParameterIsNotNull(fileDownloader, "<set-?>");
        this.fileDownloader = fileDownloader;
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0011"}, m35d2 = {"Lcom/opensource/svgaplayer/SVGAParser$Companion;", "", "()V", "mShareParser", "Lcom/opensource/svgaplayer/SVGAParser;", "threadPoolExecutor", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "getThreadPoolExecutor$library_release", "()Ljava/util/concurrent/ExecutorService;", "setThreadPoolExecutor$library_release", "(Ljava/util/concurrent/ExecutorService;)V", "setThreadPoolExecutor", "", "executor", "Ljava/util/concurrent/ThreadPoolExecutor;", "shareParser", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ExecutorService getThreadPoolExecutor$library_release() {
            return SVGAParser.threadPoolExecutor;
        }

        public final void setThreadPoolExecutor$library_release(ExecutorService executorService) {
            SVGAParser.threadPoolExecutor = executorService;
        }

        public final void setThreadPoolExecutor(ThreadPoolExecutor executor) {
            Intrinsics.checkParameterIsNotNull(executor, "executor");
            setThreadPoolExecutor$library_release(executor);
        }

        public final SVGAParser shareParser() {
            return SVGAParser.mShareParser;
        }
    }

    public final void init(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.mContext = context;
    }

    public final void decodeFromAssets(String name, ParseCompletion parseCompletion) {
        AssetManager assets;
        InputStream open;
        Intrinsics.checkParameterIsNotNull(name, "name");
        if (this.mContext == null) {
            Log.e("SVGAParser", "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
        }
        try {
            Context context = this.mContext;
            if (context != null && (assets = context.getAssets()) != null && (open = assets.open(name)) != null) {
                decodeFromInputStream(open, buildCacheKey("file:///assets/" + name), parseCompletion, true);
            }
        } catch (Exception e) {
            invokeErrorCallback(e, parseCompletion);
        }
    }

    public final Function0<Unit> decodeFromURL(final URL url, final ParseCompletion parseCompletion) {
        Intrinsics.checkParameterIsNotNull(url, "url");
        if (!isCached(buildCacheKey(url))) {
            return this.fileDownloader.resume(url, new SVGAParser$decodeFromURL$2(this, url, parseCompletion), new SVGAParser$decodeFromURL$3(this, parseCompletion));
        }
        threadPoolExecutor.execute(new Runnable() { // from class: com.opensource.svgaplayer.SVGAParser$decodeFromURL$1
            @Override // java.lang.Runnable
            public final void run() {
                String buildCacheKey;
                SVGAParser sVGAParser = SVGAParser.this;
                buildCacheKey = sVGAParser.buildCacheKey(url);
                sVGAParser.decodeFromCacheKey(buildCacheKey, parseCompletion);
            }
        });
        return null;
    }

    public static /* synthetic */ void decodeFromInputStream$default(SVGAParser sVGAParser, InputStream inputStream, String str, ParseCompletion parseCompletion, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        sVGAParser.decodeFromInputStream(inputStream, str, parseCompletion, z);
    }

    public final void decodeFromInputStream(InputStream inputStream, String cacheKey, ParseCompletion parseCompletion, boolean z) {
        Intrinsics.checkParameterIsNotNull(inputStream, "inputStream");
        Intrinsics.checkParameterIsNotNull(cacheKey, "cacheKey");
        threadPoolExecutor.execute(new SVGAParser$decodeFromInputStream$1(this, inputStream, cacheKey, parseCompletion, z));
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromAssets(assetsName, callback)", imports = {}))
    public final void parse(String assetsName, ParseCompletion parseCompletion) {
        Intrinsics.checkParameterIsNotNull(assetsName, "assetsName");
        decodeFromAssets(assetsName, parseCompletion);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromURL(url, callback)", imports = {}))
    public final void parse(URL url, ParseCompletion parseCompletion) {
        Intrinsics.checkParameterIsNotNull(url, "url");
        decodeFromURL(url, parseCompletion);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromInputStream(inputStream, cacheKey, callback, closeInputStream)", imports = {}))
    public static /* synthetic */ void parse$default(SVGAParser sVGAParser, InputStream inputStream, String str, ParseCompletion parseCompletion, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        sVGAParser.parse(inputStream, str, parseCompletion, z);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromInputStream(inputStream, cacheKey, callback, closeInputStream)", imports = {}))
    public final void parse(InputStream inputStream, String cacheKey, ParseCompletion parseCompletion, boolean z) {
        Intrinsics.checkParameterIsNotNull(inputStream, "inputStream");
        Intrinsics.checkParameterIsNotNull(cacheKey, "cacheKey");
        decodeFromInputStream(inputStream, cacheKey, parseCompletion, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invokeCompleteCallback(final SVGAVideoEntity sVGAVideoEntity, final ParseCompletion parseCompletion) {
        if (this.mContext == null) {
            Log.e("SVGAParser", "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
        }
        Context context = this.mContext;
        new Handler(context != null ? context.getMainLooper() : null).post(new Runnable() { // from class: com.opensource.svgaplayer.SVGAParser$invokeCompleteCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                SVGAParser.ParseCompletion parseCompletion2 = SVGAParser.ParseCompletion.this;
                if (parseCompletion2 != null) {
                    parseCompletion2.onComplete(sVGAVideoEntity);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invokeErrorCallback(Exception exc, final ParseCompletion parseCompletion) {
        exc.printStackTrace();
        if (this.mContext == null) {
            Log.e("SVGAParser", "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
        }
        Context context = this.mContext;
        new Handler(context != null ? context.getMainLooper() : null).post(new Runnable() { // from class: com.opensource.svgaplayer.SVGAParser$invokeErrorCallback$1
            @Override // java.lang.Runnable
            public final void run() {
                SVGAParser.ParseCompletion parseCompletion2 = SVGAParser.ParseCompletion.this;
                if (parseCompletion2 != null) {
                    parseCompletion2.onError();
                }
            }
        });
    }

    private final boolean isCached(String str) {
        return buildCacheDir(str).exists();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void decodeFromCacheKey(String str, ParseCompletion parseCompletion) {
        File cacheDir;
        if (this.mContext == null) {
            Log.e("SVGAParser", "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
        }
        try {
            StringBuilder sb = new StringBuilder();
            Context context = this.mContext;
            sb.append((context == null || (cacheDir = context.getCacheDir()) == null) ? null : cacheDir.getAbsolutePath());
            sb.append("/");
            sb.append(str);
            sb.append("/");
            File file = new File(sb.toString());
            File file2 = new File(file, "movie.binary");
            if (!file2.isFile()) {
                file2 = null;
            }
            if (file2 != null) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file2);
                    Throwable th = null;
                    MovieEntity decode = MovieEntity.ADAPTER.decode(fileInputStream);
                    Intrinsics.checkExpressionValueIsNotNull(decode, "MovieEntity.ADAPTER.decode(it)");
                    invokeCompleteCallback(new SVGAVideoEntity(decode, file), parseCompletion);
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileInputStream, th);
                } catch (Exception e) {
                    file.delete();
                    file2.delete();
                    throw e;
                }
            }
            File file3 = new File(file, "movie.spec");
            if (!file3.isFile()) {
                file3 = null;
            }
            if (file3 != null) {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(file3);
                    Throwable th2 = null;
                    FileInputStream fileInputStream3 = fileInputStream2;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    Throwable th3 = null;
                    ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int read = fileInputStream3.read(bArr, 0, 2048);
                        if (read == -1) {
                            invokeCompleteCallback(new SVGAVideoEntity(new JSONObject(byteArrayOutputStream2.toString()), file), parseCompletion);
                            Unit unit2 = Unit.INSTANCE;
                            CloseableKt.closeFinally(byteArrayOutputStream, th3);
                            Unit unit3 = Unit.INSTANCE;
                            CloseableKt.closeFinally(fileInputStream2, th2);
                            return;
                        }
                        byteArrayOutputStream2.write(bArr, 0, read);
                    }
                } catch (Exception e2) {
                    file.delete();
                    file3.delete();
                    throw e2;
                }
            }
        } catch (Exception e3) {
            invokeErrorCallback(e3, parseCompletion);
        }
    }

    private final String buildCacheKey(String str) {
        MessageDigest instance = MessageDigest.getInstance("MD5");
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(charsetName)");
        if (str != null) {
            byte[] bytes = str.getBytes(forName);
            Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
            instance.update(bytes);
            byte[] digest = instance.digest();
            String str2 = "";
            for (byte b : digest) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
                sb.append(format);
                str2 = sb.toString();
            }
            return str2;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String buildCacheKey(URL url) {
        String url2 = url.toString();
        Intrinsics.checkExpressionValueIsNotNull(url2, "url.toString()");
        return buildCacheKey(url2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File buildCacheDir(String str) {
        File cacheDir;
        StringBuilder sb = new StringBuilder();
        Context context = this.mContext;
        sb.append((context == null || (cacheDir = context.getCacheDir()) == null) ? null : cacheDir.getAbsolutePath());
        sb.append("/");
        sb.append(str);
        sb.append("/");
        return new File(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] readAsBytes(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        th = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
            byte[] bArr = new byte[2048];
            while (true) {
                int read = inputStream.read(bArr, 0, 2048);
                if (read <= 0) {
                    return byteArrayOutputStream2.toByteArray();
                }
                byteArrayOutputStream2.write(bArr, 0, read);
            }
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] inflate(byte[] bArr) {
        Inflater inflater = new Inflater();
        inflater.setInput(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[2048];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        th = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = byteArrayOutputStream;
            while (true) {
                int inflate = inflater.inflate(bArr2, 0, 2048);
                if (inflate <= 0) {
                    inflater.end();
                    return byteArrayOutputStream2.toByteArray();
                }
                byteArrayOutputStream2.write(bArr2, 0, inflate);
            }
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Finally extract failed */
    public final void unzip(InputStream inputStream, String str) {
        int i;
        i = SVGAParserKt.fileLock;
        synchronized (Integer.valueOf(i)) {
            File buildCacheDir = buildCacheDir(str);
            buildCacheDir.mkdirs();
            try {
                FileOutputStream bufferedInputStream = new BufferedInputStream(inputStream);
                Throwable th = null;
                try {
                    ZipInputStream zipInputStream = new ZipInputStream(bufferedInputStream);
                    Throwable th2 = null;
                    ZipInputStream zipInputStream2 = zipInputStream;
                    while (true) {
                        ZipEntry nextEntry = zipInputStream2.getNextEntry();
                        if (nextEntry != null) {
                            String name = nextEntry.getName();
                            Intrinsics.checkExpressionValueIsNotNull(name, "zipItem.name");
                            if (!StringsKt.contains$default((CharSequence) name, (CharSequence) "/", false, 2, (Object) null)) {
                                bufferedInputStream = new FileOutputStream(new File(buildCacheDir, nextEntry.getName()));
                                Throwable th3 = null;
                                try {
                                    FileOutputStream fileOutputStream = bufferedInputStream;
                                    byte[] bArr = new byte[2048];
                                    while (true) {
                                        int read = zipInputStream2.read(bArr);
                                        if (read <= 0) {
                                            break;
                                        }
                                        fileOutputStream.write(bArr, 0, read);
                                    }
                                    Unit unit = Unit.INSTANCE;
                                    CloseableKt.closeFinally(bufferedInputStream, th3);
                                    zipInputStream2.closeEntry();
                                } finally {
                                    try {
                                        throw th;
                                    } catch (Throwable th4) {
                                    }
                                }
                            }
                        } else {
                            Unit unit2 = Unit.INSTANCE;
                            CloseableKt.closeFinally(zipInputStream, th2);
                            Unit unit3 = Unit.INSTANCE;
                            CloseableKt.closeFinally(bufferedInputStream, th);
                            Unit unit4 = Unit.INSTANCE;
                        }
                    }
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th42) {
                        CloseableKt.closeFinally(bufferedInputStream, th);
                    }
                }
            } catch (Exception e) {
                buildCacheDir.delete();
                throw e;
            }
        }
    }
}
