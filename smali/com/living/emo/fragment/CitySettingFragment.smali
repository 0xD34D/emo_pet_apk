.class public Lcom/living/emo/fragment/CitySettingFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "CitySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/CitySettingFragment$State;
    }
.end annotation


# static fields
.field public static final LOCATION_CODE:I = 0x12d

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currState:Lcom/living/emo/fragment/CitySettingFragment$State;

.field public locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private locationProvider:Ljava/lang/String;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mCity:Ljava/lang/String;

.field mCityContainer:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902be
    .end annotation
.end field

.field mCityName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mLoadCityEditView:Landroid/view/View;

.field private mLoadCityLoadingView:Landroid/view/View;

.field private mLocation:Landroid/widget/ImageButton;

.field private mSetSetting:Landroid/widget/ImageButton;

.field private mSettingActivity:Lcom/living/emo/activity/SettingActivity;

.field private timeout:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/fragment/CitySettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/fragment/CitySettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationProvider:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$nkpANU6IpvouIpzYL_i0oNLeJmM;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$nkpANU6IpvouIpzYL_i0oNLeJmM;-><init>(Lcom/living/emo/fragment/CitySettingFragment;)V

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->timeout:Ljava/lang/Runnable;

    .line 79
    sget-object v0, Lcom/living/emo/fragment/CitySettingFragment$State;->LOADING:Lcom/living/emo/fragment/CitySettingFragment$State;

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->currState:Lcom/living/emo/fragment/CitySettingFragment$State;

    .line 273
    new-instance v0, Lcom/living/emo/fragment/CitySettingFragment$4;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/CitySettingFragment$4;-><init>(Lcom/living/emo/fragment/CitySettingFragment;)V

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/CitySettingFragment;Lcom/living/emo/fragment/CitySettingFragment$State;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/CitySettingFragment;->changeStateView(Lcom/living/emo/fragment/CitySettingFragment$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/CitySettingFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSetSetting:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/CitySettingFragment;)Lcom/living/emo/activity/SettingActivity;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/living/emo/fragment/CitySettingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/CitySettingFragment;Landroid/location/Location;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/CitySettingFragment;->getAddress(Landroid/location/Location;)V

    return-void
.end method

.method private changeJvmLanguage()V
    .locals 1

    .line 199
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    return-void
.end method

.method private changeStateView(Lcom/living/emo/fragment/CitySettingFragment$State;)V
    .locals 4

    .line 103
    iput-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment;->currState:Lcom/living/emo/fragment/CitySettingFragment$State;

    .line 104
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLoadCityLoadingView:Landroid/view/View;

    sget-object v1, Lcom/living/emo/fragment/CitySettingFragment$State;->LOADING:Lcom/living/emo/fragment/CitySettingFragment$State;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLoadCityEditView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->currState:Lcom/living/emo/fragment/CitySettingFragment$State;

    sget-object v1, Lcom/living/emo/fragment/CitySettingFragment$State;->EDIT:Lcom/living/emo/fragment/CitySettingFragment$State;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private checkPermission()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    .line 191
    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12d

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private getAddress(Landroid/location/Location;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLocation:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$tnk515kzLsUW-bl4coe4xhmsyE8;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$tnk515kzLsUW-bl4coe4xhmsyE8;-><init>(Lcom/living/emo/fragment/CitySettingFragment;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getLocation()V
    .locals 10

    .line 237
    invoke-direct {p0}, Lcom/living/emo/fragment/CitySettingFragment;->checkPermission()V

    .line 238
    invoke-direct {p0}, Lcom/living/emo/fragment/CitySettingFragment;->changeJvmLanguage()V

    .line 240
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    .line 243
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    const-string v1, "gps"

    .line 245
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "TAG"

    if-eqz v2, :cond_0

    .line 247
    iput-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationProvider:Ljava/lang/String;

    const-string v0, "\u5b9a\u4f4d\u65b9\u5f0fGPS_PROVIDER"

    .line 248
    invoke-static {v3, v0}, Lcom/living/emo/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "network"

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iput-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationProvider:Ljava/lang/String;

    const-string v0, "\u5b9a\u4f4d\u65b9\u5f0fNetwork"

    .line 253
    invoke-static {v3, v0}, Lcom/living/emo/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u4e0a\u6b21\u7684\u4f4d\u7f6e-\u7ecf\u7eac\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/living/emo/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v0}, Lcom/living/emo/fragment/CitySettingFragment;->getAddress(Landroid/location/Location;)V

    goto :goto_1

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationManager:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationProvider:Ljava/lang/String;

    const-wide/16 v6, 0xbb8

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 270
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mHandler:Landroid/os/Handler;

    .line 271
    iget-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->timeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    const/4 v1, 0x0

    const-string v2, "No location providers are available"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 256
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/SettingActivity;->finish()V

    return-void
.end method

.method private loadCityEditView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0068

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadCityLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006f

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method initData()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/living/emo/fragment/CitySettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/SettingActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    .line 182
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 183
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->city()[B

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v2, p0, Lcom/living/emo/fragment/CitySettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSetSetting:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$gc_bO8WRtn3xSMV1AEu-mZokxt4;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$gc_bO8WRtn3xSMV1AEu-mZokxt4;-><init>(Lcom/living/emo/fragment/CitySettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mCityName:Landroid/widget/EditText;

    new-instance v1, Lcom/living/emo/fragment/CitySettingFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/CitySettingFragment$1;-><init>(Lcom/living/emo/fragment/CitySettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLocation:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$FdaaHzW4-JsR4HD-QdUFKqLHPDA;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$FdaaHzW4-JsR4HD-QdUFKqLHPDA;-><init>(Lcom/living/emo/fragment/CitySettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 110
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLoadCityEditView:Landroid/view/View;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mCityName:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLoadCityEditView:Landroid/view/View;

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSetSetting:Landroid/widget/ImageButton;

    .line 113
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLoadCityEditView:Landroid/view/View;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLocation:Landroid/widget/ImageButton;

    .line 114
    sget-object v0, Lcom/living/emo/fragment/CitySettingFragment$State;->LOADING:Lcom/living/emo/fragment/CitySettingFragment$State;

    invoke-direct {p0, v0}, Lcom/living/emo/fragment/CitySettingFragment;->changeStateView(Lcom/living/emo/fragment/CitySettingFragment$State;)V

    return-void
.end method

.method public synthetic lambda$getAddress$5$CitySettingFragment(Landroid/location/Location;)V
    .locals 8

    const-string v0, "getAddress"

    const-string v1, "city"

    if-eqz p1, :cond_0

    .line 307
    :try_start_0
    new-instance v2, Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 308
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 309
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/4 v7, 0x1

    .line 308
    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    .line 310
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-zA-Z ]+"

    .line 316
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->city(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mCity:Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Lcom/living/emo/fragment/CitySettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$ETYQy1HAOYcUhYiImkJ7g7ElBoU;

    invoke-direct {v1, p0, v0}, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$ETYQy1HAOYcUhYiImkJ7g7ElBoU;-><init>(Lcom/living/emo/fragment/CitySettingFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    invoke-virtual {p0}, Lcom/living/emo/fragment/CitySettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$TALw6oi4gUMCOYA3QyFXeE5SXlc;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$TALw6oi4gUMCOYA3QyFXeE5SXlc;-><init>(Lcom/living/emo/fragment/CitySettingFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$initEvent$1$CitySettingFragment(Landroid/view/View;)V
    .locals 4

    .line 120
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSetSetting:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 121
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mCityName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    sget-object v1, Lcom/living/emo/fragment/CitySettingFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/living/emo/fragment/CitySettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "city is required"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 125
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSetSetting:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mCity:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 129
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mCity:Ljava/lang/String;

    const-class v2, Lcom/living/emo/blebean/config/CityConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/blebean/config/CityConfig;

    .line 130
    invoke-virtual {v0}, Lcom/living/emo/blebean/config/CityConfig;->getData()Lcom/living/emo/blebean/config/CityConfig$DataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/living/emo/blebean/config/CityConfig;->getData()Lcom/living/emo/blebean/config/CityConfig$DataBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setName(Ljava/lang/String;)V

    .line 133
    :cond_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app->emo ble data json :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cityActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 137
    sget-object p1, Lcom/living/emo/fragment/CitySettingFragment$State;->LOADING:Lcom/living/emo/fragment/CitySettingFragment$State;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/CitySettingFragment;->changeStateView(Lcom/living/emo/fragment/CitySettingFragment$State;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->setCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initEvent$2$CitySettingFragment(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLocation:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 173
    invoke-direct {p0}, Lcom/living/emo/fragment/CitySettingFragment;->getLocation()V

    return-void
.end method

.method public synthetic lambda$new$0$CitySettingFragment()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLocation:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/living/emo/fragment/CitySettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/SettingActivity;

    const/high16 v1, 0x7f100000

    invoke-virtual {p0, v1}, Lcom/living/emo/fragment/CitySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/SettingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$3$CitySettingFragment(Ljava/lang/String;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 321
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    iget-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mCityName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 323
    sget-object p1, Lcom/living/emo/fragment/CitySettingFragment$State;->EDIT:Lcom/living/emo/fragment/CitySettingFragment$State;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/CitySettingFragment;->changeStateView(Lcom/living/emo/fragment/CitySettingFragment$State;)V

    return-void
.end method

.method public synthetic lambda$null$4$CitySettingFragment()V
    .locals 1

    .line 333
    sget-object v0, Lcom/living/emo/fragment/CitySettingFragment$State;->EDIT:Lcom/living/emo/fragment/CitySettingFragment$State;

    invoke-direct {p0, v0}, Lcom/living/emo/fragment/CitySettingFragment;->changeStateView(Lcom/living/emo/fragment/CitySettingFragment$State;)V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0065

    return v0
.end method

.method protected loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/CitySettingFragment;->loadCityLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLoadCityLoadingView:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mCityContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/CitySettingFragment;->loadCityEditView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment;->mLoadCityEditView:Landroid/view/View;

    .line 91
    iget-object p2, p0, Lcom/living/emo/fragment/CitySettingFragment;->mCityContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 342
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 343
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

    .line 208
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:CitySettingFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/living/emo/fragment/CitySettingFragment$2;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/CitySettingFragment$2;-><init>(Lcom/living/emo/fragment/CitySettingFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleCityResponseParse;->city(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleCityResponseParse$Callback;)V

    .line 217
    new-instance v0, Lcom/living/emo/fragment/CitySettingFragment$3;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/CitySettingFragment$3;-><init>(Lcom/living/emo/fragment/CitySettingFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->city(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method
