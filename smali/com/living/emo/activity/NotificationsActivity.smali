.class public Lcom/living/emo/activity/NotificationsActivity;
.super Lcom/living/emo/activity/AbstractBaseActivity;
.source "NotificationsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/living/emo/activity/AbstractBaseActivity;-><init>()V

    return-void
.end method

.method private initInteractFragment()V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lcom/living/emo/activity/NotificationsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/living/emo/activity/NotificationsActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    new-instance v2, Lcom/living/emo/fragment/NotificationsFragment;

    invoke-direct {v2}, Lcom/living/emo/fragment/NotificationsFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 2

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/living/emo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/NotificationsActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/living/emo/activity/NotificationsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object p1, p0, Lcom/living/emo/activity/NotificationsActivity;->mRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f080293

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 24
    invoke-direct {p0}, Lcom/living/emo/activity/NotificationsActivity;->initInteractFragment()V

    return-void
.end method

.method protected setTopBg()I
    .locals 1

    const v0, 0x7f08035f

    return v0
.end method
