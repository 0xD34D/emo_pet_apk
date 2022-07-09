.class public Lcom/living/emo/fragment/AlertFragment_ViewBinding;
.super Ljava/lang/Object;
.source "AlertFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/living/emo/fragment/AlertFragment;


# direct methods
.method public constructor <init>(Lcom/living/emo/fragment/AlertFragment;Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment_ViewBinding;->target:Lcom/living/emo/fragment/AlertFragment;

    .line 25
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09004c

    const-string v2, "field \'mAlertRecy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mAlertRecy:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f09004f

    const-string v2, "field \'mTimeAdd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mTimeAdd:Landroid/widget/ImageButton;

    .line 27
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09004d

    const-string v2, "field \'mTimeCon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mTimeCon:Landroid/widget/RelativeLayout;

    .line 28
    const-class v0, Lcom/zyyoona7/wheel/WheelView;

    const v1, 0x7f090369

    const-string v2, "field \'mReminder\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zyyoona7/wheel/WheelView;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mReminder:Lcom/zyyoona7/wheel/WheelView;

    .line 29
    const-class v0, Lcom/zyyoona7/wheel/WheelView;

    const v1, 0x7f09036a

    const-string v2, "field \'mHour\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zyyoona7/wheel/WheelView;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mHour:Lcom/zyyoona7/wheel/WheelView;

    .line 30
    const-class v0, Lcom/zyyoona7/wheel/WheelView;

    const v1, 0x7f09036b

    const-string v2, "field \'mMinute\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zyyoona7/wheel/WheelView;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mMinute:Lcom/zyyoona7/wheel/WheelView;

    .line 31
    const-class v0, Lcom/zyyoona7/wheel/WheelView;

    const v1, 0x7f09036c

    const-string v2, "field \'mRecurrence\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zyyoona7/wheel/WheelView;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mRecurrence:Lcom/zyyoona7/wheel/WheelView;

    .line 32
    const-class v0, Landroid/widget/Switch;

    const v1, 0x7f090057

    const-string v2, "field \'mSwitchOnOff\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mSwitchOnOff:Landroid/widget/Switch;

    .line 33
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f090050

    const-string v2, "field \'mAlertDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mAlertDelete:Landroid/widget/ImageButton;

    .line 34
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f090053

    const-string v2, "field \'mAlertSave\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/living/emo/fragment/AlertFragment;->mAlertSave:Landroid/widget/ImageButton;

    .line 35
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09004e

    const-string v2, "field \'mTextCon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/living/emo/fragment/AlertFragment;->mTextCon:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment_ViewBinding;->target:Lcom/living/emo/fragment/AlertFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/living/emo/fragment/AlertFragment_ViewBinding;->target:Lcom/living/emo/fragment/AlertFragment;

    .line 45
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mAlertRecy:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mTimeAdd:Landroid/widget/ImageButton;

    .line 47
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mTimeCon:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mReminder:Lcom/zyyoona7/wheel/WheelView;

    .line 49
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mHour:Lcom/zyyoona7/wheel/WheelView;

    .line 50
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mMinute:Lcom/zyyoona7/wheel/WheelView;

    .line 51
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mRecurrence:Lcom/zyyoona7/wheel/WheelView;

    .line 52
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mSwitchOnOff:Landroid/widget/Switch;

    .line 53
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mAlertDelete:Landroid/widget/ImageButton;

    .line 54
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mAlertSave:Landroid/widget/ImageButton;

    .line 55
    iput-object v1, v0, Lcom/living/emo/fragment/AlertFragment;->mTextCon:Landroid/widget/RelativeLayout;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
