.class public Lcom/living/emo/activity/InteractActivity;
.super Lcom/living/emo/activity/AbstractBaseActivity;
.source "InteractActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/living/emo/activity/AbstractBaseActivity;-><init>()V

    return-void
.end method

.method private initInteractFragment()V
    .locals 3

    .line 32
    new-instance v0, Lcom/living/emo/fragment/InteractFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/InteractFragment;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/living/emo/activity/InteractActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/living/emo/activity/InteractActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 36
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public goBack()V
    .locals 2

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/living/emo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/InteractActivity;->startActivity(Landroid/content/Intent;)V

    .line 22
    invoke-virtual {p0}, Lcom/living/emo/activity/InteractActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-direct {p0}, Lcom/living/emo/activity/InteractActivity;->initInteractFragment()V

    return-void
.end method

.method protected setTopBg()I
    .locals 1

    const v0, 0x7f08023c

    return v0
.end method
