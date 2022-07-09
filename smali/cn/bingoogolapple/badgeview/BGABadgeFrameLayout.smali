.class public Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BGABadgeFrameLayout.java"

# interfaces
.implements Lcn/bingoogolapple/badgeview/BGABadgeable;


# instance fields
.field private mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p3, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    sget-object v0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->RightCenter:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    invoke-direct {p3, p0, p1, p2, v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;-><init>(Lcn/bingoogolapple/badgeview/BGABadgeable;Landroid/content/Context;Landroid/util/AttributeSet;Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;)V

    iput-object p3, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    return-void
.end method


# virtual methods
.method public callSuperOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 44
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->drawBadge(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBadgeViewHelper()Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    return-object v0
.end method

.method public hiddenBadge()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->hiddenBadge()V

    return-void
.end method

.method public isDraggable()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->isDraggable()Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isShowBadge()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->isShowBadge()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setDragDismissDelegate(Lcn/bingoogolapple/badgeview/BGADragDismissDelegate;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->setDragDismissDelegate(Lcn/bingoogolapple/badgeview/BGADragDismissDelegate;)V

    return-void
.end method

.method public showCirclePointBadge()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->showCirclePointBadge()V

    return-void
.end method

.method public showDrawableBadge(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->showDrawable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public showTextBadge(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGABadgeFrameLayout;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->showTextBadge(Ljava/lang/String;)V

    return-void
.end method
