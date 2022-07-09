.class public final Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AudioEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/AudioEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/AudioEntity;",
        "Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public audioKey:Ljava/lang/String;

.field public endFrame:Ljava/lang/Integer;

.field public startFrame:Ljava/lang/Integer;

.field public startTime:Ljava/lang/Integer;

.field public totalTime:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public audioKey(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->audioKey:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/opensource/svgaplayer/proto/AudioEntity;
    .locals 8

    .line 200
    new-instance v7, Lcom/opensource/svgaplayer/proto/AudioEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->audioKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->startFrame:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->endFrame:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->startTime:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->totalTime:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/opensource/svgaplayer/proto/AudioEntity;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;)V

    return-object v7
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->build()Lcom/opensource/svgaplayer/proto/AudioEntity;

    move-result-object v0

    return-object v0
.end method

.method public endFrame(Ljava/lang/Integer;)Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->endFrame:Ljava/lang/Integer;

    return-object p0
.end method

.method public startFrame(Ljava/lang/Integer;)Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->startFrame:Ljava/lang/Integer;

    return-object p0
.end method

.method public startTime(Ljava/lang/Integer;)Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->startTime:Ljava/lang/Integer;

    return-object p0
.end method

.method public totalTime(Ljava/lang/Integer;)Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/AudioEntity$Builder;->totalTime:Ljava/lang/Integer;

    return-object p0
.end method
