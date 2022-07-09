.class public Lcom/living/emo/fragment/NavSetFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "NavSetFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlexaSettingFragment:Lcom/living/emo/fragment/AlexaSettingFragment;

.field private mCfm:Landroidx/fragment/app/FragmentManager;

.field private mCitySettingFragment:Lcom/living/emo/fragment/CitySettingFragment;

.field mFrameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020c
    .end annotation
.end field

.field private mFrmareSettingFragment:Lcom/living/emo/fragment/FrmareSettingFragment;

.field private mPowerOffFragment:Lcom/living/emo/fragment/PowerOffFragment;

.field mPreference:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c8
    .end annotation
.end field

.field private mPreferenceFragment:Lcom/living/emo/fragment/PreferenceFragment;

.field mRadioGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020d
    .end annotation
.end field

.field private mThanksFragment:Lcom/living/emo/fragment/ThanksFragment;

.field private mTimezoneFragment:Lcom/living/emo/fragment/TimezoneFragment;

.field private mVolumeFragment:Lcom/living/emo/fragment/VolumeFragment;

.field private mWifiSettingFragment:Lcom/living/emo/fragment/WifiSettingFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/fragment/NavSetFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/fragment/NavSetFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/WifiSettingFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/fragment/NavSetFragment;->mWifiSettingFragment:Lcom/living/emo/fragment/WifiSettingFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/NavSetFragment;->switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/AlexaSettingFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/fragment/NavSetFragment;->mAlexaSettingFragment:Lcom/living/emo/fragment/AlexaSettingFragment;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/FrmareSettingFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/fragment/NavSetFragment;->mFrmareSettingFragment:Lcom/living/emo/fragment/FrmareSettingFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/CitySettingFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/fragment/NavSetFragment;->mCitySettingFragment:Lcom/living/emo/fragment/CitySettingFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/TimezoneFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/fragment/NavSetFragment;->mTimezoneFragment:Lcom/living/emo/fragment/TimezoneFragment;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/ThanksFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/fragment/NavSetFragment;->mThanksFragment:Lcom/living/emo/fragment/ThanksFragment;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/PowerOffFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/fragment/NavSetFragment;->mPowerOffFragment:Lcom/living/emo/fragment/PowerOffFragment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/VolumeFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/fragment/NavSetFragment;->mVolumeFragment:Lcom/living/emo/fragment/VolumeFragment;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/PreferenceFragment;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/fragment/NavSetFragment;->mPreferenceFragment:Lcom/living/emo/fragment/PreferenceFragment;

    return-object p0
.end method

.method private switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mCfm:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/living/emo/fragment/NavSetFragment;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 114
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersion()I

    move-result v1

    .line 63
    invoke-virtual {v0}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersionName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const-string v1, "1.4.0"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.4.0.p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mPreference:Landroid/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/living/emo/fragment/NavSetFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/NavSetFragment$1;-><init>(Lcom/living/emo/fragment/NavSetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method initFragment()V
    .locals 1

    .line 46
    new-instance v0, Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/WifiSettingFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mWifiSettingFragment:Lcom/living/emo/fragment/WifiSettingFragment;

    .line 47
    new-instance v0, Lcom/living/emo/fragment/AlexaSettingFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/AlexaSettingFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mAlexaSettingFragment:Lcom/living/emo/fragment/AlexaSettingFragment;

    .line 48
    new-instance v0, Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/FrmareSettingFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mFrmareSettingFragment:Lcom/living/emo/fragment/FrmareSettingFragment;

    .line 49
    new-instance v0, Lcom/living/emo/fragment/CitySettingFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/CitySettingFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mCitySettingFragment:Lcom/living/emo/fragment/CitySettingFragment;

    .line 50
    new-instance v0, Lcom/living/emo/fragment/TimezoneFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/TimezoneFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mTimezoneFragment:Lcom/living/emo/fragment/TimezoneFragment;

    .line 51
    new-instance v0, Lcom/living/emo/fragment/ThanksFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/ThanksFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mThanksFragment:Lcom/living/emo/fragment/ThanksFragment;

    .line 52
    new-instance v0, Lcom/living/emo/fragment/PowerOffFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/PowerOffFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mPowerOffFragment:Lcom/living/emo/fragment/PowerOffFragment;

    .line 53
    new-instance v0, Lcom/living/emo/fragment/VolumeFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/VolumeFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mVolumeFragment:Lcom/living/emo/fragment/VolumeFragment;

    .line 54
    new-instance v0, Lcom/living/emo/fragment/PreferenceFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mPreferenceFragment:Lcom/living/emo/fragment/PreferenceFragment;

    .line 55
    invoke-virtual {p0}, Lcom/living/emo/fragment/NavSetFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mCfm:Landroidx/fragment/app/FragmentManager;

    .line 56
    iget-object v0, p0, Lcom/living/emo/fragment/NavSetFragment;->mWifiSettingFragment:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-direct {p0, v0}, Lcom/living/emo/fragment/NavSetFragment;->switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0071

    return v0
.end method
