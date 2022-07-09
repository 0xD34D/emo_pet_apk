.class public Lcom/living/emo/activity/CityActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "CityActivity.java"


# static fields
.field public static final LOCATION_CODE:I = 0x12d


# instance fields
.field public locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private locationProvider:Ljava/lang/String;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mCity:Ljava/lang/String;

.field private mCityConfig:Lcom/living/emo/blebean/config/CityConfig;

.field mCityName:Landroid/widget/EditText;

.field mCitySet:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mLocation:Landroid/widget/ImageButton;

.field mNotNow:Landroid/widget/ImageButton;

.field private timeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->locationProvider:Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/living/emo/activity/-$$Lambda$CityActivity$THPquHmH3XpdzBKLTXsLdkshNYA;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/-$$Lambda$CityActivity$THPquHmH3XpdzBKLTXsLdkshNYA;-><init>(Lcom/living/emo/activity/CityActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->timeout:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lcom/living/emo/activity/CityActivity$5;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/CityActivity$5;-><init>(Lcom/living/emo/activity/CityActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/CityActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/living/emo/activity/CityActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/activity/CityActivity;Landroid/location/Location;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/living/emo/activity/CityActivity;->getAddress(Landroid/location/Location;)V

    return-void
.end method

.method private changeJvmLanguage()V
    .locals 1

    .line 255
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    return-void
.end method

.method private checkPermission()V
    .locals 3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 200
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    if-nez v1, :cond_0

    .line 202
    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private getAddress(Landroid/location/Location;)V
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$CityActivity$ROkpiyaSwnvQcWFNy4fAvc3LIec;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/activity/-$$Lambda$CityActivity$ROkpiyaSwnvQcWFNy4fAvc3LIec;-><init>(Lcom/living/emo/activity/CityActivity;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getLocation()V
    .locals 10

    .line 211
    invoke-direct {p0}, Lcom/living/emo/activity/CityActivity;->checkPermission()V

    .line 212
    invoke-direct {p0}, Lcom/living/emo/activity/CityActivity;->changeJvmLanguage()V

    const-string v0, "location"

    .line 214
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    .line 217
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    const-string v1, "network"

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "TAG"

    if-eqz v2, :cond_0

    .line 220
    iput-object v1, p0, Lcom/living/emo/activity/CityActivity;->locationProvider:Ljava/lang/String;

    const-string v0, "\u5b9a\u4f4d\u65b9\u5f0fNetwork"

    .line 221
    invoke-static {v3, v0}, Lcom/living/emo/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "gps"

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iput-object v1, p0, Lcom/living/emo/activity/CityActivity;->locationProvider:Ljava/lang/String;

    const-string v0, "\u5b9a\u4f4d\u65b9\u5f0fGPS_PROVIDER"

    .line 226
    invoke-static {v3, v0}, Lcom/living/emo/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/living/emo/activity/CityActivity;->locationProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
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

    .line 237
    invoke-direct {p0, v0}, Lcom/living/emo/activity/CityActivity;->getAddress(Landroid/location/Location;)V

    goto :goto_1

    :cond_1
    const-string v0, "getLocation: "

    .line 240
    invoke-static {v3, v0}, Lcom/living/emo/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/living/emo/activity/CityActivity;->locationManager:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/living/emo/activity/CityActivity;->locationProvider:Ljava/lang/String;

    const-wide/16 v6, 0xbb8

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lcom/living/emo/activity/CityActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 245
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->mHandler:Landroid/os/Handler;

    .line 246
    iget-object v1, p0, Lcom/living/emo/activity/CityActivity;->timeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const/4 v0, 0x0

    const-string v1, "No location providers are available"

    .line 228
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    invoke-virtual {p0}, Lcom/living/emo/activity/CityActivity;->finish()V

    return-void
.end method

.method private initData()V
    .locals 1

    .line 193
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mNotNow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$CityActivity$1_kCa0BTuMzWJhibcDznxXNL42E;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$CityActivity$1_kCa0BTuMzWJhibcDznxXNL42E;-><init>(Lcom/living/emo/activity/CityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mLocation:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$CityActivity$TNOTH0G66OW4cq8UZgb-frbnDzE;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$CityActivity$TNOTH0G66OW4cq8UZgb-frbnDzE;-><init>(Lcom/living/emo/activity/CityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mCitySet:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$CityActivity$DHd_wus1-_RAHXP6joCeR5FVNiE;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$CityActivity$DHd_wus1-_RAHXP6joCeR5FVNiE;-><init>(Lcom/living/emo/activity/CityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mCityName:Landroid/widget/EditText;

    new-instance v1, Lcom/living/emo/activity/CityActivity$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/CityActivity$1;-><init>(Lcom/living/emo/activity/CityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0900a4

    .line 273
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->mCityName:Landroid/widget/EditText;

    const v0, 0x7f0900a6

    .line 274
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->mNotNow:Landroid/widget/ImageButton;

    const v0, 0x7f0900a7

    .line 275
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->mCitySet:Landroid/widget/ImageButton;

    const v0, 0x7f0900a3

    .line 276
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/CityActivity;->mLocation:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public goToActivity(Ljava/lang/Class;)V
    .locals 1

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CityActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/living/emo/activity/CityActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$getAddress$6$CityActivity(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 318
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 319
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 320
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 319
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 321
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    const-string v1, "city"

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-zA-Z ]+"

    .line 326
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->city(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/CityActivity;->mCity:Ljava/lang/String;

    .line 328
    new-instance p1, Lcom/living/emo/activity/-$$Lambda$CityActivity$bOKcUwBfSE4ZB0dzXFnpTQBoW0M;

    invoke-direct {p1, p0, v0}, Lcom/living/emo/activity/-$$Lambda$CityActivity$bOKcUwBfSE4ZB0dzXFnpTQBoW0M;-><init>(Lcom/living/emo/activity/CityActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CityActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 338
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    new-instance p1, Lcom/living/emo/activity/-$$Lambda$CityActivity$qa1GayK9OywN_naZQgDmLKubkao;

    invoke-direct {p1, p0}, Lcom/living/emo/activity/-$$Lambda$CityActivity$qa1GayK9OywN_naZQgDmLKubkao;-><init>(Lcom/living/emo/activity/CityActivity;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$initEvent$0$CityActivity(Landroid/view/View;)V
    .locals 0

    .line 79
    const-class p1, Lcom/living/emo/MainActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CityActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic lambda$initEvent$1$CityActivity(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/living/emo/activity/CityActivity;->mLocation:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 84
    invoke-direct {p0}, Lcom/living/emo/activity/CityActivity;->getLocation()V

    return-void
.end method

.method public synthetic lambda$initEvent$2$CityActivity(Landroid/view/View;)V
    .locals 3

    .line 87
    iget-object p1, p0, Lcom/living/emo/activity/CityActivity;->mCitySet:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 88
    iget-object p1, p0, Lcom/living/emo/activity/CityActivity;->mCityName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "city is require"

    .line 90
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 91
    iget-object p1, p0, Lcom/living/emo/activity/CityActivity;->mCitySet:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mCity:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/living/emo/activity/CityActivity;->mCity:Ljava/lang/String;

    const-class v2, Lcom/living/emo/blebean/config/CityConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/blebean/config/CityConfig;

    .line 96
    invoke-virtual {v0}, Lcom/living/emo/blebean/config/CityConfig;->getData()Lcom/living/emo/blebean/config/CityConfig$DataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/living/emo/blebean/config/CityConfig;->getData()Lcom/living/emo/blebean/config/CityConfig$DataBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/living/emo/blebean/config/CityConfig$DataBean;->setName(Ljava/lang/String;)V

    .line 99
    :cond_1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app->emo ble data json :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cityActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p0, v0, p1}, Lcom/living/emo/activity/CityActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->setCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p0, v0, p1}, Lcom/living/emo/activity/CityActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$3$CityActivity()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mLocation:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const/high16 v0, 0x7f100000

    .line 251
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CityActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$4$CityActivity(Ljava/lang/String;)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/living/emo/activity/CityActivity;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 330
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/activity/CityActivity;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mLocation:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mCityName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$null$5$CityActivity()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity;->mLocation:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    .line 70
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CityActivity;->setContentView(I)V

    .line 71
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0}, Lcom/living/emo/activity/CityActivity;->initView()V

    .line 73
    invoke-direct {p0}, Lcom/living/emo/activity/CityActivity;->initData()V

    .line 74
    invoke-direct {p0}, Lcom/living/emo/activity/CityActivity;->initEvent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 348
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 349
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

    .line 144
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:city"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/living/emo/activity/CityActivity$2;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/CityActivity$2;-><init>(Lcom/living/emo/activity/CityActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->city(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    .line 161
    new-instance v0, Lcom/living/emo/activity/CityActivity$3;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/CityActivity$3;-><init>(Lcom/living/emo/activity/CityActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleTimezoneResponseParse;->timezone(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleTimezoneResponseParse$Callback;)V

    .line 174
    new-instance v0, Lcom/living/emo/activity/CityActivity$4;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/CityActivity$4;-><init>(Lcom/living/emo/activity/CityActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleNetworkResponseParse;->network(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x12d

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    array-length p1, p3

    const/4 p2, 0x1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/living/emo/activity/CityActivity;->getLocation()V

    goto :goto_0

    :cond_1
    const-string p1, "No permission"

    .line 265
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 266
    invoke-virtual {p0}, Lcom/living/emo/activity/CityActivity;->finish()V

    :goto_0
    return-void
.end method
