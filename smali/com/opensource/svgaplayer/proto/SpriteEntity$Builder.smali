.class public final Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SpriteEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/SpriteEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/SpriteEntity;",
        "Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/proto/FrameEntity;",
            ">;"
        }
    .end annotation
.end field

.field public imageKey:Ljava/lang/String;

.field public matteKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 119
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->frames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/opensource/svgaplayer/proto/SpriteEntity;
    .locals 5

    .line 149
    new-instance v0, Lcom/opensource/svgaplayer/proto/SpriteEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->imageKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->frames:Ljava/util/List;

    iget-object v3, p0, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->matteKey:Ljava/lang/String;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/opensource/svgaplayer/proto/SpriteEntity;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->build()Lcom/opensource/svgaplayer/proto/SpriteEntity;

    move-result-object v0

    return-object v0
.end method

.method public frames(Ljava/util/List;)Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/proto/FrameEntity;",
            ">;)",
            "Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 135
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->frames:Ljava/util/List;

    return-object p0
.end method

.method public imageKey(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->imageKey:Ljava/lang/String;

    return-object p0
.end method

.method public matteKey(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/SpriteEntity$Builder;->matteKey:Ljava/lang/String;

    return-object p0
.end method
