.class Lcn/bingoogolapple/badgeview/BGADragBadgeView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BGADragBadgeView.java"


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


# direct methods
.method constructor <init>(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$2;->this$0:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 357
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$2;->this$0:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-static {p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->access$200(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)V

    .line 358
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$2;->this$0:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-static {p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->access$300(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->endDragWithoutDismiss()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 351
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$2;->this$0:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-static {p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->access$200(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)V

    .line 352
    iget-object p1, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$2;->this$0:Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    invoke-static {p1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->access$300(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;->endDragWithoutDismiss()V

    return-void
.end method
