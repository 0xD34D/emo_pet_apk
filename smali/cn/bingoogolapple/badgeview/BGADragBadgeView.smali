.class Lcn/bingoogolapple/badgeview/BGADragBadgeView;
.super Landroid/view/View;
.source "BGADragBadgeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/badgeview/BGADragBadgeView$SetExplosionAnimatorNullTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BGADragBadgeView"


# instance fields
.field private mBadgePaint:Landroid/graphics/Paint;

.field private mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

.field private mControlPoint:Landroid/graphics/PointF;

.field private mDismissAble:Z

.field private mDismissThreshold:I

.field private mDragCenter:Landroid/graphics/PointF;

.field private mDragPoints:[Landroid/graphics/PointF;

.field private mDragRadius:F

.field private mDragStickRadiusDifference:I

.field private mExplosionAnimator:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

.field private mIsDragDisappear:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMaxDragRadius:I

.field private mSetExplosionAnimatorNullTask:Lcn/bingoogolapple/badgeview/BGADragBadgeView$SetExplosionAnimatorNullTask;

.field private mStartX:I

.field private mStartY:I

.field private mStickCenter:Landroid/graphics/PointF;

.field private mStickPoints:[Landroid/graphics/PointF;

.field private mStickRadius:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;)V
    .locals 6

    .line 109
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/PointF;

    .line 60
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    iput-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickPoints:[Landroid/graphics/PointF;

    new-array v0, v0, [Landroid/graphics/PointF;

    .line 67
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragPoints:[Landroid/graphics/PointF;

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mControlPoint:Landroid/graphics/PointF;

    .line 78
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    const-string v0, "window"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mWindowManager:Landroid/view/WindowManager;

    .line 111
    iput-object p2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    .line 112
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->initBadgePaint()V

    .line 113
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->initLayoutParams()V

    .line 114
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->initStick()V

    .line 116
    new-instance p1, Lcn/bingoogolapple/badgeview/BGADragBadgeView$SetExplosionAnimatorNullTask;

    invoke-direct {p1, p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView$SetExplosionAnimatorNullTask;-><init>(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)V

    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mSetExplosionAnimatorNullTask:Lcn/bingoogolapple/badgeview/BGADragBadgeView$SetExplosionAnimatorNullTask;

    return-void
.end method

.method static synthetic access$000(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)Landroid/graphics/PointF;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$100(Lcn/bingoogolapple/badgeview/BGADragBadgeView;FF)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->updateDragPosition(FF)V

    return-void
.end method

.method static synthetic access$200(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->removeSelf()V

    return-void
.end method

.method static synthetic access$300(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    return-object p0
.end method

.method static synthetic access$402(Lcn/bingoogolapple/badgeview/BGADragBadgeView;Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;)Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mExplosionAnimator:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    return-object p1
.end method

.method private drawDrawableBadge(Landroid/graphics/Canvas;)V
    .locals 4

    .line 171
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStartY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawStick(Landroid/graphics/Canvas;)V
    .locals 7

    .line 193
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getCurrentStickRadius()F

    move-result v0

    .line 196
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 197
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 200
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 203
    :goto_0
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v3, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragRadius:F

    invoke-static {v2, v3, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->getIntersectionPoints(Landroid/graphics/PointF;FLjava/lang/Double;)[Landroid/graphics/PointF;

    move-result-object v2

    iput-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragPoints:[Landroid/graphics/PointF;

    .line 204
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    invoke-static {v2, v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->getIntersectionPoints(Landroid/graphics/PointF;FLjava/lang/Double;)[Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickPoints:[Landroid/graphics/PointF;

    .line 207
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    invoke-static {v1, v2}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->getMiddlePoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mControlPoint:Landroid/graphics/PointF;

    .line 209
    iget-boolean v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mIsDragDisappear:Z

    if-nez v1, :cond_2

    .line 210
    iget-boolean v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissAble:Z

    if-nez v1, :cond_1

    .line 213
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 215
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickPoints:[Landroid/graphics/PointF;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickPoints:[Landroid/graphics/PointF;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragPoints:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragPoints:[Landroid/graphics/PointF;

    aget-object v3, v6, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 219
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragPoints:[Landroid/graphics/PointF;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragPoints:[Landroid/graphics/PointF;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mControlPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickPoints:[Landroid/graphics/PointF;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickPoints:[Landroid/graphics/PointF;

    aget-object v3, v6, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 222
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 223
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 226
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragRadius:F

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawTextBadge(Landroid/graphics/Canvas;)V
    .locals 6

    .line 176
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStartX:I

    int-to-float v2, v1

    iget v3, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStartY:I

    int-to-float v3, v3

    int-to-float v1, v1

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    .line 179
    invoke-virtual {v4}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    add-float/2addr v1, v4

    iget v4, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStartY:I

    int-to-float v4, v4

    iget-object v5, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v5}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    .line 180
    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v3}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    .line 178
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 183
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStartX:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 186
    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStartY:I

    int-to-float v1, v1

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v2}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v2}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgePadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 188
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v2}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v2}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeText()Ljava/lang/String;

    move-result-object v2

    .line 189
    :goto_0
    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getCurrentStickRadius()F
    .locals 4

    .line 243
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->getDistanceBetween2Points(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 244
    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissThreshold:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 245
    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissThreshold:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 246
    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickRadius:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private getNewStartX(F)I
    .locals 2

    .line 427
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    float-to-int p1, p1

    .line 428
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p1, v1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 432
    :cond_0
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    if-le p1, v1, :cond_1

    .line 433
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    :cond_1
    return p1
.end method

.method private getNewStartY(F)I
    .locals 2

    .line 439
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    .line 440
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    float-to-int p1, p1

    .line 441
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 442
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mExplosionAnimator:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mMaxDragRadius:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragRadius:F

    .line 278
    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragStickRadiusDifference:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickRadius:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 279
    iput v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissThreshold:I

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissAble:Z

    .line 282
    iput-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mIsDragDisappear:Z

    .line 284
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->updateDragPosition(FF)V

    :cond_0
    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mExplosionAnimator:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->updateDragPosition(FF)V

    .line 295
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->getDistanceBetween2Points(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iget v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissAble:Z

    .line 297
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->postInvalidate()V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->isResumeTravel()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissAble:Z

    .line 300
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 2

    .line 306
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 308
    iget-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissAble:Z

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->getDistanceBetween2Points(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 313
    :try_start_0
    iput-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mIsDragDisappear:Z

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0, v0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getNewStartX(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getNewStartY(F)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->startDismissAnim(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->removeSelf()V

    .line 317
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->endDragWithDismiss()V

    goto :goto_0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->removeSelf()V

    .line 322
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->endDragWithoutDismiss()V

    goto :goto_0

    .line 327
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->startSpringAnim()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 329
    :catch_1
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->removeSelf()V

    .line 330
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->endDragWithoutDismiss()V

    :goto_0
    return-void
.end method

.method private initBadgePaint()V
    .locals 2

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 125
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private initLayoutParams()V
    .locals 2

    .line 129
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    .line 130
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 131
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 132
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 133
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 134
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 135
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private initStick()V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mMaxDragRadius:I

    .line 140
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragStickRadiusDifference:I

    return-void
.end method

.method private removeSelf()V
    .locals 3

    .line 405
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissAble:Z

    .line 409
    iput-boolean v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mIsDragDisappear:Z

    .line 412
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mSetExplosionAnimatorNullTask:Lcn/bingoogolapple/badgeview/BGADragBadgeView$SetExplosionAnimatorNullTask;

    const-wide/16 v1, 0x3c

    invoke-virtual {p0, v0, v1, v2}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeSelfWithException()V
    .locals 2

    .line 446
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->removeSelf()V

    .line 447
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->getDistanceBetween2Points(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iget v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDismissThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->endDragWithDismiss()V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->endDragWithoutDismiss()V

    :goto_0
    return-void
.end method

.method private startDismissAnim(II)V
    .locals 5

    .line 370
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 371
    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    .line 372
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v0, v0, 0x2

    sub-int v3, p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int v4, p2, v1

    add-int/2addr p1, v0

    add-int/2addr p2, v1

    invoke-direct {v2, v3, v4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x1

    .line 374
    invoke-static {p0, v2, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->createBitmapSafely(Lcn/bingoogolapple/badgeview/BGADragBadgeView;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 376
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->removeSelf()V

    .line 377
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->endDragWithDismiss()V

    return-void

    .line 381
    :cond_0
    iget-object p2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mExplosionAnimator:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    if-eqz p2, :cond_1

    .line 382
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->removeSelf()V

    .line 383
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->endDragWithDismiss()V

    return-void

    .line 387
    :cond_1
    new-instance p2, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    invoke-direct {p2, p0, v2, p1}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;-><init>(Lcn/bingoogolapple/badgeview/BGADragBadgeView;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mExplosionAnimator:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    .line 388
    new-instance p1, Lcn/bingoogolapple/badgeview/BGADragBadgeView$3;

    invoke-direct {p1, p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView$3;-><init>(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)V

    invoke-virtual {p2, p1}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mExplosionAnimator:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->start()V

    return-void
.end method

.method private startSpringAnim()V
    .locals 5

    .line 336
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 337
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 338
    new-instance v3, Lcn/bingoogolapple/badgeview/BGADragBadgeView$1;

    invoke-direct {v3, p0, v0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView$1;-><init>(Lcn/bingoogolapple/badgeview/BGADragBadgeView;Landroid/graphics/PointF;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 348
    new-instance v0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$2;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView$2;-><init>(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 363
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v0, -0x1

    .line 364
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-wide/16 v0, 0x96

    .line 365
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 366
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateDragPosition(FF)V
    .locals 1

    .line 419
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getNewStartX(F)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStartX:I

    .line 420
    invoke-direct {p0, p2}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->getNewStartY(F)I

    move-result v0

    iput v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStartY:I

    .line 422
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mDragCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 423
    invoke-virtual {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->postInvalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 146
    :try_start_0
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mExplosionAnimator:Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->isShowDrawable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v0}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeBgColor()I

    move-result v0

    const/high16 v1, -0x10000

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v2}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    .line 150
    invoke-virtual {v3}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    :goto_0
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->drawStick(Landroid/graphics/Canvas;)V

    .line 155
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->drawDrawableBadge(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mBadgeViewHelper:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    invoke-virtual {v1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->getBadgeBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->drawStick(Landroid/graphics/Canvas;)V

    .line 159
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->drawTextBadge(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v0, p1}, Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 166
    :catch_0
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->removeSelfWithException()V

    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    .line 256
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-direct {p0, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->handleActionDown(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    invoke-direct {p0}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->removeSelfWithException()V

    :goto_0
    return v0
.end method

.method public setStickCenter(FF)V
    .locals 1

    .line 250
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->mStickCenter:Landroid/graphics/PointF;

    return-void
.end method
