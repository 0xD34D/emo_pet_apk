.class public final Lcom/opensource/svgaplayer/SVGAVideoEntity;
.super Ljava/lang/Object;
.source "SVGAVideoEntity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAVideoEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAVideoEntity.kt\ncom/opensource/svgaplayer/SVGAVideoEntity\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,230:1\n31#2,2:231\n1561#3,2:233\n1288#3:235\n1357#3,3:236\n1561#3,2:239\n1288#3:243\n1357#3,3:244\n148#4,2:241\n*E\n*S KotlinDebug\n*F\n+ 1 SVGAVideoEntity.kt\ncom/opensource/svgaplayer/SVGAVideoEntity\n*L\n97#1,2:231\n124#1,2:233\n169#1:235\n169#1,3:236\n175#1,2:239\n175#1:243\n175#1,3:244\n175#1,2:241\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0017\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010=\u001a\u00020>H\u0004J\u001b\u0010?\u001a\u00020>2\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020>0AH\u0000\u00a2\u0006\u0002\u0008BJ\u001e\u0010C\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u00072\u000c\u0010D\u001a\u0008\u0012\u0004\u0012\u00020>0AH\u0002J\u0010\u0010E\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u0007H\u0002J\u0010\u0010E\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010F\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u0007H\u0002J\u0010\u0010F\u001a\u00020>2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R \u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\r\"\u0004\u0008\u001f\u0010\u000fR&\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0!X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010(\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001c\u0010-\u001a\u0004\u0018\u00010.X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R \u00103\u001a\u0008\u0012\u0004\u0012\u0002040\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u001a\"\u0004\u00086\u0010\u001cR$\u00108\u001a\u0002072\u0006\u0010\t\u001a\u000207@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<\u00a8\u0006G"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "",
        "obj",
        "Lorg/json/JSONObject;",
        "cacheDir",
        "Ljava/io/File;",
        "(Lorg/json/JSONObject;Ljava/io/File;)V",
        "Lcom/opensource/svgaplayer/proto/MovieEntity;",
        "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;)V",
        "<set-?>",
        "",
        "FPS",
        "getFPS",
        "()I",
        "setFPS",
        "(I)V",
        "antiAlias",
        "",
        "getAntiAlias",
        "()Z",
        "setAntiAlias",
        "(Z)V",
        "audios",
        "",
        "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
        "getAudios$library_release",
        "()Ljava/util/List;",
        "setAudios$library_release",
        "(Ljava/util/List;)V",
        "frames",
        "getFrames",
        "setFrames",
        "images",
        "Ljava/util/HashMap;",
        "",
        "Landroid/graphics/Bitmap;",
        "getImages$library_release",
        "()Ljava/util/HashMap;",
        "setImages$library_release",
        "(Ljava/util/HashMap;)V",
        "movieItem",
        "getMovieItem",
        "()Lcom/opensource/svgaplayer/proto/MovieEntity;",
        "setMovieItem",
        "(Lcom/opensource/svgaplayer/proto/MovieEntity;)V",
        "soundPool",
        "Landroid/media/SoundPool;",
        "getSoundPool$library_release",
        "()Landroid/media/SoundPool;",
        "setSoundPool$library_release",
        "(Landroid/media/SoundPool;)V",
        "sprites",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
        "getSprites$library_release",
        "setSprites$library_release",
        "Lcom/opensource/svgaplayer/utils/SVGARect;",
        "videoSize",
        "getVideoSize",
        "()Lcom/opensource/svgaplayer/utils/SVGARect;",
        "setVideoSize",
        "(Lcom/opensource/svgaplayer/utils/SVGARect;)V",
        "finalize",
        "",
        "prepare",
        "callback",
        "Lkotlin/Function0;",
        "prepare$library_release",
        "resetAudios",
        "completionBlock",
        "resetImages",
        "resetSprites",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private FPS:I

.field private antiAlias:Z

.field private audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
            ">;"
        }
    .end annotation
.end field

.field private cacheDir:Ljava/io/File;

.field private frames:I

.field private images:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

.field private soundPool:Landroid/media/SoundPool;

.field private sprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
            ">;"
        }
    .end annotation
.end field

.field private videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;)V
    .locals 12

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    .line 33
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    const/16 v0, 0xf

    .line 36
    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->sprites:Ljava/util/List;

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audios:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    .line 70
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 71
    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->cacheDir:Ljava/io/File;

    .line 72
    iget-object p2, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->params:Lcom/opensource/svgaplayer/proto/MovieParams;

    if-eqz p2, :cond_4

    .line 73
    new-instance v9, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p2, Lcom/opensource/svgaplayer/proto/MovieParams;->viewBoxWidth:Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    float-to-double v6, v0

    .line 74
    iget-object v0, p2, Lcom/opensource/svgaplayer/proto/MovieParams;->viewBoxHeight:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :cond_1
    float-to-double v10, v5

    move-object v0, v9

    move-wide v5, v6

    move-wide v7, v10

    .line 73
    invoke-direct/range {v0 .. v8}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v9, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 75
    iget-object v0, p2, Lcom/opensource/svgaplayer/proto/MovieParams;->fps:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x14

    :goto_1
    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    .line 76
    iget-object p2, p2, Lcom/opensource/svgaplayer/proto/MovieParams;->frames:Ljava/lang/Integer;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    iput p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    .line 79
    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetImages(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 83
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p2

    .line 81
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :goto_3
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetSprites(Lcom/opensource/svgaplayer/proto/MovieEntity;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 13

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    .line 33
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    const/16 v0, 0xf

    .line 36
    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->sprites:Ljava/util/List;

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audios:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    .line 49
    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->cacheDir:Ljava/io/File;

    const-string p2, "movie"

    .line 50
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "viewBox"

    .line 51
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v10, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v1, "width"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v1, "height"

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    move-object v1, v10

    move-wide v6, v8

    move-wide v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v10, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    :cond_0
    const/16 v0, 0x14

    const-string v1, "fps"

    .line 54
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    const/4 v0, 0x0

    const-string v1, "frames"

    .line 55
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    .line 58
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetImages(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 62
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 60
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :goto_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetSprites(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final resetAudios(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 175
    iget-object v0, v7, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    if-eqz v0, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v8, 0x1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    if-eqz v9, :cond_a

    .line 176
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v10, 0x0

    iput v10, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v11, 0x3

    const/16 v3, 0xc

    if-lt v0, v2, :cond_1

    .line 178
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 179
    move-object v2, v9

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    .line 182
    :cond_1
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Landroid/media/SoundPool;

    invoke-direct {v2, v0, v11, v10}, Landroid/media/SoundPool;-><init>(III)V

    move-object v14, v2

    .line 184
    :goto_1
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 185
    new-instance v12, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;

    move-object v0, v12

    move-object v2, v9

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/proto/MovieEntity;)V

    check-cast v12, Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v14, v12}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    iget-object v1, v7, Lcom/opensource/svgaplayer/proto/MovieEntity;->images:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    .line 239
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 194
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    const-string v4, "byteArray"

    .line 195
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v2

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    goto :goto_2

    .line 198
    :cond_3
    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-direct {v4, v10, v11}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v2, v4}, Lkotlin/collections/ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v4

    .line 199
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    const/16 v7, 0x49

    if-ne v5, v7, :cond_2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    const/16 v7, 0x44

    if-ne v5, v7, :cond_2

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    const/16 v5, 0x33

    if-ne v4, v5, :cond_2

    .line 200
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    const-string v5, "imageKey"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 203
    :cond_4
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 241
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".mp3"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 206
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 207
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 208
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 209
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 210
    move-object v3, v15

    check-cast v3, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "tmpFile"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 213
    :cond_5
    check-cast v9, Ljava/lang/Iterable;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v9, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 244
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 245
    check-cast v2, Lcom/opensource/svgaplayer/proto/AudioEntity;

    .line 214
    new-instance v3, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    const-string v4, "audio"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;-><init>(Lcom/opensource/svgaplayer/proto/AudioEntity;)V

    .line 215
    iget-object v4, v2, Lcom/opensource/svgaplayer/proto/AudioEntity;->audioKey:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_8

    .line 216
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 217
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    iget-object v4, v2, Lcom/opensource/svgaplayer/proto/AudioEntity;->startTime:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_5

    :cond_6
    move v4, v10

    :goto_5
    int-to-double v7, v4

    .line 218
    iget-object v2, v2, Lcom/opensource/svgaplayer/proto/AudioEntity;->totalTime:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v10

    :goto_6
    int-to-double v11, v2

    div-double/2addr v7, v11

    .line 219
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v2

    int-to-double v11, v2

    mul-double/2addr v7, v11

    double-to-long v7, v7

    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v2

    int-to-long v11, v2

    const/16 v18, 0x1

    move-wide/from16 v16, v11

    move-object v12, v14

    move-object v2, v14

    move-object v4, v15

    move-wide v14, v7

    .line 217
    invoke-virtual/range {v12 .. v18}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setSoundID(Ljava/lang/Integer;)V

    .line 220
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    :cond_8
    move-object v2, v14

    move-object v4, v15

    .line 222
    :goto_7
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v14, v2

    move-object v15, v4

    goto :goto_4

    :cond_9
    move-object v2, v14

    .line 246
    check-cast v0, Ljava/util/List;

    iput-object v0, v6, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audios:Ljava/util/List;

    .line 224
    iput-object v2, v6, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    goto :goto_8

    .line 225
    :cond_a
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :goto_8
    return-void
.end method

.method private final resetImages(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    .locals 7

    .line 124
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->images:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    .line 233
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->access$getOptions$p()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    const-string v3, "byteArray"

    .line 128
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    new-instance v3, Lkotlin/ranges/IntRange;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v3

    .line 132
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    const/16 v6, 0x49

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    const/16 v6, 0x44

    if-ne v4, v6, :cond_2

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/16 v4, 0x33

    if-eq v3, v4, :cond_0

    .line 134
    :cond_2
    array-length v3, v2

    invoke-static {}, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->access$getOptions$p()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v2, v5, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 136
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    const-string v3, "imageKey"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->access$getOptions$p()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_5

    .line 142
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 144
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v4, v0

    :cond_6
    if-eqz v4, :cond_0

    .line 145
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->access$getOptions$p()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private final resetImages(Lorg/json/JSONObject;)V
    .locals 11

    const-string v0, "images"

    .line 97
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 98
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "imgObjects.keys()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->access$getOptions$p()Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->access$getOptions$p()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    const-string v2, "imageKey"

    .line 102
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, ".matte"

    const-string v4, ""

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v10, :cond_2

    .line 104
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->access$getOptions$p()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v9

    :goto_2
    if-eqz v3, :cond_4

    .line 110
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 112
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->cacheDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v9, v1

    :cond_5
    if-eqz v9, :cond_0

    .line 113
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->access$getOptions$p()Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private final resetSprites(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    .locals 4

    .line 169
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->sprites:Ljava/util/List;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 236
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 237
    check-cast v1, Lcom/opensource/svgaplayer/proto/SpriteEntity;

    .line 170
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;-><init>(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_0
    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 171
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->sprites:Ljava/util/List;

    return-void
.end method

.method private final resetSprites(Lorg/json/JSONObject;)V
    .locals 5

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v1, "sprites"

    .line 158
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 160
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    new-instance v4, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;

    invoke-direct {v4, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->sprites:Ljava/util/List;

    return-void
.end method

.method private final setFPS(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    return-void
.end method

.method private final setFrames(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    return-void
.end method

.method private final setVideoSize(Lcom/opensource/svgaplayer/utils/SVGARect;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 27
    check-cast v0, Landroid/media/SoundPool;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    .line 28
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getAntiAlias()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    return v0
.end method

.method public final getAudios$library_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audios:Ljava/util/List;

    return-object v0
.end method

.method public final getFPS()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    return v0
.end method

.method public final getFrames()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    return v0
.end method

.method public final getImages$library_release()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMovieItem()Lcom/opensource/svgaplayer/proto/MovieEntity;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    return-object v0
.end method

.method public final getSoundPool$library_release()Landroid/media/SoundPool;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public final getSprites$library_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->sprites:Ljava/util/List;

    return-object v0
.end method

.method public final getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    return-object v0
.end method

.method public final prepare$library_release(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$$inlined$let$lambda$1;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetAudios(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public final setAntiAlias(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    return-void
.end method

.method public final setAudios$library_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audios:Ljava/util/List;

    return-void
.end method

.method public final setImages$library_release(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->images:Ljava/util/HashMap;

    return-void
.end method

.method public final setMovieItem(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    return-void
.end method

.method public final setSoundPool$library_release(Landroid/media/SoundPool;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    return-void
.end method

.method public final setSprites$library_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->sprites:Ljava/util/List;

    return-void
.end method
