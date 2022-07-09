.class public final Lcom/opensource/svgaplayer/proto/Transform$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/Transform;",
        "Lcom/opensource/svgaplayer/proto/Transform$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;

.field public tx:Ljava/lang/Float;

.field public ty:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->a:Ljava/lang/Float;

    return-object p0
.end method

.method public b(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->b:Ljava/lang/Float;

    return-object p0
.end method

.method public build()Lcom/opensource/svgaplayer/proto/Transform;
    .locals 9

    .line 190
    new-instance v8, Lcom/opensource/svgaplayer/proto/Transform;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->a:Ljava/lang/Float;

    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->b:Ljava/lang/Float;

    iget-object v3, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->c:Ljava/lang/Float;

    iget-object v4, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->d:Ljava/lang/Float;

    iget-object v5, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->tx:Ljava/lang/Float;

    iget-object v6, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->ty:Ljava/lang/Float;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/opensource/svgaplayer/proto/Transform;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-object v8
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Transform$Builder;->build()Lcom/opensource/svgaplayer/proto/Transform;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->c:Ljava/lang/Float;

    return-object p0
.end method

.method public d(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->d:Ljava/lang/Float;

    return-object p0
.end method

.method public tx(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->tx:Ljava/lang/Float;

    return-object p0
.end method

.method public ty(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/Transform$Builder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Transform$Builder;->ty:Ljava/lang/Float;

    return-object p0
.end method
