.class public Lcn/bingoogolapple/baseadapter/BGADivider$SimpleDelegate;
.super Ljava/lang/Object;
.source "BGADivider.java"

# interfaces
.implements Lcn/bingoogolapple/baseadapter/BGADivider$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/baseadapter/BGADivider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleDelegate"
.end annotation


# instance fields
.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$SimpleDelegate;->mPaint:Landroid/graphics/Paint;

    .line 505
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 506
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGADivider$SimpleDelegate;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 507
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGADivider$SimpleDelegate;->initAttr()V

    return-void
.end method


# virtual methods
.method public drawOverVertical(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIIII)V
    .locals 0

    return-void
.end method

.method public drawVertical(Lcn/bingoogolapple/baseadapter/BGADivider;Landroid/graphics/Canvas;IIIII)V
    .locals 0

    return-void
.end method

.method public getItemOffsets(Lcn/bingoogolapple/baseadapter/BGADivider;IILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method protected initAttr()V
    .locals 0

    return-void
.end method

.method public isNeedCustom(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isNeedSkip(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
