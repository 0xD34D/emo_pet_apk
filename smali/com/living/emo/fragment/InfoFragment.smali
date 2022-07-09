.class public Lcom/living/emo/fragment/InfoFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "InfoFragment.java"


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/TextBean;",
            ">;"
        }
    .end annotation
.end field

.field infoBanner:Lcom/youth/banner/Banner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/InfoFragment;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method initView()V
    .locals 3

    .line 30
    new-instance v0, Lcom/living/emo/adapter/BannerTextAdpter;

    iget-object v1, p0, Lcom/living/emo/fragment/InfoFragment;->data:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/living/emo/adapter/BannerTextAdpter;-><init>(Ljava/util/List;)V

    .line 31
    new-instance v1, Lcom/youth/banner/indicator/CircleIndicator;

    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youth/banner/indicator/CircleIndicator;-><init>(Landroid/content/Context;)V

    .line 32
    iget-object v2, p0, Lcom/living/emo/fragment/InfoFragment;->infoBanner:Lcom/youth/banner/Banner;

    invoke-virtual {v2, v0}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Lcom/youth/banner/Banner;->addBannerLifecycleObserver(Landroidx/lifecycle/LifecycleOwner;)Lcom/youth/banner/Banner;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setIndicator(Lcom/youth/banner/indicator/Indicator;)Lcom/youth/banner/Banner;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 35
    invoke-static {v1}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setIndicatorSelectedWidth(I)Lcom/youth/banner/Banner;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->isAutoLoop(Z)Lcom/youth/banner/Banner;

    move-result-object v0

    const v1, 0x7f060001

    .line 37
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setIndicatorSelectedColorRes(I)Lcom/youth/banner/Banner;

    move-result-object v0

    const/high16 v1, 0x7f060000

    .line 38
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setIndicatorNormalColorRes(I)Lcom/youth/banner/Banner;

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c006a

    return v0
.end method

.method protected setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/TextBean;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/living/emo/fragment/InfoFragment;->data:Ljava/util/List;

    return-void
.end method
