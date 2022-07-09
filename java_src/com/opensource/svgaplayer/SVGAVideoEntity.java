package com.opensource.svgaplayer;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Build;
import com.opensource.svgaplayer.entities.SVGAAudioEntity;
import com.opensource.svgaplayer.entities.SVGAVideoSpriteEntity;
import com.opensource.svgaplayer.proto.AudioEntity;
import com.opensource.svgaplayer.proto.MovieEntity;
import com.opensource.svgaplayer.proto.MovieParams;
import com.opensource.svgaplayer.proto.SpriteEntity;
import com.opensource.svgaplayer.utils.SVGARect;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import okio.ByteString;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: SVGAVideoEntity.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0017\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\b\u0010=\u001a\u00020>H\u0004J\u001b\u0010?\u001a\u00020>2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020>0AH\u0000¢\u0006\u0002\bBJ\u001e\u0010C\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u00072\f\u0010D\u001a\b\u0012\u0004\u0012\u00020>0AH\u0002J\u0010\u0010E\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u0007H\u0002J\u0010\u0010E\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010F\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u0007H\u0002J\u0010\u0010F\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\r\"\u0004\b\u001f\u0010\u000fR&\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0!X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010(\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R \u00103\u001a\b\u0012\u0004\u0012\u0002040\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u001a\"\u0004\b6\u0010\u001cR$\u00108\u001a\u0002072\u0006\u0010\t\u001a\u000207@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<¨\u0006G"}, m35d2 = {"Lcom/opensource/svgaplayer/SVGAVideoEntity;", "", "obj", "Lorg/json/JSONObject;", "cacheDir", "Ljava/io/File;", "(Lorg/json/JSONObject;Ljava/io/File;)V", "Lcom/opensource/svgaplayer/proto/MovieEntity;", "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;)V", "<set-?>", "", "FPS", "getFPS", "()I", "setFPS", "(I)V", "antiAlias", "", "getAntiAlias", "()Z", "setAntiAlias", "(Z)V", "audios", "", "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;", "getAudios$library_release", "()Ljava/util/List;", "setAudios$library_release", "(Ljava/util/List;)V", "frames", "getFrames", "setFrames", "images", "Ljava/util/HashMap;", "", "Landroid/graphics/Bitmap;", "getImages$library_release", "()Ljava/util/HashMap;", "setImages$library_release", "(Ljava/util/HashMap;)V", "movieItem", "getMovieItem", "()Lcom/opensource/svgaplayer/proto/MovieEntity;", "setMovieItem", "(Lcom/opensource/svgaplayer/proto/MovieEntity;)V", "soundPool", "Landroid/media/SoundPool;", "getSoundPool$library_release", "()Landroid/media/SoundPool;", "setSoundPool$library_release", "(Landroid/media/SoundPool;)V", "sprites", "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;", "getSprites$library_release", "setSprites$library_release", "Lcom/opensource/svgaplayer/utils/SVGARect;", "videoSize", "getVideoSize", "()Lcom/opensource/svgaplayer/utils/SVGARect;", "setVideoSize", "(Lcom/opensource/svgaplayer/utils/SVGARect;)V", "finalize", "", "prepare", "callback", "Lkotlin/Function0;", "prepare$library_release", "resetAudios", "completionBlock", "resetImages", "resetSprites", "library_release"}, m34k = 1, m33mv = {1, 1, 13})
/* loaded from: classes.dex */
public final class SVGAVideoEntity {
    private int FPS;
    private File cacheDir;
    private int frames;
    private MovieEntity movieItem;
    private SoundPool soundPool;
    private SVGARect videoSize;
    private boolean antiAlias = true;
    private List<SVGAVideoSpriteEntity> sprites = CollectionsKt.emptyList();
    private List<SVGAAudioEntity> audios = CollectionsKt.emptyList();
    private HashMap<String, Bitmap> images = new HashMap<>();

    protected final void finalize() {
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            soundPool.release();
        }
        this.soundPool = null;
        this.images.clear();
    }

    public final boolean getAntiAlias() {
        return this.antiAlias;
    }

    public final void setAntiAlias(boolean z) {
        this.antiAlias = z;
    }

    private final void setVideoSize(SVGARect sVGARect) {
        this.videoSize = sVGARect;
    }

    public final SVGARect getVideoSize() {
        return this.videoSize;
    }

    private final void setFPS(int i) {
        this.FPS = i;
    }

    public final int getFPS() {
        return this.FPS;
    }

    private final void setFrames(int i) {
        this.frames = i;
    }

    public final int getFrames() {
        return this.frames;
    }

    public final List<SVGAVideoSpriteEntity> getSprites$library_release() {
        return this.sprites;
    }

    public final void setSprites$library_release(List<SVGAVideoSpriteEntity> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.sprites = list;
    }

    public final List<SVGAAudioEntity> getAudios$library_release() {
        return this.audios;
    }

    public final void setAudios$library_release(List<SVGAAudioEntity> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.audios = list;
    }

    public final SoundPool getSoundPool$library_release() {
        return this.soundPool;
    }

    public final void setSoundPool$library_release(SoundPool soundPool) {
        this.soundPool = soundPool;
    }

    public final HashMap<String, Bitmap> getImages$library_release() {
        return this.images;
    }

    public final void setImages$library_release(HashMap<String, Bitmap> hashMap) {
        Intrinsics.checkParameterIsNotNull(hashMap, "<set-?>");
        this.images = hashMap;
    }

    public SVGAVideoEntity(JSONObject obj, File cacheDir) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        Intrinsics.checkParameterIsNotNull(cacheDir, "cacheDir");
        this.videoSize = new SVGARect(0.0d, 0.0d, 0.0d, 0.0d);
        this.FPS = 15;
        this.cacheDir = cacheDir;
        JSONObject optJSONObject = obj.optJSONObject("movie");
        if (optJSONObject != null) {
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("viewBox");
            if (optJSONObject2 != null) {
                this.videoSize = new SVGARect(0.0d, 0.0d, optJSONObject2.optDouble("width", 0.0d), optJSONObject2.optDouble("height", 0.0d));
            }
            this.FPS = optJSONObject.optInt("fps", 20);
            this.frames = optJSONObject.optInt("frames", 0);
        }
        try {
            resetImages(obj);
        } catch (Exception e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
        resetSprites(obj);
    }

    public final MovieEntity getMovieItem() {
        return this.movieItem;
    }

    public final void setMovieItem(MovieEntity movieEntity) {
        this.movieItem = movieEntity;
    }

    public SVGAVideoEntity(MovieEntity obj, File cacheDir) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        Intrinsics.checkParameterIsNotNull(cacheDir, "cacheDir");
        this.videoSize = new SVGARect(0.0d, 0.0d, 0.0d, 0.0d);
        this.FPS = 15;
        this.movieItem = obj;
        this.cacheDir = cacheDir;
        MovieParams movieParams = obj.params;
        if (movieParams != null) {
            Float f = movieParams.viewBoxWidth;
            float f2 = 0.0f;
            double floatValue = f != null ? f.floatValue() : 0.0f;
            Float f3 = movieParams.viewBoxHeight;
            this.videoSize = new SVGARect(0.0d, 0.0d, floatValue, f3 != null ? f3.floatValue() : f2);
            Integer num = movieParams.fps;
            this.FPS = num != null ? num.intValue() : 20;
            Integer num2 = movieParams.frames;
            this.frames = num2 != null ? num2.intValue() : 0;
        }
        try {
            resetImages(obj);
        } catch (Exception e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
        resetSprites(obj);
    }

    public final void prepare$library_release(Function0<Unit> callback) {
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        MovieEntity movieEntity = this.movieItem;
        if (movieEntity != null) {
            resetAudios(movieEntity, new SVGAVideoEntity$prepare$$inlined$let$lambda$1(this, callback));
        } else {
            callback.invoke();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00db, code lost:
        r1 = com.opensource.svgaplayer.SVGAVideoEntityKt.options;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void resetImages(JSONObject jSONObject) {
        BitmapFactory.Options options;
        Bitmap bitmap;
        Bitmap bitmap2;
        BitmapFactory.Options options2;
        Bitmap decodeFile;
        BitmapFactory.Options options3;
        BitmapFactory.Options options4;
        JSONObject optJSONObject = jSONObject.optJSONObject("images");
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            Intrinsics.checkExpressionValueIsNotNull(keys, "imgObjects.keys()");
            while (keys.hasNext()) {
                String imageKey = keys.next();
                options = SVGAVideoEntityKt.options;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                String str = this.cacheDir.getAbsolutePath() + "/" + optJSONObject.get(imageKey);
                String str2 = null;
                if (new File(str).exists()) {
                    options4 = SVGAVideoEntityKt.options;
                    bitmap = BitmapFactory.decodeFile(str, options4);
                } else {
                    bitmap = null;
                }
                Intrinsics.checkExpressionValueIsNotNull(imageKey, "imageKey");
                String replace$default = StringsKt.replace$default(imageKey, ".matte", "", false, 4, (Object) null);
                if (bitmap != null) {
                    this.images.put(replace$default, bitmap);
                } else {
                    String str3 = this.cacheDir.getAbsolutePath() + "/" + optJSONObject.get(imageKey) + ".png";
                    if (new File(str3).exists()) {
                        options3 = SVGAVideoEntityKt.options;
                        bitmap2 = BitmapFactory.decodeFile(str3, options3);
                    } else {
                        bitmap2 = null;
                    }
                    if (bitmap2 != null) {
                        this.images.put(replace$default, bitmap2);
                    } else {
                        String str4 = this.cacheDir.getAbsolutePath() + "/" + imageKey + ".png";
                        if (new File(str4).exists()) {
                            str2 = str4;
                        }
                        if (!(str2 == null || (decodeFile = BitmapFactory.decodeFile(str2, options2)) == null)) {
                            this.images.put(replace$default, decodeFile);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0100, code lost:
        r0 = com.opensource.svgaplayer.SVGAVideoEntityKt.options;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void resetImages(MovieEntity movieEntity) {
        Set<Map.Entry<String, ByteString>> entrySet;
        BitmapFactory.Options options;
        BitmapFactory.Options options2;
        Bitmap bitmap;
        BitmapFactory.Options options3;
        Bitmap decodeFile;
        BitmapFactory.Options options4;
        Map<String, ByteString> map = movieEntity.images;
        if (map != null && (entrySet = map.entrySet()) != null) {
            Iterator<T> it = entrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String imageKey = (String) entry.getKey();
                options = SVGAVideoEntityKt.options;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                byte[] byteArray = ((ByteString) entry.getValue()).toByteArray();
                Intrinsics.checkExpressionValueIsNotNull(byteArray, "byteArray");
                if (byteArray.length >= 4) {
                    List<Byte> slice = ArraysKt.slice(byteArray, new IntRange(0, 3));
                    if (slice.get(0).byteValue() != 73 || slice.get(1).byteValue() != 68 || slice.get(2).byteValue() != 51) {
                        int length = byteArray.length;
                        options2 = SVGAVideoEntityKt.options;
                        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, length, options2);
                        if (decodeByteArray != null) {
                            Intrinsics.checkExpressionValueIsNotNull(imageKey, "imageKey");
                            this.images.put(imageKey, decodeByteArray);
                        } else {
                            String utf8 = ((ByteString) entry.getValue()).utf8();
                            if (utf8 != null) {
                                String str = this.cacheDir.getAbsolutePath() + "/" + utf8;
                                String str2 = null;
                                if (new File(str).exists()) {
                                    options4 = SVGAVideoEntityKt.options;
                                    bitmap = BitmapFactory.decodeFile(str, options4);
                                } else {
                                    bitmap = null;
                                }
                                if (bitmap != null) {
                                    this.images.put(imageKey, bitmap);
                                } else {
                                    String str3 = this.cacheDir.getAbsolutePath() + "/" + imageKey + ".png";
                                    if (new File(str3).exists()) {
                                        str2 = str3;
                                    }
                                    if (!(str2 == null || (decodeFile = BitmapFactory.decodeFile(str2, options3)) == null)) {
                                        this.images.put(imageKey, decodeFile);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private final void resetSprites(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("sprites");
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    arrayList.add(new SVGAVideoSpriteEntity(optJSONObject));
                }
            }
        }
        this.sprites = CollectionsKt.toList(arrayList);
    }

    private final void resetSprites(MovieEntity movieEntity) {
        ArrayList arrayList;
        List<SpriteEntity> list = movieEntity.sprites;
        if (list != null) {
            List<SpriteEntity> list2 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            for (SpriteEntity it : list2) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                arrayList2.add(new SVGAVideoSpriteEntity(it));
            }
            arrayList = arrayList2;
        } else {
            arrayList = CollectionsKt.emptyList();
        }
        this.sprites = arrayList;
    }

    private final void resetAudios(final MovieEntity movieEntity, final Function0<Unit> function0) {
        SoundPool soundPool;
        Set<Map.Entry<String, ByteString>> entrySet;
        final List<AudioEntity> list = movieEntity.audios;
        if (list != null) {
            if (!(!list.isEmpty())) {
                list = null;
            }
            if (list != null) {
                final Ref.IntRef intRef = new Ref.IntRef();
                intRef.element = 0;
                if (Build.VERSION.SDK_INT >= 21) {
                    soundPool = new SoundPool.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(1).build()).setMaxStreams(Math.min(12, list.size())).build();
                } else {
                    soundPool = new SoundPool(Math.min(12, list.size()), 3, 0);
                }
                HashMap hashMap = new HashMap();
                soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener() { // from class: com.opensource.svgaplayer.SVGAVideoEntity$resetAudios$$inlined$let$lambda$1
                    @Override // android.media.SoundPool.OnLoadCompleteListener
                    public final void onLoadComplete(SoundPool soundPool2, int i, int i2) {
                        Ref.IntRef.this.element++;
                        if (Ref.IntRef.this.element >= list.size()) {
                            function0.invoke();
                        }
                    }
                });
                HashMap hashMap2 = new HashMap();
                Map<String, ByteString> map = movieEntity.images;
                if (!(map == null || (entrySet = map.entrySet()) == null)) {
                    Iterator<T> it = entrySet.iterator();
                    while (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        String imageKey = (String) entry.getKey();
                        byte[] byteArray = ((ByteString) entry.getValue()).toByteArray();
                        Intrinsics.checkExpressionValueIsNotNull(byteArray, "byteArray");
                        if (byteArray.length >= 4) {
                            List<Byte> slice = ArraysKt.slice(byteArray, new IntRange(0, 3));
                            if (slice.get(0).byteValue() == 73 && slice.get(1).byteValue() == 68 && slice.get(2).byteValue() == 51) {
                                Intrinsics.checkExpressionValueIsNotNull(imageKey, "imageKey");
                                hashMap2.put(imageKey, byteArray);
                            }
                        }
                    }
                }
                HashMap hashMap3 = hashMap2;
                if (hashMap3.size() > 0) {
                    for (Map.Entry entry2 : hashMap3.entrySet()) {
                        File tmpFile = File.createTempFile((String) entry2.getKey(), ".mp3");
                        FileOutputStream fileOutputStream = new FileOutputStream(tmpFile);
                        fileOutputStream.write((byte[]) entry2.getValue());
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        Object key = entry2.getKey();
                        Intrinsics.checkExpressionValueIsNotNull(tmpFile, "tmpFile");
                        hashMap.put(key, tmpFile);
                    }
                }
                List<AudioEntity> list2 = list;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                for (AudioEntity audio : list2) {
                    Intrinsics.checkExpressionValueIsNotNull(audio, "audio");
                    SVGAAudioEntity sVGAAudioEntity = new SVGAAudioEntity(audio);
                    File file = (File) hashMap.get(audio.audioKey);
                    if (file != null) {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        FileDescriptor fd = fileInputStream.getFD();
                        Integer num = audio.startTime;
                        double intValue = num != null ? num.intValue() : 0;
                        Integer num2 = audio.totalTime;
                        int intValue2 = num2 != null ? num2.intValue() : 0;
                        soundPool = soundPool;
                        hashMap = hashMap;
                        sVGAAudioEntity.setSoundID(Integer.valueOf(soundPool.load(fd, (long) ((intValue / intValue2) * fileInputStream.available()), fileInputStream.available(), 1)));
                        fileInputStream.close();
                    } else {
                        soundPool = soundPool;
                        hashMap = hashMap;
                    }
                    arrayList.add(sVGAAudioEntity);
                }
                this.audios = arrayList;
                this.soundPool = soundPool;
                return;
            }
        }
        function0.invoke();
    }
}
