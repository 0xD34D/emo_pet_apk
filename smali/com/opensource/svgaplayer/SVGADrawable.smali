.class public final Lcom/opensource/svgaplayer/SVGADrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SVGADrawable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGADrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGADrawable.kt\ncom/opensource/svgaplayer/SVGADrawable\n*L\n1#1,55:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010%\u001a\u00020\u000fH\u0016J\u0010\u0010&\u001a\u00020\"2\u0006\u0010\'\u001a\u00020\u000fH\u0016J\u0012\u0010(\u001a\u00020\"2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGADrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V",
        "dynamicItem",
        "Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V",
        "value",
        "",
        "cleared",
        "getCleared",
        "()Z",
        "setCleared$library_release",
        "(Z)V",
        "",
        "currentFrame",
        "getCurrentFrame",
        "()I",
        "setCurrentFrame$library_release",
        "(I)V",
        "drawer",
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;",
        "getDynamicItem",
        "()Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "scaleType",
        "Landroid/widget/ImageView$ScaleType;",
        "getScaleType",
        "()Landroid/widget/ImageView$ScaleType;",
        "setScaleType",
        "(Landroid/widget/ImageView$ScaleType;)V",
        "getVideoItem",
        "()Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getOpacity",
        "setAlpha",
        "alpha",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
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
.field private cleared:Z

.field private currentFrame:I

.field private final drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

.field private final dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private final videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    return-void
.end method

.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .locals 1

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 34
    new-instance v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 37
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    iget v1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method public final getCleared()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    return v0
.end method

.method public final getCurrentFrame()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    return v0
.end method

.method public final getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setCleared$library_release(Z)V
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 19
    :cond_0
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 20
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final setCurrentFrame$library_release(I)V
    .locals 1

    .line 25
    iget v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    if-ne v0, p1, :cond_0

    return-void

    .line 28
    :cond_0
    iput p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    .line 29
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADrawable;->invalidateSelf()V

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method
