.class public Lcom/living/emo/activity/UtilitiesActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "UtilitiesActivity.java"


# instance fields
.field private mBind:Lbutterknife/Unbinder;

.field mHomeSet:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09015b
    .end annotation
.end field

.field mMusicIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090159
    .end annotation
.end field

.field mTopTxtIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090330
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private goToActivity(Ljava/lang/Class;)V
    .locals 1

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f090330

    .line 119
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity;->mTopTxtIv:Landroid/widget/ImageView;

    const v1, 0x7f080368

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity;->mHomeSet:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method goAlert()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090348
        }
    .end annotation

    .line 84
    const-class v0, Lcom/living/emo/activity/ToolAlertActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method goBack()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090349
        }
    .end annotation

    .line 114
    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->goToActivity(Ljava/lang/Class;)V

    .line 115
    invoke-virtual {p0}, Lcom/living/emo/activity/UtilitiesActivity;->finish()V

    return-void
.end method

.method goLight()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09034b
        }
    .end annotation

    .line 103
    const-class v0, Lcom/living/emo/activity/ToolLightActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method goMore()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09034c
        }
    .end annotation

    .line 108
    const-class v0, Lcom/living/emo/activity/ToolMoreActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method goMusic()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09034d
        }
    .end annotation

    .line 71
    const-class v0, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "goMusic: "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-class v0, Lcom/living/emo/activity/ToolMusicActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method goPhoto()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09034e
        }
    .end annotation

    .line 93
    const-class v0, Lcom/living/emo/activity/ToolPhotoActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method goWeather()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09034f
        }
    .end annotation

    .line 98
    const-class v0, Lcom/living/emo/activity/ToolWeatherActivity;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method protected initMusic()V
    .locals 3

    const v0, 0x7f09015a

    .line 56
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/living/emo/util/MusicPlayerUtil;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v1

    new-instance v2, Lcom/living/emo/activity/UtilitiesActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/living/emo/activity/UtilitiesActivity$1;-><init>(Lcom/living/emo/activity/UtilitiesActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/living/emo/util/MusicPlayerUtil;->setOnChangeMusicName(Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;)V

    .line 64
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity;->mMusicIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/UtilitiesActivity;->playBackgroundMusicEvent(Landroid/view/View;)V

    .line 65
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/UtilitiesActivity;->mMusicIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002f

    .line 33
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/UtilitiesActivity;->setContentView(I)V

    .line 34
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/UtilitiesActivity;->mBind:Lbutterknife/Unbinder;

    .line 35
    invoke-direct {p0}, Lcom/living/emo/activity/UtilitiesActivity;->initViews()V

    .line 36
    invoke-virtual {p0}, Lcom/living/emo/activity/UtilitiesActivity;->initMusic()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity;->mBind:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 41
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 42
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->getUserIsPause()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPause()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPlay()V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    :cond_2
    :goto_0
    const v1, 0x7f090159

    .line 53
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/UtilitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method
