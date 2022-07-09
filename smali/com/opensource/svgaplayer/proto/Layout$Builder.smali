.class public final Lcom/opensource/svgaplayer/proto/Layout$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/Layout;",
        "Lcom/opensource/svgaplayer/proto/Layout$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public height:Ljava/lang/Float;

.field public width:Ljava/lang/Float;

.field public x:Ljava/lang/Float;

.field public y:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/opensource/svgaplayer/proto/Layout;
    .locals 7

    .line 150
    new-instance v6, Lcom/opensource/svgaplayer/proto/Layout;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->x:Ljava/lang/Float;

    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->y:Ljava/lang/Float;

    iget-object v3, p0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->width:Ljava/lang/Float;

    iget-object v4, p0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->height:Ljava/lang/Float;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/opensource/svgaplayer/proto/Layout;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-object v6
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Layout$Builder;->build()Lcom/opensource/svgaplayer/proto/Layout;

    move-result-object v0

    return-object v0
.end method

.method public height(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Layout$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->height:Ljava/lang/Float;

    return-object p0
.end method

.method public width(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Layout$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->width:Ljava/lang/Float;

    return-object p0
.end method

.method public x(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Layout$Builder;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->x:Ljava/lang/Float;

    return-object p0
.end method

.method public y(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Layout$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->y:Ljava/lang/Float;

    return-object p0
.end method
