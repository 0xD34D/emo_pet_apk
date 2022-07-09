.class public final Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;
.super Ljava/lang/Object;
.source "SVGACanvasDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareValues"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;",
        "",
        "()V",
        "shareMatteCanvas",
        "Landroid/graphics/Canvas;",
        "shareMattePaint",
        "Landroid/graphics/Paint;",
        "sharedMatrix",
        "Landroid/graphics/Matrix;",
        "sharedMatrix2",
        "sharedMatteBitmap",
        "Landroid/graphics/Bitmap;",
        "sharedPaint",
        "sharedPath",
        "Landroid/graphics/Path;",
        "sharedPath2",
        "width",
        "",
        "height",
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
.field private shareMatteCanvas:Landroid/graphics/Canvas;

.field private final shareMattePaint:Landroid/graphics/Paint;

.field private final sharedMatrix:Landroid/graphics/Matrix;

.field private final sharedMatrix2:Landroid/graphics/Matrix;

.field private sharedMatteBitmap:Landroid/graphics/Bitmap;

.field private final sharedPaint:Landroid/graphics/Paint;

.field private final sharedPath:Landroid/graphics/Path;

.field private final sharedPath2:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint:Landroid/graphics/Paint;

    .line 462
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath:Landroid/graphics/Path;

    .line 463
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2:Landroid/graphics/Path;

    .line 464
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix:Landroid/graphics/Matrix;

    .line 465
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2:Landroid/graphics/Matrix;

    .line 467
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final shareMatteCanvas(II)Landroid/graphics/Canvas;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMatteCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 507
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap:Landroid/graphics/Bitmap;

    .line 513
    :cond_0
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public final shareMattePaint()Landroid/graphics/Paint;
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 498
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final sharedMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 488
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final sharedMatrix2()Landroid/graphics/Matrix;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 493
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final sharedMatteBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.graphics.Bitmap"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sharedPaint()Landroid/graphics/Paint;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 473
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final sharedPath()Landroid/graphics/Path;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 478
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public final sharedPath2()Landroid/graphics/Path;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 483
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2:Landroid/graphics/Path;

    return-object v0
.end method
