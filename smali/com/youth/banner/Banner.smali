.class public Lcom/youth/banner/Banner;
.super Landroid/widget/FrameLayout;
.source "Banner.java"

# interfaces
.implements Lcom/youth/banner/util/BannerLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youth/banner/Banner$AutoLoopTask;,
        Lcom/youth/banner/Banner$BannerOnPageChangeCallback;,
        Lcom/youth/banner/Banner$Orientation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "BA:",
        "Lcom/youth/banner/adapter/BannerAdapter;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lcom/youth/banner/util/BannerLifecycleObserver;"
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_VALUE:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private indicatorGravity:I

.field private indicatorHeight:I

.field private indicatorMargin:I

.field private indicatorMarginBottom:I

.field private indicatorMarginLeft:I

.field private indicatorMarginRight:I

.field private indicatorMarginTop:I

.field private indicatorRadius:I

.field private indicatorSpace:I

.field private isIntercept:Z

.field private mAdapter:Lcom/youth/banner/adapter/BannerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBA;"
        }
    .end annotation
.end field

.field private mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mBannerRadius:F

.field private mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

.field private mDelayTime:J

.field private mIndicator:Lcom/youth/banner/indicator/Indicator;

.field private mIsAutoLoop:Z

.field private mIsInfiniteLoop:Z

.field private mIsViewPager2Drag:Z

.field private mLoopTask:Lcom/youth/banner/Banner$AutoLoopTask;

.field private mOnPageChangeListener:Lcom/youth/banner/listener/OnPageChangeListener;

.field private mPageChangeCallback:Lcom/youth/banner/Banner$BannerOnPageChangeCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/youth/banner/Banner<",
            "TT;TBA;>.BannerOnPageChangeCallback;"
        }
    .end annotation
.end field

.field private mScrollTime:I

.field private mStartPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mTouchSlop:I

.field private mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

.field private normalColor:I

.field private normalWidth:I

.field private selectedColor:I

.field private selectedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/youth/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v0}, Lcom/youth/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 62
    iput-boolean p3, p0, Lcom/youth/banner/Banner;->mIsInfiniteLoop:Z

    .line 64
    iput-boolean p3, p0, Lcom/youth/banner/Banner;->mIsAutoLoop:Z

    const-wide/16 v0, 0xbb8

    .line 66
    iput-wide v0, p0, Lcom/youth/banner/Banner;->mDelayTime:J

    const/16 v0, 0x258

    .line 68
    iput v0, p0, Lcom/youth/banner/Banner;->mScrollTime:I

    .line 70
    iput p3, p0, Lcom/youth/banner/Banner;->mStartPosition:I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/youth/banner/Banner;->mBannerRadius:F

    .line 75
    sget v0, Lcom/youth/banner/config/BannerConfig;->INDICATOR_NORMAL_WIDTH:I

    iput v0, p0, Lcom/youth/banner/Banner;->normalWidth:I

    .line 76
    sget v0, Lcom/youth/banner/config/BannerConfig;->INDICATOR_SELECTED_WIDTH:I

    iput v0, p0, Lcom/youth/banner/Banner;->selectedWidth:I

    const v0, -0x77000001

    .line 77
    iput v0, p0, Lcom/youth/banner/Banner;->normalColor:I

    const/high16 v0, -0x78000000

    .line 78
    iput v0, p0, Lcom/youth/banner/Banner;->selectedColor:I

    .line 79
    iput p3, p0, Lcom/youth/banner/Banner;->indicatorGravity:I

    .line 86
    sget v0, Lcom/youth/banner/config/BannerConfig;->INDICATOR_HEIGHT:I

    iput v0, p0, Lcom/youth/banner/Banner;->indicatorHeight:I

    .line 87
    sget v0, Lcom/youth/banner/config/BannerConfig;->INDICATOR_RADIUS:I

    iput v0, p0, Lcom/youth/banner/Banner;->indicatorRadius:I

    .line 99
    iput-boolean p3, p0, Lcom/youth/banner/Banner;->isIntercept:Z

    .line 348
    new-instance p3, Lcom/youth/banner/Banner$1;

    invoke-direct {p3, p0}, Lcom/youth/banner/Banner$1;-><init>(Lcom/youth/banner/Banner;)V

    iput-object p3, p0, Lcom/youth/banner/Banner;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 116
    invoke-direct {p0, p1}, Lcom/youth/banner/Banner;->init(Landroid/content/Context;)V

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/youth/banner/Banner;->initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/youth/banner/Banner;)Lcom/youth/banner/listener/OnPageChangeListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/youth/banner/Banner;->mOnPageChangeListener:Lcom/youth/banner/listener/OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/youth/banner/Banner;)Lcom/youth/banner/indicator/Indicator;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/youth/banner/Banner;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/youth/banner/Banner;->mIsInfiniteLoop:Z

    return p0
.end method

.method static synthetic access$300(Lcom/youth/banner/Banner;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/youth/banner/Banner;->mIsAutoLoop:Z

    return p0
.end method

.method static synthetic access$400(Lcom/youth/banner/Banner;)Lcom/youth/banner/Banner$AutoLoopTask;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/youth/banner/Banner;->mLoopTask:Lcom/youth/banner/Banner$AutoLoopTask;

    return-object p0
.end method

.method static synthetic access$500(Lcom/youth/banner/Banner;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/youth/banner/Banner;->mDelayTime:J

    return-wide v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 121
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/youth/banner/Banner;->mTouchSlop:I

    .line 122
    new-instance v0, Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/Banner;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 123
    new-instance v0, Lcom/youth/banner/Banner$BannerOnPageChangeCallback;

    invoke-direct {v0, p0}, Lcom/youth/banner/Banner$BannerOnPageChangeCallback;-><init>(Lcom/youth/banner/Banner;)V

    iput-object v0, p0, Lcom/youth/banner/Banner;->mPageChangeCallback:Lcom/youth/banner/Banner$BannerOnPageChangeCallback;

    .line 124
    new-instance v0, Lcom/youth/banner/Banner$AutoLoopTask;

    invoke-direct {v0, p0}, Lcom/youth/banner/Banner$AutoLoopTask;-><init>(Lcom/youth/banner/Banner;)V

    iput-object v0, p0, Lcom/youth/banner/Banner;->mLoopTask:Lcom/youth/banner/Banner$AutoLoopTask;

    .line 125
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youth/banner/Banner;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 126
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object p1, p0, Lcom/youth/banner/Banner;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 128
    iget-object p1, p0, Lcom/youth/banner/Banner;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/youth/banner/Banner;->mPageChangeCallback:Lcom/youth/banner/Banner$BannerOnPageChangeCallback;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 129
    iget-object p1, p0, Lcom/youth/banner/Banner;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/youth/banner/Banner;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 130
    invoke-static {p0}, Lcom/youth/banner/util/ScrollSpeedManger;->reflectLayoutManager(Lcom/youth/banner/Banner;)V

    .line 131
    iget-object p1, p0, Lcom/youth/banner/Banner;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initIndicator()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getAdapter()Lcom/youth/banner/adapter/BannerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youth/banner/config/IndicatorConfig;->isAttachToBanner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->removeIndicator()Lcom/youth/banner/Banner;

    .line 366
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->addView(Landroid/view/View;)V

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/youth/banner/Banner;->initIndicatorAttr()V

    .line 369
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->setIndicatorPageChange()Lcom/youth/banner/Banner;

    :cond_2
    :goto_0
    return-void
.end method

.method private initIndicatorAttr()V
    .locals 5

    .line 163
    iget v0, p0, Lcom/youth/banner/Banner;->indicatorMargin:I

    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Lcom/youth/banner/config/IndicatorConfig$Margins;

    invoke-direct {v1, v0}, Lcom/youth/banner/config/IndicatorConfig$Margins;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/youth/banner/Banner;->setIndicatorMargins(Lcom/youth/banner/config/IndicatorConfig$Margins;)Lcom/youth/banner/Banner;

    goto :goto_0

    .line 165
    :cond_0
    iget v0, p0, Lcom/youth/banner/Banner;->indicatorMarginLeft:I

    if-nez v0, :cond_1

    iget v1, p0, Lcom/youth/banner/Banner;->indicatorMarginTop:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/youth/banner/Banner;->indicatorMarginRight:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/youth/banner/Banner;->indicatorMarginBottom:I

    if-eqz v1, :cond_2

    .line 169
    :cond_1
    new-instance v1, Lcom/youth/banner/config/IndicatorConfig$Margins;

    iget v2, p0, Lcom/youth/banner/Banner;->indicatorMarginTop:I

    iget v3, p0, Lcom/youth/banner/Banner;->indicatorMarginRight:I

    iget v4, p0, Lcom/youth/banner/Banner;->indicatorMarginBottom:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/youth/banner/config/IndicatorConfig$Margins;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/youth/banner/Banner;->setIndicatorMargins(Lcom/youth/banner/config/IndicatorConfig$Margins;)Lcom/youth/banner/Banner;

    .line 175
    :cond_2
    :goto_0
    iget v0, p0, Lcom/youth/banner/Banner;->indicatorSpace:I

    if-lez v0, :cond_3

    .line 176
    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->setIndicatorSpace(I)Lcom/youth/banner/Banner;

    .line 178
    :cond_3
    iget v0, p0, Lcom/youth/banner/Banner;->indicatorGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 179
    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->setIndicatorGravity(I)Lcom/youth/banner/Banner;

    .line 181
    :cond_4
    iget v0, p0, Lcom/youth/banner/Banner;->normalWidth:I

    if-lez v0, :cond_5

    .line 182
    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->setIndicatorNormalWidth(I)Lcom/youth/banner/Banner;

    .line 184
    :cond_5
    iget v0, p0, Lcom/youth/banner/Banner;->selectedWidth:I

    if-lez v0, :cond_6

    .line 185
    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->setIndicatorSelectedWidth(I)Lcom/youth/banner/Banner;

    .line 188
    :cond_6
    iget v0, p0, Lcom/youth/banner/Banner;->indicatorHeight:I

    if-lez v0, :cond_7

    .line 189
    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->setIndicatorHeight(I)Lcom/youth/banner/Banner;

    .line 191
    :cond_7
    iget v0, p0, Lcom/youth/banner/Banner;->indicatorRadius:I

    if-lez v0, :cond_8

    .line 192
    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->setIndicatorRadius(I)Lcom/youth/banner/Banner;

    .line 194
    :cond_8
    iget v0, p0, Lcom/youth/banner/Banner;->normalColor:I

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->setIndicatorNormalColor(I)Lcom/youth/banner/Banner;

    .line 195
    iget v0, p0, Lcom/youth/banner/Banner;->selectedColor:I

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->setIndicatorSelectedColor(I)Lcom/youth/banner/Banner;

    return-void
.end method

.method private initTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 138
    :cond_0
    sget-object v0, Lcom/youth/banner/R$styleable;->Banner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 139
    sget p2, Lcom/youth/banner/R$styleable;->Banner_banner_radius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/youth/banner/Banner;->mBannerRadius:F

    .line 140
    sget p2, Lcom/youth/banner/R$styleable;->Banner_delay_time:I

    const/16 v1, 0xbb8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Lcom/youth/banner/Banner;->mDelayTime:J

    .line 141
    sget p2, Lcom/youth/banner/R$styleable;->Banner_is_auto_loop:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/youth/banner/Banner;->mIsAutoLoop:Z

    .line 142
    sget p2, Lcom/youth/banner/R$styleable;->Banner_is_infinite_loop:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/youth/banner/Banner;->mIsInfiniteLoop:Z

    .line 143
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_normal_width:I

    sget v2, Lcom/youth/banner/config/BannerConfig;->INDICATOR_NORMAL_WIDTH:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->normalWidth:I

    .line 144
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_selected_width:I

    sget v2, Lcom/youth/banner/config/BannerConfig;->INDICATOR_SELECTED_WIDTH:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->selectedWidth:I

    .line 145
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_normal_color:I

    const v2, -0x77000001

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->normalColor:I

    .line 146
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_selected_color:I

    const/high16 v2, -0x78000000

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->selectedColor:I

    .line 147
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->indicatorGravity:I

    .line 148
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_space:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->indicatorSpace:I

    .line 149
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->indicatorMargin:I

    .line 150
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_marginLeft:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->indicatorMarginLeft:I

    .line 151
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_marginTop:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->indicatorMarginTop:I

    .line 152
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_marginRight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->indicatorMarginRight:I

    .line 153
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_marginBottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->indicatorMarginBottom:I

    .line 154
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_height:I

    sget v1, Lcom/youth/banner/config/BannerConfig;->INDICATOR_HEIGHT:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->indicatorHeight:I

    .line 155
    sget p2, Lcom/youth/banner/R$styleable;->Banner_indicator_radius:I

    sget v1, Lcom/youth/banner/config/BannerConfig;->INDICATOR_RADIUS:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/youth/banner/Banner;->indicatorRadius:I

    .line 156
    sget p2, Lcom/youth/banner/R$styleable;->Banner_banner_orientation:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 157
    invoke-virtual {p0, p2}, Lcom/youth/banner/Banner;->setOrientation(I)Lcom/youth/banner/Banner;

    .line 158
    invoke-direct {p0}, Lcom/youth/banner/Banner;->setInfiniteLoop()V

    .line 159
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setInfiniteLoop()V
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->isInfiniteLoop()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->isAutoLoop(Z)Lcom/youth/banner/Banner;

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->isInfiniteLoop()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->setStartPosition(I)Lcom/youth/banner/Banner;

    return-void
.end method

.method private setRecyclerViewPadding(I)V
    .locals 4

    .line 381
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 382
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 383
    invoke-virtual {v0, v1, p1, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v0, p1, v1, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 387
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method public addBannerLifecycleObserver(Landroidx/lifecycle/LifecycleOwner;)Lcom/youth/banner/Banner;
    .locals 2

    if-eqz p1, :cond_0

    .line 879
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/youth/banner/util/BannerLifecycleObserverAdapter;

    invoke-direct {v1, p1, p0}, Lcom/youth/banner/util/BannerLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/youth/banner/util/BannerLifecycleObserver;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-object p0
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)Lcom/youth/banner/Banner;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-object p0
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)Lcom/youth/banner/Banner;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-object p0
.end method

.method public addOnPageChangeListener(Lcom/youth/banner/listener/OnPageChangeListener;)Lcom/youth/banner/Banner;
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/youth/banner/Banner;->mOnPageChangeListener:Lcom/youth/banner/listener/OnPageChangeListener;

    return-object p0
.end method

.method public addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/youth/banner/Banner;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/youth/banner/Banner;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-object p0
.end method

.method public destroy()V
    .locals 2

    .line 592
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youth/banner/Banner;->mPageChangeCallback:Lcom/youth/banner/Banner$BannerOnPageChangeCallback;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v1, p0, Lcom/youth/banner/Banner;->mPageChangeCallback:Lcom/youth/banner/Banner$BannerOnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/youth/banner/Banner;->mPageChangeCallback:Lcom/youth/banner/Banner$BannerOnPageChangeCallback;

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->stop()Lcom/youth/banner/Banner;

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 248
    iget v0, p0, Lcom/youth/banner/Banner;->mBannerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 249
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 250
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/youth/banner/Banner;->mBannerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 252
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 254
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    .line 210
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->stop()Lcom/youth/banner/Banner;

    goto :goto_1

    .line 208
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 212
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Lcom/youth/banner/adapter/BannerAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBA;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/youth/banner/Banner;->mAdapter:Lcom/youth/banner/adapter/BannerAdapter;

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youth/banner/R$string;->banner_adapter_use_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youth/banner/util/LogUtils;->e(Ljava/lang/String;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/Banner;->mAdapter:Lcom/youth/banner/adapter/BannerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIndicator()Lcom/youth/banner/indicator/Indicator;
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-nez v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youth/banner/R$string;->indicator_null_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youth/banner/util/LogUtils;->e(Ljava/lang/String;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    return-object v0
.end method

.method public getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getIndicator()Lcom/youth/banner/indicator/Indicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getIndicator()Lcom/youth/banner/indicator/Indicator;

    move-result-object v0

    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getAdapter()Lcom/youth/banner/adapter/BannerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getAdapter()Lcom/youth/banner/adapter/BannerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youth/banner/adapter/BannerAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getRealCount()I
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getAdapter()Lcom/youth/banner/adapter/BannerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youth/banner/adapter/BannerAdapter;->getRealCount()I

    move-result v0

    return v0
.end method

.method public getScrollTime()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/youth/banner/Banner;->mScrollTime:I

    return v0
.end method

.method public getViewPager2()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/youth/banner/Banner;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method public isAutoLoop(Z)Lcom/youth/banner/Banner;
    .locals 0

    .line 544
    iput-boolean p1, p0, Lcom/youth/banner/Banner;->mIsAutoLoop:Z

    return-object p0
.end method

.method public isInfiniteLoop()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->mIsInfiniteLoop:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 259
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 260
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 896
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->destroy()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 265
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 266
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->stop()Lcom/youth/banner/Banner;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 217
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/youth/banner/Banner;->isIntercept:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto :goto_3

    .line 227
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 229
    iget v4, p0, Lcom/youth/banner/Banner;->mStartX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 230
    iget v4, p0, Lcom/youth/banner/Banner;->mStartY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 231
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v4

    if-nez v4, :cond_3

    .line 232
    iget v4, p0, Lcom/youth/banner/Banner;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/youth/banner/Banner;->mIsViewPager2Drag:Z

    goto :goto_2

    .line 234
    :cond_3
    iget v4, p0, Lcom/youth/banner/Banner;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/youth/banner/Banner;->mIsViewPager2Drag:Z

    .line 236
    :goto_2
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youth/banner/Banner;->mIsViewPager2Drag:Z

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 240
    :cond_5
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 222
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/youth/banner/Banner;->mStartX:F

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/youth/banner/Banner;->mStartY:F

    .line 224
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 243
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 218
    :cond_7
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 886
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 891
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->stop()Lcom/youth/banner/Banner;

    return-void
.end method

.method public removeIndicator()Lcom/youth/banner/Banner;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 478
    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->removeView(Landroid/view/View;)V

    :cond_0
    return-object p0
.end method

.method public removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/youth/banner/Banner;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/youth/banner/Banner;->mCompositePageTransformer:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-object p0
.end method

.method public setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBA;)",
            "Lcom/youth/banner/Banner;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 606
    iput-object p1, p0, Lcom/youth/banner/Banner;->mAdapter:Lcom/youth/banner/adapter/BannerAdapter;

    .line 607
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->isInfiniteLoop()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/youth/banner/Banner;->mAdapter:Lcom/youth/banner/adapter/BannerAdapter;

    invoke-virtual {v0, v1}, Lcom/youth/banner/adapter/BannerAdapter;->setIncreaseCount(I)V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/youth/banner/Banner;->mAdapter:Lcom/youth/banner/adapter/BannerAdapter;

    iget-object v2, p0, Lcom/youth/banner/Banner;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v2}, Lcom/youth/banner/adapter/BannerAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 611
    iget-object v0, p0, Lcom/youth/banner/Banner;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 612
    iget p1, p0, Lcom/youth/banner/Banner;->mStartPosition:I

    invoke-virtual {p0, p1, v1}, Lcom/youth/banner/Banner;->setCurrentItem(IZ)Lcom/youth/banner/Banner;

    .line 613
    invoke-direct {p0}, Lcom/youth/banner/Banner;->initIndicator()V

    return-object p0

    .line 604
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youth/banner/R$string;->banner_adapter_null_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdapter(Lcom/youth/banner/adapter/BannerAdapter;Z)Lcom/youth/banner/Banner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBA;Z)",
            "Lcom/youth/banner/Banner;"
        }
    .end annotation

    .line 624
    iput-boolean p2, p0, Lcom/youth/banner/Banner;->mIsInfiniteLoop:Z

    .line 625
    invoke-direct {p0}, Lcom/youth/banner/Banner;->setInfiniteLoop()V

    .line 626
    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    return-object p0
.end method

.method public setBannerGalleryEffect(II)Lcom/youth/banner/Banner;
    .locals 1

    const v0, 0x3f59999a    # 0.85f

    .line 715
    invoke-virtual {p0, p1, p2, v0}, Lcom/youth/banner/Banner;->setBannerGalleryEffect(IIF)Lcom/youth/banner/Banner;

    move-result-object p1

    return-object p1
.end method

.method public setBannerGalleryEffect(IIF)Lcom/youth/banner/Banner;
    .locals 2

    if-lez p2, :cond_0

    .line 727
    new-instance v0, Landroidx/viewpager2/widget/MarginPageTransformer;

    int-to-float v1, p2

    invoke-static {v1}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/youth/banner/Banner;

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 730
    new-instance v0, Lcom/youth/banner/transformer/ScaleInTransformer;

    invoke-direct {v0, p3}, Lcom/youth/banner/transformer/ScaleInTransformer;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/youth/banner/Banner;

    :cond_1
    add-int/2addr p1, p2

    int-to-float p1, p1

    .line 732
    invoke-static {p1}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/youth/banner/Banner;->setRecyclerViewPadding(I)V

    return-object p0
.end method

.method public setBannerGalleryMZ(I)Lcom/youth/banner/Banner;
    .locals 1

    const v0, 0x3f6147ae    # 0.88f

    .line 742
    invoke-virtual {p0, p1, v0}, Lcom/youth/banner/Banner;->setBannerGalleryMZ(IF)Lcom/youth/banner/Banner;

    move-result-object p1

    return-object p1
.end method

.method public setBannerGalleryMZ(IF)Lcom/youth/banner/Banner;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 753
    new-instance v0, Lcom/youth/banner/transformer/MZScaleInTransformer;

    invoke-direct {v0, p2}, Lcom/youth/banner/transformer/MZScaleInTransformer;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/youth/banner/Banner;

    :cond_0
    int-to-float p1, p1

    .line 755
    invoke-static {p1}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/youth/banner/Banner;->setRecyclerViewPadding(I)V

    return-object p0
.end method

.method public setBannerRound(F)Lcom/youth/banner/Banner;
    .locals 0

    .line 695
    iput p1, p0, Lcom/youth/banner/Banner;->mBannerRadius:F

    return-object p0
.end method

.method public setBannerRound2(F)Lcom/youth/banner/Banner;
    .locals 0

    .line 704
    invoke-static {p0, p1}, Lcom/youth/banner/util/BannerUtils;->setBannerRound(Landroid/view/View;F)V

    return-object p0
.end method

.method public setCurrentItem(I)Lcom/youth/banner/Banner;
    .locals 1

    const/4 v0, 0x1

    .line 460
    invoke-virtual {p0, p1, v0}, Lcom/youth/banner/Banner;->setCurrentItem(IZ)Lcom/youth/banner/Banner;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentItem(IZ)Lcom/youth/banner/Banner;
    .locals 1

    .line 464
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-object p0
.end method

.method public setDatas(Ljava/util/List;)Lcom/youth/banner/Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/youth/banner/Banner;"
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getAdapter()Lcom/youth/banner/adapter/BannerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getAdapter()Lcom/youth/banner/adapter/BannerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/adapter/BannerAdapter;->setDatas(Ljava/util/List;)V

    .line 639
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getAdapter()Lcom/youth/banner/adapter/BannerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/youth/banner/adapter/BannerAdapter;->notifyDataSetChanged()V

    .line 640
    iget p1, p0, Lcom/youth/banner/Banner;->mStartPosition:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/youth/banner/Banner;->setCurrentItem(IZ)Lcom/youth/banner/Banner;

    .line 641
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->setIndicatorPageChange()Lcom/youth/banner/Banner;

    .line 642
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    :cond_0
    return-object p0
.end method

.method public setDelayTime(J)Lcom/youth/banner/Banner;
    .locals 0

    .line 555
    iput-wide p1, p0, Lcom/youth/banner/Banner;->mDelayTime:J

    return-object p0
.end method

.method public setIndicator(Lcom/youth/banner/indicator/Indicator;)Lcom/youth/banner/Banner;
    .locals 1

    const/4 v0, 0x1

    .line 769
    invoke-virtual {p0, p1, v0}, Lcom/youth/banner/Banner;->setIndicator(Lcom/youth/banner/indicator/Indicator;Z)Lcom/youth/banner/Banner;

    move-result-object p1

    return-object p1
.end method

.method public setIndicator(Lcom/youth/banner/indicator/Indicator;Z)Lcom/youth/banner/Banner;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->removeIndicator()Lcom/youth/banner/Banner;

    .line 781
    invoke-interface {p1}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/youth/banner/config/IndicatorConfig;->setAttachToBanner(Z)Lcom/youth/banner/config/IndicatorConfig;

    .line 782
    iput-object p1, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    .line 783
    invoke-direct {p0}, Lcom/youth/banner/Banner;->initIndicator()V

    return-object p0
.end method

.method public setIndicatorGravity(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youth/banner/config/IndicatorConfig;->isAttachToBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setGravity(I)Lcom/youth/banner/config/IndicatorConfig;

    .line 815
    iget-object p1, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    invoke-interface {p1}, Lcom/youth/banner/indicator/Indicator;->getIndicatorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-object p0
.end method

.method public setIndicatorHeight(I)Lcom/youth/banner/Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/youth/banner/Banner<",
            "TT;TBA;>;"
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 866
    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setHeight(I)Lcom/youth/banner/config/IndicatorConfig;

    :cond_0
    return-object p0
.end method

.method public setIndicatorMargins(Lcom/youth/banner/config/IndicatorConfig$Margins;)Lcom/youth/banner/Banner;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youth/banner/config/IndicatorConfig;->isAttachToBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setMargins(Lcom/youth/banner/config/IndicatorConfig$Margins;)Lcom/youth/banner/config/IndicatorConfig;

    .line 830
    iget-object p1, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    invoke-interface {p1}, Lcom/youth/banner/indicator/Indicator;->getIndicatorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-object p0
.end method

.method public setIndicatorNormalColor(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 802
    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setNormalColor(I)Lcom/youth/banner/config/IndicatorConfig;

    :cond_0
    return-object p0
.end method

.method public setIndicatorNormalColorRes(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 808
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->setIndicatorNormalColor(I)Lcom/youth/banner/Banner;

    return-object p0
.end method

.method public setIndicatorNormalWidth(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 845
    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setNormalWidth(I)Lcom/youth/banner/config/IndicatorConfig;

    :cond_0
    return-object p0
.end method

.method public setIndicatorPageChange()Lcom/youth/banner/Banner;
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->isInfiniteLoop()Z

    move-result v0

    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getRealCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/youth/banner/util/BannerUtils;->getRealPosition(ZII)I

    move-result v0

    .line 471
    iget-object v1, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getRealCount()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/youth/banner/indicator/Indicator;->onPageChanged(II)V

    :cond_0
    return-object p0
.end method

.method public setIndicatorRadius(I)Lcom/youth/banner/Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/youth/banner/Banner<",
            "TT;TBA;>;"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 859
    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setRadius(I)Lcom/youth/banner/config/IndicatorConfig;

    :cond_0
    return-object p0
.end method

.method public setIndicatorSelectedColor(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 790
    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setSelectedColor(I)Lcom/youth/banner/config/IndicatorConfig;

    :cond_0
    return-object p0
.end method

.method public setIndicatorSelectedColorRes(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 796
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->setIndicatorSelectedColor(I)Lcom/youth/banner/Banner;

    return-object p0
.end method

.method public setIndicatorSelectedWidth(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 852
    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setSelectedWidth(I)Lcom/youth/banner/config/IndicatorConfig;

    :cond_0
    return-object p0
.end method

.method public setIndicatorSpace(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 822
    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setIndicatorSpace(I)Lcom/youth/banner/config/IndicatorConfig;

    :cond_0
    return-object p0
.end method

.method public setIndicatorWidth(II)Lcom/youth/banner/Banner;
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    if-eqz v0, :cond_0

    .line 837
    invoke-interface {v0}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/config/IndicatorConfig;->setNormalWidth(I)Lcom/youth/banner/config/IndicatorConfig;

    .line 838
    iget-object p1, p0, Lcom/youth/banner/Banner;->mIndicator:Lcom/youth/banner/indicator/Indicator;

    invoke-interface {p1}, Lcom/youth/banner/indicator/Indicator;->getIndicatorConfig()Lcom/youth/banner/config/IndicatorConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/youth/banner/config/IndicatorConfig;->setSelectedWidth(I)Lcom/youth/banner/config/IndicatorConfig;

    :cond_0
    return-object p0
.end method

.method public setIntercept(Z)Lcom/youth/banner/Banner;
    .locals 0

    .line 455
    iput-boolean p1, p0, Lcom/youth/banner/Banner;->isIntercept:Z

    return-object p0
.end method

.method public setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;
    .locals 1

    .line 669
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getAdapter()Lcom/youth/banner/adapter/BannerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getAdapter()Lcom/youth/banner/adapter/BannerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youth/banner/adapter/BannerAdapter;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)V

    :cond_0
    return-object p0
.end method

.method public setOrientation(I)Lcom/youth/banner/Banner;
    .locals 1

    .line 653
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    return-object p0
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/youth/banner/Banner;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-object p0
.end method

.method public setScrollTime(I)Lcom/youth/banner/Banner;
    .locals 0

    .line 563
    iput p1, p0, Lcom/youth/banner/Banner;->mScrollTime:I

    return-object p0
.end method

.method public setStartPosition(I)Lcom/youth/banner/Banner;
    .locals 0

    .line 488
    iput p1, p0, Lcom/youth/banner/Banner;->mStartPosition:I

    return-object p0
.end method

.method public setTouchSlop(I)Lcom/youth/banner/Banner;
    .locals 0

    .line 661
    iput p1, p0, Lcom/youth/banner/Banner;->mTouchSlop:I

    return-object p0
.end method

.method public setUserInputEnabled(Z)Lcom/youth/banner/Banner;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->getViewPager2()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    return-object p0
.end method

.method public start()Lcom/youth/banner/Banner;
    .locals 3

    .line 571
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->mIsAutoLoop:Z

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->stop()Lcom/youth/banner/Banner;

    .line 573
    iget-object v0, p0, Lcom/youth/banner/Banner;->mLoopTask:Lcom/youth/banner/Banner$AutoLoopTask;

    iget-wide v1, p0, Lcom/youth/banner/Banner;->mDelayTime:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/youth/banner/Banner;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p0
.end method

.method public stop()Lcom/youth/banner/Banner;
    .locals 1

    .line 582
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->mIsAutoLoop:Z

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/youth/banner/Banner;->mLoopTask:Lcom/youth/banner/Banner$AutoLoopTask;

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p0
.end method
