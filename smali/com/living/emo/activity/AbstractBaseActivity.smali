.class public abstract Lcom/living/emo/activity/AbstractBaseActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "AbstractBaseActivity.java"


# instance fields
.field private mBind:Lbutterknife/Unbinder;

.field public mFrameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034a
    .end annotation
.end field

.field mMusicIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090159
    .end annotation
.end field

.field mRadio:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mRoot:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09029c
    .end annotation
.end field

.field mSet:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09015b
    .end annotation
.end field

.field public mTopTxtIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090330
    .end annotation
.end field

.field public mUtilities_back:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090350
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mRadio:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->finish()V

    return-void
.end method

.method protected initFragment(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/TextBean;",
            ">;)V"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/living/emo/fragment/NavToolFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/NavToolFragment;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mRadio:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/fragment/NavToolFragment;->setData(Ljava/util/HashMap;Ljava/util/List;)V

    .line 102
    invoke-virtual {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 104
    iget-object v1, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 105
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected initMusic()V
    .locals 3

    const v0, 0x7f09015a

    .line 71
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AbstractBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/living/emo/util/MusicPlayerUtil;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v1

    new-instance v2, Lcom/living/emo/activity/AbstractBaseActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/living/emo/activity/AbstractBaseActivity$1;-><init>(Lcom/living/emo/activity/AbstractBaseActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/living/emo/util/MusicPlayerUtil;->setOnChangeMusicName(Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;)V

    .line 79
    iget-object v0, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mMusicIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AbstractBaseActivity;->playBackgroundMusicEvent(Landroid/view/View;)V

    .line 80
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mMusicIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method

.method protected initView()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mTopTxtIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->setTopBg()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    iget-object v0, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mUtilities_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$AbstractBaseActivity$fV2cKLU_3PSgZ_INQYzGuFzQq8A;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$AbstractBaseActivity$fV2cKLU_3PSgZ_INQYzGuFzQq8A;-><init>(Lcom/living/emo/activity/AbstractBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initView$0$AbstractBaseActivity(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->goBack()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002e

    .line 63
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->setContentView(I)V

    .line 64
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mBind:Lbutterknife/Unbinder;

    .line 65
    iget-object p1, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mSet:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->initView()V

    .line 67
    invoke-virtual {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->initMusic()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/living/emo/activity/AbstractBaseActivity;->mBind:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 85
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 86
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->getUserIsPause()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPause()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPlay()V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    :cond_2
    :goto_0
    const v1, 0x7f090159

    .line 97
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/AbstractBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method

.method protected abstract setTopBg()I
.end method
