.class public Lcom/living/emo/activity/BannerActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "BannerActivity.java"

# interfaces
.implements Lcom/youth/banner/listener/OnPageChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBanner:Lcom/youth/banner/Banner;

.field private mGameReturn:Landroid/widget/ImageView;

.field private mHomeMusic:Landroid/widget/ImageView;

.field private mHomeSet:Landroid/widget/ImageView;

.field private mTopTxtIv:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/BannerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/BannerActivity;)Lcom/youth/banner/Banner;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/living/emo/activity/BannerActivity;->mBanner:Lcom/youth/banner/Banner;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/living/emo/activity/BannerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initEvent()V
    .locals 3

    const v0, 0x7f090159

    .line 49
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/BannerActivity;->mHomeMusic:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BannerActivity;->playBackgroundMusicEvent(Landroid/view/View;)V

    const v0, 0x7f09015a

    .line 51
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/living/emo/util/MusicPlayerUtil;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v2, Lcom/living/emo/activity/BannerActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/living/emo/activity/BannerActivity$1;-><init>(Lcom/living/emo/activity/BannerActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/living/emo/util/MusicPlayerUtil;->setOnChangeMusicName(Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;)V

    .line 60
    iget-object v0, p0, Lcom/living/emo/activity/BannerActivity;->mHomeMusic:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method

.method private initViews()V
    .locals 4

    const v0, 0x7f090330

    .line 67
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/BannerActivity;->mTopTxtIv:Landroid/widget/ImageView;

    const v0, 0x7f09015b

    .line 68
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/BannerActivity;->mHomeSet:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/living/emo/activity/BannerActivity;->mTopTxtIv:Landroid/widget/ImageView;

    const v1, 0x7f080353

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f090151

    .line 71
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/BannerActivity;->mGameReturn:Landroid/widget/ImageView;

    const v0, 0x7f09006b

    .line 72
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/living/emo/activity/BannerActivity;->mBanner:Lcom/youth/banner/Banner;

    const v0, 0x7f090189

    .line 73
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/indicator/CircleIndicator;

    .line 74
    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity;->mGameReturn:Landroid/widget/ImageView;

    new-instance v2, Lcom/living/emo/activity/BannerActivity$2;

    invoke-direct {v2, p0}, Lcom/living/emo/activity/BannerActivity$2;-><init>(Lcom/living/emo/activity/BannerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-static {}, Lcom/living/emo/bean/DataBean;->getData()Ljava/util/List;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/living/emo/adapter/ImageAdapter;

    invoke-direct {v2, v1}, Lcom/living/emo/adapter/ImageAdapter;-><init>(Ljava/util/List;)V

    .line 83
    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity;->mBanner:Lcom/youth/banner/Banner;

    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    move-result-object v1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {v1, v0, v2}, Lcom/youth/banner/Banner;->setIndicator(Lcom/youth/banner/indicator/Indicator;Z)Lcom/youth/banner/Banner;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Lcom/youth/banner/Banner;->addOnPageChangeListener(Lcom/youth/banner/listener/OnPageChangeListener;)Lcom/youth/banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/BannerActivity$3;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/BannerActivity$3;-><init>(Lcom/living/emo/activity/BannerActivity;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    .line 133
    iget-object v0, p0, Lcom/living/emo/activity/BannerActivity;->mBanner:Lcom/youth/banner/Banner;

    const/16 v1, 0xc8

    const/16 v2, 0xf

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1, v2, v3}, Lcom/youth/banner/Banner;->setBannerGalleryEffect(IIF)Lcom/youth/banner/Banner;

    .line 134
    iget-object v0, p0, Lcom/living/emo/activity/BannerActivity;->mBanner:Lcom/youth/banner/Banner;

    new-instance v1, Lcom/youth/banner/transformer/AlphaPageTransformer;

    invoke-direct {v1}, Lcom/youth/banner/transformer/AlphaPageTransformer;-><init>()V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/youth/banner/Banner;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 43
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/BannerActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/living/emo/activity/BannerActivity;->initViews()V

    .line 45
    invoke-direct {p0}, Lcom/living/emo/activity/BannerActivity;->initEvent()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/youth/banner/util/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 149
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 150
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->getUserIsPause()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPause()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPlay()V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    .line 161
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity;->mHomeMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method

.method public playMusic()V
    .locals 2

    .line 140
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->pause()V

    .line 143
    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity;->mHomeMusic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    :cond_0
    return-void
.end method
