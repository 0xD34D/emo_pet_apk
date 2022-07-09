.class public Lcom/living/emo/activity/SplashActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "SplashActivity.java"


# static fields
.field private static final REQUEST_CODE_OPEN_GPS:I = 0x1

.field private static final REQUEST_CODE_PERMISSION_LOCATION:I = 0xc

.field private static final TAG:Ljava/lang/String; = "zxl::SplashActivity"


# instance fields
.field private bleManager:Lcom/clj/fastble/BleManager;

.field private bt_refresh:Landroid/widget/ImageButton;

.field private centerTextLink:Landroid/widget/TextView;

.field private connectIconClose:Landroid/widget/ImageButton;

.field private connectIconSearch:Landroid/widget/ImageButton;

.field private connection_status:Z

.field private deviceAdapter:Lcom/living/emo/adapter/DeviceAdapter;

.field private firstDevice:Lcom/clj/fastble/data/BleDevice;

.field private linkContainer:Landroid/widget/RelativeLayout;

.field private linkNow:Landroid/widget/TextView;

.field private mask:Landroid/widget/RelativeLayout;

.field private mask_select:Landroid/widget/RelativeLayout;

.field private searchAnimContainer:Landroid/widget/FrameLayout;

.field private searchAnimation:Lcom/living/emo/animation/SearchAnimation;

.field private searchSpin:Landroid/widget/ImageView;

.field private searchingEmo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/living/emo/activity/SplashActivity;->connection_status:Z

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/BleManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->bleManager:Lcom/clj/fastble/BleManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->bt_refresh:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->linkContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->centerTextLink:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->searchSpin:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->searchingEmo:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/animation/SearchAnimation;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->searchAnimation:Lcom/living/emo/animation/SearchAnimation;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/adapter/DeviceAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->deviceAdapter:Lcom/living/emo/adapter/DeviceAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/activity/SplashActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->checkPermissions()V

    return-void
.end method

.method static synthetic access$500(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->mask_select:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->firstDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$602(Lcom/living/emo/activity/SplashActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity;->firstDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/living/emo/activity/SplashActivity;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/living/emo/activity/SplashActivity;->connect(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method static synthetic access$802(Lcom/living/emo/activity/SplashActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/living/emo/activity/SplashActivity;->connection_status:Z

    return p1
.end method

.method static synthetic access$900(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/living/emo/activity/SplashActivity;->searchAnimContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private checkGPSIsOpen()Z
    .locals 2

    const-string v0, "location"

    .line 387
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "gps"

    .line 390
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkPermissions()V
    .locals 5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 265
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 267
    aget-object v3, v0, v2

    .line 268
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 270
    invoke-direct {p0, v3}, Lcom/living/emo/activity/SplashActivity;->onPermissionGranted(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0xc

    .line 277
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private clickEvent()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->bt_refresh:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$1;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->connectIconSearch:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$2;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->linkNow:Landroid/widget/TextView;

    new-instance v1, Lcom/living/emo/activity/SplashActivity$3;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$3;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->connectIconClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/SplashActivity$4;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$4;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->mask:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/living/emo/activity/SplashActivity$5;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$5;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private connect(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity;->bleManager:Lcom/clj/fastble/BleManager;

    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->firstDevice:Lcom/clj/fastble/data/BleDevice;

    new-instance v1, Lcom/living/emo/activity/SplashActivity$6;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$6;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/clj/fastble/BleManager;->connect(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 204
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->bleManager:Lcom/clj/fastble/BleManager;

    const v0, 0x7f0901b2

    .line 206
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->linkContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902aa

    .line 208
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->searchAnimContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0902b6

    .line 210
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->searchingEmo:Landroid/widget/TextView;

    const v0, 0x7f0900ba

    .line 212
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->connectIconSearch:Landroid/widget/ImageButton;

    const v0, 0x7f0900b9

    .line 214
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->connectIconClose:Landroid/widget/ImageButton;

    const v0, 0x7f0902b3

    .line 216
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->searchSpin:Landroid/widget/ImageView;

    const v0, 0x7f090095

    .line 218
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->centerTextLink:Landroid/widget/TextView;

    const v0, 0x7f0901cb

    .line 220
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->mask_select:Landroid/widget/RelativeLayout;

    const v0, 0x7f090082

    .line 222
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->bt_refresh:Landroid/widget/ImageButton;

    const v0, 0x7f0901b3

    .line 224
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->linkNow:Landroid/widget/TextView;

    const v0, 0x7f0901ca

    .line 225
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->mask:Landroid/widget/RelativeLayout;

    .line 227
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->linkContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->mask_select:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->searchAnimContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->searchingEmo:Landroid/widget/TextView;

    const v1, 0x7f1000d2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    new-instance v0, Lcom/living/emo/adapter/DeviceAdapter;

    invoke-direct {v0, p0}, Lcom/living/emo/adapter/DeviceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/SplashActivity;->deviceAdapter:Lcom/living/emo/adapter/DeviceAdapter;

    .line 232
    new-instance v1, Lcom/living/emo/activity/SplashActivity$7;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$7;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/DeviceAdapter;->setOnDeviceClickListener(Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;)V

    const v0, 0x7f0900d8

    .line 255
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 256
    iget-object v1, p0, Lcom/living/emo/activity/SplashActivity;->deviceAdapter:Lcom/living/emo/adapter/DeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private onPermissionGranted(Ljava/lang/String;)V
    .locals 2

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->checkGPSIsOpen()Z

    move-result p1

    if-nez p1, :cond_1

    .line 305
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1000bf

    .line 306
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10006c

    .line 307
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100044

    new-instance v1, Lcom/living/emo/activity/SplashActivity$9;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$9;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1000d5

    new-instance v1, Lcom/living/emo/activity/SplashActivity$8;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$8;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    .line 315
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->setScanRule()V

    .line 328
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->startScan()V

    :goto_0
    return-void
.end method

.method private setScanRule()V
    .locals 3

    .line 338
    new-instance v0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    invoke-direct {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;-><init>()V

    sget-object v1, Lcom/living/emo/model/Constants;->BLE_NAME:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 339
    invoke-virtual {v0, v2, v1}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->setDeviceName(Z[Ljava/lang/String;)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 340
    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->setScanTimeOut(J)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->build()Lcom/clj/fastble/scan/BleScanRuleConfig;

    move-result-object v0

    .line 342
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clj/fastble/BleManager;->initScanRule(Lcom/clj/fastble/scan/BleScanRuleConfig;)V

    return-void
.end method

.method private startAnim()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->searchAnimation:Lcom/living/emo/animation/SearchAnimation;

    iget-object v1, p0, Lcom/living/emo/activity/SplashActivity;->searchSpin:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/animation/SearchAnimation;->searchAnim(Landroid/view/View;)V

    return-void
.end method

.method private startScan()V
    .locals 2

    .line 346
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/SplashActivity$10;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/SplashActivity$10;-><init>(Lcom/living/emo/activity/SplashActivity;)V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->scan(Lcom/clj/fastble/callback/BleScanCallback;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 396
    invoke-super {p0, p1, p2, p3}, Lcom/living/emo/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->checkGPSIsOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->setScanRule()V

    .line 400
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->startScan()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002c

    .line 70
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/SplashActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->initView()V

    .line 72
    new-instance p1, Lcom/living/emo/animation/SearchAnimation;

    invoke-direct {p1}, Lcom/living/emo/animation/SearchAnimation;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity;->searchAnimation:Lcom/living/emo/animation/SearchAnimation;

    .line 73
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->clickEvent()V

    .line 74
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity;->bleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {p0}, Lcom/living/emo/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/clj/fastble/BleManager;->init(Landroid/app/Application;)V

    .line 75
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity;->bleManager:Lcom/clj/fastble/BleManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/clj/fastble/BleManager;->enableLog(Z)Lcom/clj/fastble/BleManager;

    move-result-object p1

    const/4 v0, 0x3

    const-wide/16 v1, 0x1388

    .line 76
    invoke-virtual {p1, v0, v1, v2}, Lcom/clj/fastble/BleManager;->setReConnectCount(IJ)Lcom/clj/fastble/BleManager;

    move-result-object p1

    const/16 v0, 0x1388

    .line 77
    invoke-virtual {p1, v0}, Lcom/clj/fastble/BleManager;->setOperateTimeout(I)Lcom/clj/fastble/BleManager;

    .line 78
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity;->bleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity;->bleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->enableBluetooth()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 91
    iget-boolean v0, p0, Lcom/living/emo/activity/SplashActivity;->connection_status:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->bleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->destroy()V

    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/living/emo/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 288
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    .line 289
    :goto_0
    array-length v0, p3

    if-ge p1, v0, :cond_2

    .line 290
    aget v0, p3, p1

    if-nez v0, :cond_1

    .line 291
    aget-object v0, p2, p1

    invoke-direct {p0, v0}, Lcom/living/emo/activity/SplashActivity;->onPermissionGranted(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity;->bleManager:Lcom/clj/fastble/BleManager;

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->checkPermissions()V

    .line 100
    invoke-direct {p0}, Lcom/living/emo/activity/SplashActivity;->startAnim()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onStart()V

    return-void
.end method
