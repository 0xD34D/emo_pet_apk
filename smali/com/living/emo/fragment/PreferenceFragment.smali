.class public Lcom/living/emo/fragment/PreferenceFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/PreferenceFragment$Options;,
        Lcom/living/emo/fragment/PreferenceFragment$State;
    }
.end annotation


# instance fields
.field private currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

.field private currState:Lcom/living/emo/fragment/PreferenceFragment$State;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private final mHandler:Landroid/os/Handler;

.field private mLengthImperial:Landroid/widget/RadioButton;

.field private mLengthMetric:Landroid/widget/RadioButton;

.field private mLoadPreferenceLoadingView:Landroid/view/View;

.field private mLoadPreferenceMainView:Landroid/view/View;

.field mPreferenceContainer:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c7
    .end annotation
.end field

.field mRadioGroupLength:Landroid/widget/RadioGroup;

.field mRadioGroupSound:Landroid/widget/RadioGroup;

.field mRadioGroupTemperature:Landroid/widget/RadioGroup;

.field mRadioGroupUpdate:Landroid/widget/RadioGroup;

.field mSettingActivity:Lcom/living/emo/activity/SettingActivity;

.field mSoundOff:Landroid/widget/RadioButton;

.field mSoundOn:Landroid/widget/RadioButton;

.field private mTemperatureCelsius:Landroid/widget/RadioButton;

.field private mTemperatureFahrenheit:Landroid/widget/RadioButton;

.field private mUpdateOff:Landroid/widget/RadioButton;

.field private mUpdateOn:Landroid/widget/RadioButton;

.field mVolumeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

.field private mVolumeString:[Ljava/lang/String;

.field private task:Ljava/lang/Runnable;

.field private toggleState:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$VnPp91h5quktz4lutzYrJH4JT5w;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$VnPp91h5quktz4lutzYrJH4JT5w;-><init>(Lcom/living/emo/fragment/PreferenceFragment;)V

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->task:Ljava/lang/Runnable;

    const-string v0, "volume_mute"

    const-string v1, "volume_low"

    const-string v2, "volume_med"

    const-string v3, "volume_high"

    .line 75
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mVolumeString:[Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/living/emo/fragment/PreferenceFragment$Options;->NONE:Lcom/living/emo/fragment/PreferenceFragment$Options;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    .line 80
    sget-object v0, Lcom/living/emo/fragment/PreferenceFragment$State;->LOADING:Lcom/living/emo/fragment/PreferenceFragment$State;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->currState:Lcom/living/emo/fragment/PreferenceFragment$State;

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->toggleState:Z

    return-void
.end method

.method static synthetic access$002(Lcom/living/emo/fragment/PreferenceFragment;Lcom/living/emo/fragment/PreferenceFragment$Options;)Lcom/living/emo/fragment/PreferenceFragment$Options;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    return-object p1
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/PreferenceFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mUpdateOn:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/living/emo/fragment/PreferenceFragment;Lcom/living/emo/fragment/PreferenceFragment$State;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/PreferenceFragment;->changeStateView(Lcom/living/emo/fragment/PreferenceFragment$State;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/living/emo/fragment/PreferenceFragment;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->toggleState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/fragment/PreferenceFragment;)[Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mVolumeString:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/PreferenceFragment;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mTemperatureCelsius:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mTemperatureFahrenheit:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLengthMetric:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLengthImperial:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mUpdateOff:Landroid/widget/RadioButton;

    return-object p0
.end method

.method private changeStateView(Lcom/living/emo/fragment/PreferenceFragment$State;)V
    .locals 4

    .line 320
    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->currState:Lcom/living/emo/fragment/PreferenceFragment$State;

    .line 321
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceLoadingView:Landroid/view/View;

    sget-object v1, Lcom/living/emo/fragment/PreferenceFragment$State;->LOADING:Lcom/living/emo/fragment/PreferenceFragment$State;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->currState:Lcom/living/emo/fragment/PreferenceFragment$State;

    sget-object v1, Lcom/living/emo/fragment/PreferenceFragment$State;->MAIN:Lcom/living/emo/fragment/PreferenceFragment$State;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private loadPreferenceLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006f

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadPreferenceMainView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0076

    const/4 v1, 0x0

    .line 326
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method initData()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcom/living/emo/fragment/PreferenceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/SettingActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    .line 124
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 125
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->preference()[B

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mRadioGroupTemperature:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$joE_JV-OPKKSQNn4JZ-ZyHOJVzQ;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$joE_JV-OPKKSQNn4JZ-ZyHOJVzQ;-><init>(Lcom/living/emo/fragment/PreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mRadioGroupLength:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$G6Bn10G4rXzLhf9L74av9wvsu-Q;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$G6Bn10G4rXzLhf9L74av9wvsu-Q;-><init>(Lcom/living/emo/fragment/PreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mRadioGroupUpdate:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$S1BJvkbYa32Z20gKKMvn5ETtK7s;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$S1BJvkbYa32Z20gKKMvn5ETtK7s;-><init>(Lcom/living/emo/fragment/PreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mRadioGroupSound:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$eA-ZFuk501Xnx-Cx0CiGYEw5NwE;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PreferenceFragment$eA-ZFuk501Xnx-Cx0CiGYEw5NwE;-><init>(Lcom/living/emo/fragment/PreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mVolumeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    new-instance v1, Lcom/living/emo/fragment/PreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/PreferenceFragment$1;-><init>(Lcom/living/emo/fragment/PreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/jaygoo/widget/OnRangeChangedListener;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 97
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f090257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaygoo/widget/RangeSeekBar;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mVolumeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    .line 100
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f090251

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mRadioGroupTemperature:Landroid/widget/RadioGroup;

    .line 101
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f090252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mTemperatureCelsius:Landroid/widget/RadioButton;

    .line 102
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f090253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mTemperatureFahrenheit:Landroid/widget/RadioButton;

    .line 104
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f09024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mRadioGroupLength:Landroid/widget/RadioGroup;

    .line 105
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f090250

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLengthMetric:Landroid/widget/RadioButton;

    .line 106
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f09024f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLengthImperial:Landroid/widget/RadioButton;

    .line 108
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f090254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mRadioGroupUpdate:Landroid/widget/RadioGroup;

    .line 109
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f090255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mUpdateOff:Landroid/widget/RadioButton;

    .line 110
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f090256

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mUpdateOn:Landroid/widget/RadioButton;

    .line 112
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f09024b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mRadioGroupSound:Landroid/widget/RadioGroup;

    .line 113
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f09024d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSoundOn:Landroid/widget/RadioButton;

    .line 114
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    const v1, 0x7f09024c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSoundOff:Landroid/widget/RadioButton;

    .line 116
    sget-object v0, Lcom/living/emo/fragment/PreferenceFragment$State;->LOADING:Lcom/living/emo/fragment/PreferenceFragment$State;

    invoke-direct {p0, v0}, Lcom/living/emo/fragment/PreferenceFragment;->changeStateView(Lcom/living/emo/fragment/PreferenceFragment$State;)V

    return-void
.end method

.method public synthetic lambda$initEvent$1$PreferenceFragment(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 132
    iget-boolean p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->toggleState:Z

    if-eqz p1, :cond_0

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRadioGroupTemperature: checkedId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    const-string v0, "Processing"

    invoke-static {p1, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    sget-object p1, Lcom/living/emo/fragment/PreferenceFragment$Options;->TEMPERATURE:Lcom/living/emo/fragment/PreferenceFragment$Options;

    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "temp_f"

    .line 144
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    goto :goto_0

    :pswitch_1
    const-string p1, "temp_c"

    .line 140
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090252
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$initEvent$2$PreferenceFragment(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 151
    iget-boolean p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->toggleState:Z

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    const-string v0, "Processing"

    invoke-static {p1, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    sget-object p1, Lcom/living/emo/fragment/PreferenceFragment$Options;->LENGTH:Lcom/living/emo/fragment/PreferenceFragment$Options;

    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRadioGroupLength: checkedId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "length_metric"

    .line 159
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    goto :goto_0

    :pswitch_1
    const-string p1, "length_imperial"

    .line 163
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09024f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$initEvent$3$PreferenceFragment(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 170
    iget-boolean p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->toggleState:Z

    if-eqz p1, :cond_0

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRadioGroupUpdate: checkedId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    const-string v0, "Processing"

    invoke-static {p1, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    sget-object p1, Lcom/living/emo/fragment/PreferenceFragment$Options;->AUTO_UPDATE:Lcom/living/emo/fragment/PreferenceFragment$Options;

    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "auto_update_on"

    .line 181
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    goto :goto_0

    :pswitch_1
    const-string p1, "auto_update_off"

    .line 177
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090255
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$initEvent$4$PreferenceFragment(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 189
    iget-boolean p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->toggleState:Z

    if-eqz p1, :cond_0

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRadioGroupUpdate: checkedId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    const-string v0, "Processing"

    invoke-static {p1, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    sget-object p1, Lcom/living/emo/fragment/PreferenceFragment$Options;->SCHEDULE_SOUND:Lcom/living/emo/fragment/PreferenceFragment$Options;

    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "schedule_s_on"

    .line 200
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    goto :goto_0

    :pswitch_1
    const-string p1, "schedule_s_off"

    .line 196
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09024c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$new$0$PreferenceFragment()V
    .locals 1

    .line 63
    sget-object v0, Lcom/living/emo/fragment/PreferenceFragment$Options;->NONE:Lcom/living/emo/fragment/PreferenceFragment$Options;

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    .line 64
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0077

    return v0
.end method

.method protected loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/PreferenceFragment;->loadPreferenceLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceLoadingView:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mPreferenceContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/PreferenceFragment;->loadPreferenceMainView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mLoadPreferenceMainView:Landroid/view/View;

    .line 91
    iget-object p2, p0, Lcom/living/emo/fragment/PreferenceFragment;->mPreferenceContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->toggleState:Z

    .line 337
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 338
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 236
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:CitySettingFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/living/emo/fragment/PreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/PreferenceFragment$2;-><init>(Lcom/living/emo/fragment/PreferenceFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BlePreferenceResponseParse;->preference(Ljava/lang/String;Lcom/living/emo/blebean/parse/BlePreferenceResponseParse$Callback;)V

    .line 275
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 276
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "setting_rsp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    invoke-virtual {v0}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageEvent: result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 282
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/fragment/PreferenceFragment;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 284
    sget-object p1, Lcom/living/emo/fragment/PreferenceFragment$3;->$SwitchMap$com$living$emo$fragment$PreferenceFragment$Options:[I

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PreferenceFragment$Options;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    const-string v0, "Setting Successful"

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/SettingActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 295
    sget-object p1, Lcom/living/emo/fragment/PreferenceFragment$3;->$SwitchMap$com$living$emo$fragment$PreferenceFragment$Options:[I

    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PreferenceFragment$Options;->ordinal()I

    move-result v0

    aget p1, p1, v0

    .line 311
    :cond_2
    :goto_0
    sget-object p1, Lcom/living/emo/fragment/PreferenceFragment$Options;->NONE:Lcom/living/emo/fragment/PreferenceFragment$Options;

    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment;->currOptions:Lcom/living/emo/fragment/PreferenceFragment$Options;

    :cond_3
    return-void
.end method
