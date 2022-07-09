.class public Lcom/living/emo/fragment/LiftTimeFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "LiftTimeFragment.java"


# instance fields
.field private mAchievementsFragment:Lcom/living/emo/fragment/AchievementsFragment;

.field public mAchievment:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b7
    .end annotation
.end field

.field public mDanceList:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ba
    .end annotation
.end field

.field private mFm:Landroidx/fragment/app/FragmentManager;

.field private mLiftTime:Lcom/living/emo/activity/LifeTimeActivity;

.field public mUpcoming:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901bd
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$initEvent$2(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mFm:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mLiftTime:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v1, v1, Lcom/living/emo/activity/LifeTimeActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 50
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mDanceList:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$LiftTimeFragment$CQYKAkRuy5Oqv8Dycv6gnQuIRMo;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$LiftTimeFragment$CQYKAkRuy5Oqv8Dycv6gnQuIRMo;-><init>(Lcom/living/emo/fragment/LiftTimeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mAchievment:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$LiftTimeFragment$18JLxVTRNd2PrSLfEkU3gJkkOlk;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$LiftTimeFragment$18JLxVTRNd2PrSLfEkU3gJkkOlk;-><init>(Lcom/living/emo/fragment/LiftTimeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mUpcoming:Landroid/widget/ImageView;

    sget-object v1, Lcom/living/emo/fragment/-$$Lambda$LiftTimeFragment$PcHwp0VDwudu4fzburdNOeTr9CE;->INSTANCE:Lcom/living/emo/fragment/-$$Lambda$LiftTimeFragment$PcHwp0VDwudu4fzburdNOeTr9CE;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mLiftTime:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v0, v0, Lcom/living/emo/activity/LifeTimeActivity;->mUtilities_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$LiftTimeFragment$NQEQh7oGFfUsvk5B6AguUr6Tq4c;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$LiftTimeFragment$NQEQh7oGFfUsvk5B6AguUr6Tq4c;-><init>(Lcom/living/emo/fragment/LiftTimeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/living/emo/fragment/LiftTimeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/LifeTimeActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mLiftTime:Lcom/living/emo/activity/LifeTimeActivity;

    .line 39
    iget-object v0, v0, Lcom/living/emo/activity/LifeTimeActivity;->mUtilities_back:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mLiftTime:Lcom/living/emo/activity/LifeTimeActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/LifeTimeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mFm:Landroidx/fragment/app/FragmentManager;

    .line 41
    iget-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mLiftTime:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v0, v0, Lcom/living/emo/activity/LifeTimeActivity;->mTopTxtIv:Landroid/widget/ImageView;

    const v1, 0x7f080356

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 42
    iget-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mLiftTime:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v0, v0, Lcom/living/emo/activity/LifeTimeActivity;->mRoot:Landroid/widget/RelativeLayout;

    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 44
    new-instance v0, Lcom/living/emo/fragment/AchievementsFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/AchievementsFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mAchievementsFragment:Lcom/living/emo/fragment/AchievementsFragment;

    return-void
.end method

.method public synthetic lambda$initEvent$0$LiftTimeFragment(Landroid/view/View;)V
    .locals 2

    .line 55
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/living/emo/fragment/LiftTimeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/living/emo/activity/DanceListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/fragment/LiftTimeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initEvent$1$LiftTimeFragment(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mAchievementsFragment:Lcom/living/emo/fragment/AchievementsFragment;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/LiftTimeFragment;->switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V

    return-void
.end method

.method public synthetic lambda$initEvent$3$LiftTimeFragment(Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/living/emo/fragment/LiftTimeFragment;->mLiftTime:Lcom/living/emo/activity/LifeTimeActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/LifeTimeActivity;->goBack()V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c006d

    return v0
.end method
