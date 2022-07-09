.class public abstract Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;
.super Ljava/lang/Object;
.source "BGAOnNoDoubleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mLastClickTime:J

.field private mThrottleFirstTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 27
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;->mThrottleFirstTime:I

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;->mLastClickTime:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 27
    iput v0, p0, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;->mThrottleFirstTime:I

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;->mLastClickTime:J

    .line 34
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;->mThrottleFirstTime:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    iget-wide v2, p0, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;->mLastClickTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;->mThrottleFirstTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 41
    iput-wide v0, p0, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;->mLastClickTime:J

    .line 42
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAOnNoDoubleClickListener;->onNoDoubleClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract onNoDoubleClick(Landroid/view/View;)V
.end method
