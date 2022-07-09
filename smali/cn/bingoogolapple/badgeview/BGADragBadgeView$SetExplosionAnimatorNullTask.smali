.class Lcn/bingoogolapple/badgeview/BGADragBadgeView$SetExplosionAnimatorNullTask;
.super Ljava/lang/Object;
.source "BGADragBadgeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/badgeview/BGADragBadgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetExplosionAnimatorNullTask"
.end annotation


# instance fields
.field private final mDragBadgeView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/bingoogolapple/badgeview/BGADragBadgeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/bingoogolapple/badgeview/BGADragBadgeView;)V
    .locals 1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$SetExplosionAnimatorNullTask;->mDragBadgeView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcn/bingoogolapple/badgeview/BGADragBadgeView$SetExplosionAnimatorNullTask;->mDragBadgeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/badgeview/BGADragBadgeView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 465
    invoke-static {v0, v1}, Lcn/bingoogolapple/badgeview/BGADragBadgeView;->access$402(Lcn/bingoogolapple/badgeview/BGADragBadgeView;Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;)Lcn/bingoogolapple/badgeview/BGAExplosionAnimator;

    :cond_0
    return-void
.end method
