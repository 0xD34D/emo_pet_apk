.class public final Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "FrameEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/FrameEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/FrameEntity;",
        "Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public alpha:Ljava/lang/Float;

.field public clipPath:Ljava/lang/String;

.field public layout:Lcom/opensource/svgaplayer/proto/Layout;

.field public shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/proto/ShapeEntity;",
            ">;"
        }
    .end annotation
.end field

.field public transform:Lcom/opensource/svgaplayer/proto/Transform;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 152
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->shapes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public alpha(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->alpha:Ljava/lang/Float;

    return-object p0
.end method

.method public build()Lcom/opensource/svgaplayer/proto/FrameEntity;
    .locals 8

    .line 198
    new-instance v7, Lcom/opensource/svgaplayer/proto/FrameEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->alpha:Ljava/lang/Float;

    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->layout:Lcom/opensource/svgaplayer/proto/Layout;

    iget-object v3, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    iget-object v4, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->clipPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->shapes:Ljava/util/List;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/opensource/svgaplayer/proto/FrameEntity;-><init>(Ljava/lang/Float;Lcom/opensource/svgaplayer/proto/Layout;Lcom/opensource/svgaplayer/proto/Transform;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v7
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->build()Lcom/opensource/svgaplayer/proto/FrameEntity;

    move-result-object v0

    return-object v0
.end method

.method public clipPath(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->clipPath:Ljava/lang/String;

    return-object p0
.end method

.method public layout(Lcom/opensource/svgaplayer/proto/Layout;)Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->layout:Lcom/opensource/svgaplayer/proto/Layout;

    return-object p0
.end method

.method public shapes(Ljava/util/List;)Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/proto/ShapeEntity;",
            ">;)",
            "Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;"
        }
    .end annotation

    .line 191
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 192
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->shapes:Ljava/util/List;

    return-object p0
.end method

.method public transform(Lcom/opensource/svgaplayer/proto/Transform;)Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/FrameEntity$Builder;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    return-object p0
.end method
