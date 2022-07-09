.class public final Lcom/opensource/svgaplayer/utils/SVGARange;
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/utils/SVGARange;",
        "",
        "location",
        "",
        "length",
        "(II)V",
        "getLength",
        "()I",
        "getLocation",
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
.field private final length:I

.field private final location:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/opensource/svgaplayer/utils/SVGARange;->location:I

    iput p2, p0, Lcom/opensource/svgaplayer/utils/SVGARange;->length:I

    return-void
.end method


# virtual methods
.method public final getLength()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/opensource/svgaplayer/utils/SVGARange;->length:I

    return v0
.end method

.method public final getLocation()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/opensource/svgaplayer/utils/SVGARange;->location:I

    return v0
.end method
