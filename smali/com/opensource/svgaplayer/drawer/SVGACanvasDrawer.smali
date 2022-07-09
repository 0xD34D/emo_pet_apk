.class public final Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;
.super Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.source "SVGACanvasDrawer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;,
        Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGACanvasDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGACanvasDrawer.kt\ncom/opensource/svgaplayer/drawer/SVGACanvasDrawer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 IntrinsicArrayConstructors.kt\norg/jetbrains/kotlin/codegen/intrinsics/IntrinsicArrayConstructorsKt\n*L\n1#1,543:1\n1570#2,3:544\n1570#2,3:552\n1570#2,3:560\n1561#2,2:563\n1561#2,2:565\n42#3,5:547\n42#3,5:555\n*E\n*S KotlinDebug\n*F\n+ 1 SVGACanvasDrawer.kt\ncom/opensource/svgaplayer/drawer/SVGACanvasDrawer\n*L\n48#1,3:544\n97#1,3:552\n127#1,3:560\n160#1,2:563\n328#1,2:565\n96#1,5:547\n126#1,5:555\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u000267B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J$\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J \u0010!\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0016J\u001c\u0010$\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u001c\u0010%\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J$\u0010&\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J,\u0010\'\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u000e2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010)\u001a\u00020*H\u0002J\"\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020 2\u0010\u0010-\u001a\u000c\u0012\u0008\u0012\u00060\u001cR\u00020\u00010.H\u0002J\"\u0010/\u001a\u00020\t2\u0006\u0010,\u001a\u00020 2\u0010\u0010-\u001a\u000c\u0012\u0008\u0012\u00060\u001cR\u00020\u00010.H\u0002J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u00020*H\u0002J\u0010\u00103\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u00104\u001a\u00020*2\u0006\u00105\u001a\u00020*H\u0002R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;",
        "Lcom/opensource/svgaplayer/drawer/SGVADrawer;",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "dynamicItem",
        "Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V",
        "beginIndexList",
        "",
        "",
        "[Ljava/lang/Boolean;",
        "drawTextCache",
        "Ljava/util/HashMap;",
        "",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/collections/HashMap;",
        "getDynamicItem",
        "()Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "endIndexList",
        "matrixScaleTempValues",
        "",
        "pathCache",
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;",
        "sharedValues",
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;",
        "drawDynamic",
        "",
        "sprite",
        "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
        "canvas",
        "Landroid/graphics/Canvas;",
        "frameIndex",
        "",
        "drawFrame",
        "scaleType",
        "Landroid/widget/ImageView$ScaleType;",
        "drawImage",
        "drawShape",
        "drawSprite",
        "drawTextOnBitmap",
        "drawingBitmap",
        "frameMatrix",
        "Landroid/graphics/Matrix;",
        "isMatteBegin",
        "spriteIndex",
        "sprites",
        "",
        "isMatteEnd",
        "matrixScale",
        "",
        "matrix",
        "playAudio",
        "shareFrameMatrix",
        "transform",
        "PathCache",
        "ShareValues",
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
.field private beginIndexList:[Ljava/lang/Boolean;

.field private final drawTextCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

.field private endIndexList:[Ljava/lang/Boolean;

.field private final matrixScaleTempValues:[F

.field private final pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

.field private final sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .locals 1

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    iput-object p2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    .line 22
    new-instance p1, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    .line 24
    new-instance p1, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 413
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScaleTempValues:[F

    return-void
.end method

.method private final drawDynamic(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V
    .locals 4

    .line 442
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicDrawer$library_release()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 445
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 446
    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 447
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicDrawerSized$library_release()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 452
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 453
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 454
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v2

    double-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p3, v1, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private final drawImage(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V
    .locals 11

    .line 192
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 193
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicHidden$library_release()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, ".matte"

    const-string v2, ""

    move-object v0, v6

    .line 195
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicImage$library_release()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getImages$library_release()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_0
    move-object v7, v1

    if-eqz v7, :cond_7

    .line 197
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v8

    .line 198
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 201
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v1

    const/16 v3, 0xff

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 203
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 204
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 205
    iget-object v2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath()Landroid/graphics/Path;

    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 207
    invoke-virtual {v2, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 208
    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 209
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 210
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    invoke-virtual {p2, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 213
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_3
    return-void

    .line 216
    :cond_4
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 217
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 218
    invoke-virtual {p2, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 221
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicIClickArea$library_release()Ljava/util/HashMap;

    move-result-object v0

    .line 222
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/IClickAreaListener;

    if-eqz v0, :cond_6

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 223
    fill-array-data v1, :array_0

    .line 224
    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x2

    .line 225
    aget v3, v1, v2

    float-to-int v3, v3

    const/4 v4, 0x5

    .line 226
    aget v5, v1, v4

    float-to-int v5, v5

    .line 227
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    aget v10, v1, v10

    mul-float/2addr v9, v10

    aget v2, v1, v2

    add-float/2addr v9, v2

    float-to-int v9, v9

    .line 228
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v10, 0x4

    aget v10, v1, v10

    mul-float/2addr v2, v10

    aget v1, v1, v4

    add-float/2addr v2, v1

    float-to-int v10, v2

    move-object v1, v6

    move v2, v3

    move v3, v5

    move v4, v9

    move v5, v10

    .line 225
    invoke-interface/range {v0 .. v5}, Lcom/opensource/svgaplayer/IClickAreaListener;->onResponseArea(Ljava/lang/String;IIII)V

    .line 231
    :cond_6
    invoke-direct {p0, p2, v7, p1, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextOnBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Matrix;)V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final drawShape(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V
    .locals 13

    .line 327
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 328
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 565
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    .line 329
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->buildPath()V

    .line 330
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getShapePath()Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 332
    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 333
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v4

    const/16 v6, 0xff

    int-to-double v7, v6

    mul-double/2addr v4, v7

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 335
    iget-object v4, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath()Landroid/graphics/Path;

    move-result-object v4

    .line 336
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 337
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    invoke-virtual {v5, v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->buildPath(Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 338
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2()Landroid/graphics/Matrix;

    move-result-object v5

    .line 339
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 340
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 341
    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 343
    :cond_1
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 344
    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 345
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v5

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getFill()I

    move-result v5

    if-eqz v5, :cond_4

    .line 347
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 348
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v10

    mul-double/2addr v10, v7

    double-to-int v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 350
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 351
    :cond_2
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 352
    iget-object v10, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v10}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2()Landroid/graphics/Path;

    move-result-object v10

    .line 353
    invoke-virtual {v5, v10}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 354
    invoke-virtual {v10, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 355
    invoke-virtual {p2, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 357
    :cond_3
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 358
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 361
    :cond_4
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getStrokeWidth()F

    move-result v5

    int-to-float v10, v9

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    .line 363
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 364
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getStroke()I

    move-result v5

    .line 365
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 366
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v11

    mul-double/2addr v11, v7

    double-to-int v5, v11

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 368
    :cond_5
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScale(Landroid/graphics/Matrix;)F

    move-result v5

    .line 369
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getStrokeWidth()F

    move-result v6

    mul-float/2addr v6, v5

    .line 370
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 372
    :cond_6
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    const-string v7, "round"

    const/4 v8, 0x1

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineCap()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    const-string v11, "butt"

    .line 374
    invoke-static {v6, v11, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    .line 375
    :cond_7
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1

    :cond_8
    const-string v11, "square"

    .line 376
    invoke-static {v6, v11, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 379
    :cond_9
    :goto_1
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineJoin()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    const-string v11, "miter"

    .line 381
    invoke-static {v6, v11, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_a

    sget-object v6, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    .line 382
    :cond_a
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_2

    :cond_b
    const-string v7, "bevel"

    .line 383
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 386
    :cond_c
    :goto_2
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getMiterLimit()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 387
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 389
    :cond_d
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v2

    if-eqz v2, :cond_11

    .line 390
    array-length v6, v2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_11

    aget v6, v2, v9

    cmpl-float v6, v6, v10

    if-gtz v6, :cond_e

    aget v6, v2, v8

    cmpl-float v6, v6, v10

    if-lez v6, :cond_11

    .line 391
    :cond_e
    new-instance v6, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x2

    new-array v10, v7, [F

    .line 392
    aget v11, v2, v9

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_f

    goto :goto_3

    :cond_f
    aget v12, v2, v9

    :goto_3
    mul-float/2addr v12, v5

    aput v12, v10, v9

    .line 393
    aget v9, v2, v8

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v9, v9, v11

    if-gez v9, :cond_10

    goto :goto_4

    :cond_10
    aget v11, v2, v8

    :goto_4
    mul-float/2addr v11, v5

    aput v11, v10, v8

    .line 394
    aget v2, v2, v7

    mul-float/2addr v2, v5

    .line 391
    invoke-direct {v6, v10, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    check-cast v6, Landroid/graphics/PathEffect;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 397
    :cond_11
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 398
    :cond_12
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 399
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2()Landroid/graphics/Path;

    move-result-object v5

    .line 400
    invoke-virtual {v2, v5}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 401
    invoke-virtual {v5, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 402
    invoke-virtual {p2, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 404
    :cond_13
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 405
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private final drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawImage(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawShape(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawDynamic(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    return-void
.end method

.method private final drawTextOnBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Matrix;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 235
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty$library_release()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 237
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->setTextDirty$library_release(Z)V

    .line 239
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    const/4 v5, 0x0

    .line 240
    check-cast v5, Landroid/graphics/Bitmap;

    .line 241
    iget-object v6, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicText$library_release()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "null cannot be cast to non-null type android.graphics.Bitmap"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    .line 242
    iget-object v10, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v10}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicTextPaint$library_release()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/TextPaint;

    if-eqz v10, :cond_3

    .line 243
    iget-object v5, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 247
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v11, v4, v4, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 248
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v13, "drawingTextPaint"

    .line 249
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 250
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 252
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 253
    iget v14, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 254
    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 255
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    int-to-float v15, v15

    int-to-float v4, v8

    div-float/2addr v14, v4

    sub-float/2addr v15, v14

    div-float/2addr v13, v4

    sub-float/2addr v15, v13

    .line 256
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    check-cast v10, Landroid/graphics/Paint;

    invoke-virtual {v12, v6, v4, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 257
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_3
    :goto_0
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicBoringLayoutText$library_release()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/BoringLayout;

    const/4 v6, 0x0

    const-string v10, "it.paint"

    const-string v11, "it"

    if-eqz v4, :cond_6

    .line 263
    iget-object v5, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    goto :goto_1

    .line 266
    :cond_4
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/BoringLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 269
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v4}, Landroid/text/BoringLayout;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v8

    int-to-float v13, v13

    invoke-virtual {v12, v6, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 271
    invoke-virtual {v4, v12}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;)V

    .line 272
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    if-eqz v5, :cond_5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_6
    :goto_1
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicStaticLayoutText$library_release()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/StaticLayout;

    if-eqz v4, :cond_a

    .line 277
    iget-object v5, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    goto/16 :goto_4

    .line 280
    :cond_7
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 281
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v5, v10, :cond_8

    .line 283
    :try_start_0
    const-class v5, Landroid/text/StaticLayout;

    const-string v10, "mMaximumVisibleLineCount"

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-string v10, "field"

    .line 284
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 285
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const v5, 0x7fffffff

    .line 288
    :goto_2
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v9, v13, v10, v11, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    .line 289
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 290
    invoke-virtual {v4, v5}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 291
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 292
    invoke-virtual {v4}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v4

    goto :goto_3

    .line 294
    :cond_8
    new-instance v5, Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v19

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v22

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getSpacingMultiplier()F

    move-result v23

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getSpacingAdd()F

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v4, v5

    .line 296
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 297
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const-string v11, "layout"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v8

    int-to-float v8, v10

    invoke-virtual {v9, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 299
    invoke-virtual {v4, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    if-eqz v5, :cond_9

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_9
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_4
    if-eqz v5, :cond_c

    .line 304
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v6

    const/16 v4, 0xff

    int-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v4, v6

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 308
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 310
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v7, v2, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 312
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v5, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 313
    check-cast v2, Landroid/graphics/Shader;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 314
    iget-object v2, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath()Landroid/graphics/Path;

    move-result-object v2

    .line 315
    invoke-virtual {v4, v2}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 316
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 320
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 321
    invoke-virtual {v1, v5, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_c
    :goto_5
    return-void
.end method

.method private final isMatteBegin(ILjava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;)Z"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 96
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 547
    new-array v2, v0, [Ljava/lang/Boolean;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 96
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 553
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v4, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 98
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, ".matte"

    .line 100
    invoke-static {v6, v9, v1, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 105
    :cond_2
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 106
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    add-int/lit8 v6, v3, -0x1

    .line 107
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-eqz v6, :cond_5

    .line 108
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-eqz v4, :cond_5

    .line 112
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_3

    .line 109
    :cond_4
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    :cond_5
    :goto_3
    move v3, v5

    goto :goto_1

    .line 119
    :cond_6
    iput-object v2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    .line 121
    :cond_7
    iget-object p2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    if-eqz p2, :cond_8

    aget-object p1, p2, p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_8
    return v1
.end method

.method private final isMatteEnd(ILjava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;)Z"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 126
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 555
    new-array v3, v2, [Ljava/lang/Boolean;

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    .line 126
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 561
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v5, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 128
    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v10, ".matte"

    .line 130
    invoke-static {v7, v10, v1, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 135
    :cond_2
    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 136
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 138
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ne v4, v7, :cond_3

    .line 139
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_3

    .line 141
    :cond_3
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-eqz v7, :cond_6

    .line 142
    invoke-virtual {v7}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    .line 145
    :cond_4
    invoke-virtual {v7}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v8

    if-eqz v5, :cond_6

    .line 146
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_3

    .line 143
    :cond_5
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    :cond_6
    :goto_3
    move v4, v6

    goto :goto_1

    .line 154
    :cond_7
    iput-object v3, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    .line 156
    :cond_8
    iget-object p2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    if-eqz p2, :cond_9

    aget-object p1, p2, p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_9
    return v1
.end method

.method private final matrixScale(Landroid/graphics/Matrix;)F
    .locals 17

    move-object/from16 v0, p0

    .line 416
    iget-object v1, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScaleTempValues:[F

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 417
    iget-object v1, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScaleTempValues:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_0

    return v4

    .line 420
    :cond_0
    aget v2, v1, v2

    float-to-double v2, v2

    const/4 v5, 0x3

    .line 421
    aget v5, v1, v5

    float-to-double v5, v5

    const/4 v7, 0x1

    .line 422
    aget v7, v1, v7

    float-to-double v7, v7

    const/4 v9, 0x4

    .line 423
    aget v1, v1, v9

    float-to-double v9, v1

    mul-double v11, v2, v9

    mul-double v13, v5, v7

    cmpg-double v1, v11, v13

    if-nez v1, :cond_1

    return v4

    :cond_1
    mul-double v11, v2, v2

    mul-double v13, v5, v5

    add-double/2addr v11, v13

    .line 425
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    div-double/2addr v2, v11

    div-double/2addr v5, v11

    mul-double v13, v2, v7

    mul-double v15, v5, v9

    add-double/2addr v13, v15

    mul-double v15, v2, v13

    sub-double/2addr v7, v15

    mul-double/2addr v13, v5

    sub-double/2addr v9, v13

    mul-double v13, v7, v7

    mul-double v15, v9, v9

    add-double/2addr v13, v15

    .line 431
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    div-double/2addr v7, v13

    div-double/2addr v9, v13

    mul-double/2addr v2, v9

    mul-double/2addr v5, v7

    cmpg-double v1, v2, v5

    if-gez v1, :cond_2

    neg-double v11, v11

    .line 438
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getRatioX()Z

    move-result v1

    if-eqz v1, :cond_3

    double-to-float v1, v11

    goto :goto_0

    :cond_3
    double-to-float v1, v13

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1
.end method

.method private final playAudio(I)V
    .locals 10

    .line 160
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudios$library_release()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 563
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 161
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getStartFrame()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$library_release()Landroid/media/SoundPool;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getSoundID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 164
    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    .line 168
    :cond_1
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getEndFrame()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 170
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$library_release()Landroid/media/SoundPool;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_2
    const/4 v2, 0x0

    .line 172
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getScaleFx()F

    move-result v1

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getScaleFy()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 180
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getTranFx()F

    move-result v1

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getTranFy()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 181
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const-string v1, "canvas"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scaleType"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-super/range {p0 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V

    .line 31
    invoke-direct {v0, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->playAudio(I)V

    .line 32
    iget-object v1, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    invoke-virtual {v1, v7}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->onSizeChanged(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {v0, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->requestFrameSprites$library_release(I)Ljava/util/List;

    move-result-object v9

    .line 35
    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v10, v1

    check-cast v10, Ljava/util/Map;

    const/4 v11, 0x0

    .line 38
    move-object v1, v11

    check-cast v1, [Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    .line 39
    iput-object v1, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    const/4 v12, 0x0

    .line 43
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x2

    const-string v14, ".matte"

    if-eqz v1, :cond_1

    .line 44
    invoke-static {v1, v14, v12, v13, v11}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    move v15, v1

    goto :goto_0

    :cond_1
    move v15, v12

    .line 48
    :goto_0
    move-object v1, v9

    check-cast v1, Ljava/lang/Iterable;

    .line 545
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v5, v12

    const/4 v1, -0x1

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v17, v5, 0x1

    if-gez v5, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 51
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    if-eqz v2, :cond_5

    if-eqz v15, :cond_4

    .line 53
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v3, :cond_3

    goto :goto_2

    .line 60
    :cond_3
    invoke-static {v2, v14, v12, v13, v11}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 61
    invoke-interface {v10, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 55
    :cond_4
    :goto_2
    invoke-direct {v0, v4, v7, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    :goto_3
    const/4 v13, -0x1

    goto/16 :goto_5

    .line 67
    :cond_5
    invoke-direct {v0, v5, v9}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->isMatteBegin(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 68
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/16 v18, 0x0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move-object v11, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v19

    move v12, v6

    const/4 v13, -0x1

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v1

    goto :goto_4

    :cond_6
    move-object v11, v4

    move v12, v5

    const/4 v13, -0x1

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_4

    :cond_7
    move-object v11, v4

    move v12, v5

    const/4 v13, -0x1

    .line 75
    :goto_4
    invoke-direct {v0, v11, v7, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    .line 78
    invoke-direct {v0, v12, v9}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->isMatteEnd(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 79
    invoke-virtual {v11}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-eqz v2, :cond_9

    .line 80
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMatteCanvas(II)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-direct {v0, v2, v3, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    .line 81
    iget-object v2, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eq v1, v13, :cond_8

    .line 83
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_5

    .line 85
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_5
    move/from16 v5, v17

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public final getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    return-object v0
.end method
