.class public final Lcom/opensource/svgaplayer/proto/MovieParams$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MovieParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/MovieParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/MovieParams;",
        "Lcom/opensource/svgaplayer/proto/MovieParams$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public fps:Ljava/lang/Integer;

.field public frames:Ljava/lang/Integer;

.field public viewBoxHeight:Ljava/lang/Float;

.field public viewBoxWidth:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/opensource/svgaplayer/proto/MovieParams;
    .locals 7

    .line 175
    new-instance v6, Lcom/opensource/svgaplayer/proto/MovieParams;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/MovieParams$Builder;->viewBoxWidth:Ljava/lang/Float;

    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/MovieParams$Builder;->viewBoxHeight:Ljava/lang/Float;

    iget-object v3, p0, Lcom/opensource/svgaplayer/proto/MovieParams$Builder;->fps:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/opensource/svgaplayer/proto/MovieParams$Builder;->frames:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/opensource/svgaplayer/proto/MovieParams;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;)V

    return-object v6
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/MovieParams$Builder;->build()Lcom/opensource/svgaplayer/proto/MovieParams;

    move-result-object v0

    return-object v0
.end method

.method public fps(Ljava/lang/Integer;)Lcom/opensource/svgaplayer/proto/MovieParams$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/MovieParams$Builder;->fps:Ljava/lang/Integer;

    return-object p0
.end method

.method public frames(Ljava/lang/Integer;)Lcom/opensource/svgaplayer/proto/MovieParams$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/MovieParams$Builder;->frames:Ljava/lang/Integer;

    return-object p0
.end method

.method public viewBoxHeight(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/MovieParams$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/MovieParams$Builder;->viewBoxHeight:Ljava/lang/Float;

    return-object p0
.end method

.method public viewBoxWidth(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/MovieParams$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/MovieParams$Builder;->viewBoxWidth:Ljava/lang/Float;

    return-object p0
.end method
