.class public final Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ShapeEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;
    .locals 3

    .line 338
    new-instance v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;->d:Ljava/lang/String;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;->build()Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
