.class public final Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MovieEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/MovieEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/MovieEntity;",
        "Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/proto/AudioEntity;",
            ">;"
        }
    .end annotation
.end field

.field public images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public params:Lcom/opensource/svgaplayer/proto/MovieParams;

.field public sprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/proto/SpriteEntity;",
            ">;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 152
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->images:Ljava/util/Map;

    .line 153
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->sprites:Ljava/util/List;

    .line 154
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->audios:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public audios(Ljava/util/List;)Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/proto/AudioEntity;",
            ">;)",
            "Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;"
        }
    .end annotation

    .line 195
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 196
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->audios:Ljava/util/List;

    return-object p0
.end method

.method public build()Lcom/opensource/svgaplayer/proto/MovieEntity;
    .locals 8

    .line 202
    new-instance v7, Lcom/opensource/svgaplayer/proto/MovieEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->params:Lcom/opensource/svgaplayer/proto/MovieParams;

    iget-object v3, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->images:Ljava/util/Map;

    iget-object v4, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->sprites:Ljava/util/List;

    iget-object v5, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->audios:Ljava/util/List;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/opensource/svgaplayer/proto/MovieEntity;-><init>(Ljava/lang/String;Lcom/opensource/svgaplayer/proto/MovieParams;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v7
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->build()Lcom/opensource/svgaplayer/proto/MovieEntity;

    move-result-object v0

    return-object v0
.end method

.method public images(Ljava/util/Map;)Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ">;)",
            "Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;"
        }
    .end annotation

    .line 177
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    .line 178
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->images:Ljava/util/Map;

    return-object p0
.end method

.method public params(Lcom/opensource/svgaplayer/proto/MovieParams;)Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->params:Lcom/opensource/svgaplayer/proto/MovieParams;

    return-object p0
.end method

.method public sprites(Ljava/util/List;)Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/proto/SpriteEntity;",
            ">;)",
            "Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;"
        }
    .end annotation

    .line 186
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 187
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->sprites:Ljava/util/List;

    return-object p0
.end method

.method public version(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/MovieEntity$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
