.class public final Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ShapeEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public fill:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

.field public lineCap:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineCap;

.field public lineDashI:Ljava/lang/Float;

.field public lineDashII:Ljava/lang/Float;

.field public lineDashIII:Ljava/lang/Float;

.field public lineJoin:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

.field public miterLimit:Ljava/lang/Float;

.field public stroke:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

.field public strokeWidth:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1016
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;
    .locals 12

    .line 1093
    new-instance v11, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->fill:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    iget-object v2, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->stroke:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    iget-object v3, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->strokeWidth:Ljava/lang/Float;

    iget-object v4, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineCap:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineCap;

    iget-object v5, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineJoin:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    iget-object v6, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->miterLimit:Ljava/lang/Float;

    iget-object v7, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineDashI:Ljava/lang/Float;

    iget-object v8, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineDashII:Ljava/lang/Float;

    iget-object v9, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineDashIII:Ljava/lang/Float;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;-><init>(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;Ljava/lang/Float;Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineCap;Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-object v11
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 997
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->build()Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;

    move-result-object v0

    return-object v0
.end method

.method public fill(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
    .locals 0

    .line 1023
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->fill:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    return-object p0
.end method

.method public lineCap(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineCap;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
    .locals 0

    .line 1047
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineCap:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineCap;

    return-object p0
.end method

.method public lineDashI(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineDashI:Ljava/lang/Float;

    return-object p0
.end method

.method public lineDashII(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
    .locals 0

    .line 1079
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineDashII:Ljava/lang/Float;

    return-object p0
.end method

.method public lineDashIII(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineDashIII:Ljava/lang/Float;

    return-object p0
.end method

.method public lineJoin(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
    .locals 0

    .line 1055
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->lineJoin:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    return-object p0
.end method

.method public miterLimit(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->miterLimit:Ljava/lang/Float;

    return-object p0
.end method

.method public stroke(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->stroke:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    return-object p0
.end method

.method public strokeWidth(Ljava/lang/Float;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$Builder;->strokeWidth:Ljava/lang/Float;

    return-object p0
.end method
