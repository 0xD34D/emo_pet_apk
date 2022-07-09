.class public final Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ShapeEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/ShapeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity;",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ellipse:Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

.field public rect:Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

.field public shape:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

.field public styles:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;

.field public transform:Lcom/opensource/svgaplayer/proto/Transform;

.field public type:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/opensource/svgaplayer/proto/ShapeEntity;
    .locals 9

    .line 210
    new-instance v8, Lcom/opensource/svgaplayer/proto/ShapeEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->type:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->styles:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;

    iget-object v3, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    iget-object v4, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->shape:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    iget-object v5, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->rect:Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    iget-object v6, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->ellipse:Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/opensource/svgaplayer/proto/ShapeEntity;-><init>(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;Lcom/opensource/svgaplayer/proto/Transform;Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;Lokio/ByteString;)V

    return-object v8
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->build()Lcom/opensource/svgaplayer/proto/ShapeEntity;

    move-result-object v0

    return-object v0
.end method

.method public ellipse(Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;)Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->ellipse:Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->shape:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    .line 204
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->rect:Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    return-object p0
.end method

.method public rect(Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;)Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->rect:Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->shape:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    .line 197
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->ellipse:Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    return-object p0
.end method

.method public shape(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;)Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->shape:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->rect:Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    .line 190
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->ellipse:Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    return-object p0
.end method

.method public styles(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;)Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->styles:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;

    return-object p0
.end method

.method public transform(Lcom/opensource/svgaplayer/proto/Transform;)Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    return-object p0
.end method

.method public type(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;)Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$Builder;->type:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    return-object p0
.end method
