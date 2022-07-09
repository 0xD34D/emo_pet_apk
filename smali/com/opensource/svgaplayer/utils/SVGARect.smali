.class public final Lcom/opensource/svgaplayer/utils/SVGARect;
.super Ljava/lang/Object;
.source "SVGAStructs.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\n\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/utils/SVGARect;",
        "",
        "x",
        "",
        "y",
        "width",
        "height",
        "(DDDD)V",
        "getHeight",
        "()D",
        "getWidth",
        "getX",
        "getY",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final height:D

.field private final width:D

.field private final x:D

.field private final y:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->x:D

    iput-wide p3, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->y:D

    iput-wide p5, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->width:D

    iput-wide p7, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->height:D

    return-void
.end method


# virtual methods
.method public final getHeight()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->height:D

    return-wide v0
.end method

.method public final getWidth()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->width:D

    return-wide v0
.end method

.method public final getX()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->x:D

    return-wide v0
.end method

.method public final getY()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/opensource/svgaplayer/utils/SVGARect;->y:D

    return-wide v0
.end method
