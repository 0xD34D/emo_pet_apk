.class Lcn/bingoogolapple/badgeview/BGADragBadgeView$1;
.super Ljava/lang/Object;
.source "BGADragBadgeView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/bingoogolapple/badgeview/BGADragBadgeView;->startSpringAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

.field final synthetic val$startReleaseDragCenter:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcn/bingoogolapple/badgeview/BGADragBadgeView;Landroid/graphics/PointF;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$1;->this$0:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    iput-object p2, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$1;->val$startReleaseDragCenter:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 343
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 344
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$1;->val$startReleaseDragCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$1;->this$0:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-static {v1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->access$000(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewUtil;->getPointByPercent(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$1;->this$0:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->access$100(Lcn/bingoogolapple/badgeview/BGADragBadgeView;FF)V

    return-void
.end method
