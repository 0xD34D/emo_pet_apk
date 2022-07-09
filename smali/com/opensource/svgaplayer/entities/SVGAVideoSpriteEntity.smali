.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;
.super Ljava/lang/Object;
.source "SVGAVideoSpriteEntity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAVideoSpriteEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAVideoSpriteEntity.kt\ncom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1288#2:62\n1357#2,3:63\n*E\n*S KotlinDebug\n*F\n+ 1 SVGAVideoSpriteEntity.kt\ncom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity\n*L\n43#1:62\n43#1,3:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
        "",
        "obj",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "Lcom/opensource/svgaplayer/proto/SpriteEntity;",
        "(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V",
        "frames",
        "",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
        "getFrames",
        "()Ljava/util/List;",
        "imageKey",
        "",
        "getImageKey",
        "()Ljava/lang/String;",
        "matteKey",
        "getMatteKey",
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
.field private final frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final imageKey:Ljava/lang/String;

.field private final matteKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V
    .locals 5

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;->imageKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->imageKey:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;->matteKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->matteKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    check-cast v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    .line 43
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/SpriteEntity;->frames:Ljava/util/List;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 63
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 64
    check-cast v2, Lcom/opensource/svgaplayer/proto/FrameEntity;

    .line 44
    new-instance v3, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;-><init>(Lcom/opensource/svgaplayer/proto/FrameEntity;)V

    .line 45
    invoke-virtual {v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    .line 47
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->isKeep()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->setShapes(Ljava/util/List;)V

    .line 55
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_0

    .line 65
    :cond_1
    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->frames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imageKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->imageKey:Ljava/lang/String;

    const-string v0, "matteKey"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->matteKey:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v1, "frames"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 24
    new-instance v4, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-direct {v4, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;-><init>(Lorg/json/JSONObject;)V

    .line 25
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    .line 27
    invoke-virtual {v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->isKeep()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->setShapes(Ljava/util/List;)V

    .line 32
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->frames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->frames:Ljava/util/List;

    return-object v0
.end method

.method public final getImageKey()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatteKey()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->matteKey:Ljava/lang/String;

    return-object v0
.end method
