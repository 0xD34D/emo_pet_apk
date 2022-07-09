.class public Lcom/living/emo/activity/AbstractBaseActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AbstractBaseActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/living/emo/activity/AbstractBaseActivity;


# direct methods
.method public constructor <init>(Lcom/living/emo/activity/AbstractBaseActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/living/emo/activity/AbstractBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/living/emo/activity/AbstractBaseActivity_ViewBinding;-><init>(Lcom/living/emo/activity/AbstractBaseActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/living/emo/activity/AbstractBaseActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/living/emo/activity/AbstractBaseActivity_ViewBinding;->target:Lcom/living/emo/activity/AbstractBaseActivity;

    .line 28
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090330

    const-string v2, "field \'mTopTxtIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/living/emo/activity/AbstractBaseActivity;->mTopTxtIv:Landroid/widget/ImageView;

    .line 29
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09029c

    const-string v2, "field \'mRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/living/emo/activity/AbstractBaseActivity;->mRoot:Landroid/widget/RelativeLayout;

    .line 30
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090350

    const-string v2, "field \'mUtilities_back\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/living/emo/activity/AbstractBaseActivity;->mUtilities_back:Landroid/widget/ImageView;

    .line 31
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09034a

    const-string v2, "field \'mFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/living/emo/activity/AbstractBaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 32
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09015b

    const-string v2, "field \'mSet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/living/emo/activity/AbstractBaseActivity;->mSet:Landroid/widget/ImageView;

    .line 33
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090159

    const-string v2, "field \'mMusicIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/living/emo/activity/AbstractBaseActivity;->mMusicIv:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/living/emo/activity/AbstractBaseActivity_ViewBinding;->target:Lcom/living/emo/activity/AbstractBaseActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/living/emo/activity/AbstractBaseActivity_ViewBinding;->target:Lcom/living/emo/activity/AbstractBaseActivity;

    .line 43
    iput-object v1, v0, Lcom/living/emo/activity/AbstractBaseActivity;->mTopTxtIv:Landroid/widget/ImageView;

    .line 44
    iput-object v1, v0, Lcom/living/emo/activity/AbstractBaseActivity;->mRoot:Landroid/widget/RelativeLayout;

    .line 45
    iput-object v1, v0, Lcom/living/emo/activity/AbstractBaseActivity;->mUtilities_back:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lcom/living/emo/activity/AbstractBaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 47
    iput-object v1, v0, Lcom/living/emo/activity/AbstractBaseActivity;->mSet:Landroid/widget/ImageView;

    .line 48
    iput-object v1, v0, Lcom/living/emo/activity/AbstractBaseActivity;->mMusicIv:Landroid/widget/ImageView;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
