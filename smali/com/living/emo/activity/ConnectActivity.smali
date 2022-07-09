.class public Lcom/living/emo/activity/ConnectActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "ConnectActivity.java"


# static fields
.field private static final DEVICE_DEFAULT_INDEX:I = 0x0

.field private static final REQUEST_CODE_OPEN_GPS:I = 0x1

.field private static final REQUEST_CODE_PERMISSION_LOCATION:I = 0xc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isConnected:Z

.field private isOpenNotify:Z

.field private mAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private mAnimBox:Landroid/widget/RelativeLayout;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mBleDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBleDeviceWindow:Lcom/living/emo/view/BleDeviceWindow;

.field private mBleManger:Lcom/clj/fastble/BleManager;

.field private mBleName:Landroid/widget/TextView;

.field private mCancelBtn:Landroid/widget/ImageButton;

.field private mConnectBtn:Landroid/widget/ImageButton;

.field private mEdit:Landroid/content/SharedPreferences$Editor;

.field private mEmoBox:Landroid/widget/RelativeLayout;

.field private mFindEmo:Landroid/widget/TextView;

.field private mFindOrFound:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mListBtn:Landroid/widget/ImageView;

.field private mListShade:Landroid/view/View;

.field private mScanName:[Ljava/lang/String;

.field private mScanTips:Landroid/widget/ImageView;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTxtBox:Landroid/widget/RelativeLayout;

.field private mTxtIv:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/ConnectActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/ConnectActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDeviceList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/living/emo/activity/ConnectActivity;->isConnected:Z

    .line 91
    iput-boolean v0, p0, Lcom/living/emo/activity/ConnectActivity;->isOpenNotify:Z

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$002(Lcom/living/emo/activity/ConnectActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/activity/ConnectActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->updateFindingUi()V

    return-void
.end method

.method static synthetic access$1100(Lcom/living/emo/activity/ConnectActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->searchEmo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/living/emo/activity/ConnectActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/living/emo/activity/ConnectActivity;->isConnected:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/living/emo/activity/ConnectActivity;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/living/emo/activity/ConnectActivity;->isConnected:Z

    return p1
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/living/emo/activity/ConnectActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/living/emo/activity/ConnectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDeviceList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/living/emo/activity/ConnectActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->foundUpdateUi()V

    return-void
.end method

.method static synthetic access$1600(Lcom/living/emo/activity/ConnectActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/living/emo/activity/ConnectActivity;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/living/emo/activity/ConnectActivity;->connect(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/living/emo/activity/ConnectActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->sendConfig()V

    return-void
.end method

.method static synthetic access$1900(Lcom/living/emo/activity/ConnectActivity;Ljava/lang/Class;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/living/emo/activity/ConnectActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$200(Lcom/living/emo/activity/ConnectActivity;)Lcom/living/emo/view/BleDeviceWindow;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDeviceWindow:Lcom/living/emo/view/BleDeviceWindow;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/activity/ConnectActivity;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/living/emo/activity/ConnectActivity;->isOpenNotify:Z

    return p0
.end method

.method static synthetic access$302(Lcom/living/emo/activity/ConnectActivity;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/living/emo/activity/ConnectActivity;->isOpenNotify:Z

    return p1
.end method

.method static synthetic access$400(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/BleManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/activity/ConnectActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtBox:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mEmoBox:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/living/emo/activity/ConnectActivity;->mListBtn:Landroid/widget/ImageView;

    return-object p0
.end method

.method private checkGPSIsopen()Z
    .locals 2

    const-string v0, "location"

    .line 550
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "gps"

    .line 554
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkPermission()V
    .locals 5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 473
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 475
    aget-object v3, v0, v2

    .line 476
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 478
    invoke-direct {p0, v3}, Lcom/living/emo/activity/ConnectActivity;->onPermissionGranted(Ljava/lang/String;)V

    goto :goto_1

    .line 480
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 484
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0xc

    .line 485
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private connect(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    new-instance v1, Lcom/living/emo/activity/ConnectActivity$4;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/ConnectActivity$4;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/clj/fastble/BleManager;->connect(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method private foundUpdateUi()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ble_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mAnimBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mScanTips:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mAnimBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mCancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mFindEmo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mCancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mListBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtIv:Landroid/widget/ImageView;

    const v2, 0x7f080164

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 309
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtBox:Landroid/widget/RelativeLayout;

    const v2, 0x7f08015f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 310
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mEmoBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private goToActivity(Ljava/lang/Class;)V
    .locals 1

    .line 465
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 466
    invoke-virtual {p0}, Lcom/living/emo/activity/ConnectActivity;->finish()V

    return-void
.end method

.method private initBle()V
    .locals 4

    .line 243
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    .line 245
    invoke-virtual {p0}, Lcom/living/emo/activity/ConnectActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->init(Landroid/app/Application;)V

    .line 247
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->isSupportBle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10007e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000c0

    new-instance v2, Lcom/living/emo/activity/ConnectActivity$2;

    invoke-direct {v2, p0}, Lcom/living/emo/activity/ConnectActivity$2;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->enableLog(Z)Lcom/clj/fastble/BleManager;

    move-result-object v0

    const/16 v1, 0x14

    .line 257
    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->setSplitWriteNum(I)Lcom/clj/fastble/BleManager;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x7d0

    .line 258
    invoke-virtual {v0, v1, v2, v3}, Lcom/clj/fastble/BleManager;->setReConnectCount(IJ)Lcom/clj/fastble/BleManager;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/BleManager;->setConnectOverTime(J)Lcom/clj/fastble/BleManager;

    move-result-object v0

    const/16 v1, 0x1388

    .line 260
    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->setOperateTimeout(I)Lcom/clj/fastble/BleManager;

    .line 262
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->enableBluetooth()V

    :cond_1
    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mListShade:Landroid/view/View;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$e9y9sUQbCqIXTkdq_3U3aCGi4Vc;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$e9y9sUQbCqIXTkdq_3U3aCGi4Vc;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mConnectBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$ZpQJEo1lSrKadYS6FQvkl-4ZjI8;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$ZpQJEo1lSrKadYS6FQvkl-4ZjI8;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mCancelBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$2Jlm3mqs_0DmyfNwGqobisjd8XQ;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$2Jlm3mqs_0DmyfNwGqobisjd8XQ;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPreferences()V
    .locals 2

    const-string v0, "emo_blue_device"

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/ConnectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0900b7

    .line 188
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mFindOrFound:Landroid/widget/ImageView;

    const v0, 0x7f0900b2

    .line 190
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mListBtn:Landroid/widget/ImageView;

    const v0, 0x7f0900b3

    .line 191
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mListShade:Landroid/view/View;

    const v0, 0x7f0900bd

    .line 193
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtBox:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900b8

    .line 195
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mEmoBox:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900bb

    .line 197
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mAnimBox:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900be

    .line 199
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtIv:Landroid/widget/ImageView;

    const v0, 0x7f0900bc

    .line 201
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mScanTips:Landroid/widget/ImageView;

    const v0, 0x7f0900b4

    .line 203
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleName:Landroid/widget/TextView;

    const v0, 0x7f0900bf

    .line 205
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mFindEmo:Landroid/widget/TextView;

    const v0, 0x7f0900b5

    .line 207
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mConnectBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0900b6

    .line 209
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mCancelBtn:Landroid/widget/ImageButton;

    .line 211
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mFindOrFound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 212
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 213
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->updateFindingUi()V

    return-void
.end method

.method private initWindow()V
    .locals 2

    .line 111
    new-instance v0, Lcom/living/emo/view/BleDeviceWindow;

    invoke-direct {v0}, Lcom/living/emo/view/BleDeviceWindow;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDeviceWindow:Lcom/living/emo/view/BleDeviceWindow;

    .line 112
    new-instance v1, Lcom/living/emo/activity/ConnectActivity$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/ConnectActivity$1;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/BleDeviceWindow;->setOnWindowListener(Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;)V

    return-void
.end method

.method private onPermissionGranted(Ljava/lang/String;)V
    .locals 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 496
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->checkGPSIsopen()Z

    move-result p1

    if-nez p1, :cond_0

    .line 497
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1000bf

    .line 499
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10006c

    .line 500
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100044

    new-instance v1, Lcom/living/emo/activity/ConnectActivity$10;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/ConnectActivity$10;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    .line 501
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1000d5

    new-instance v1, Lcom/living/emo/activity/ConnectActivity$9;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/ConnectActivity$9;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    .line 507
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 514
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->searchEmo()V

    :cond_1
    :goto_0
    return-void
.end method

.method private searchEmo()V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->setScanRule()V

    .line 291
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->startScan()V

    return-void
.end method

.method private sendConfig()V
    .locals 4

    .line 396
    iget-boolean v0, p0, Lcom/living/emo/activity/ConnectActivity;->isOpenNotify:Z

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->initNotify(Lcom/clj/fastble/data/BleDevice;)V

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/living/emo/activity/ConnectActivity;->isOpenNotify:Z

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$bYTB08qXAdWAWigf_tPJZ5TkNgA;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$ConnectActivity$bYTB08qXAdWAWigf_tPJZ5TkNgA;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setScanRule()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ble_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 274
    sget-object v0, Lcom/living/emo/model/Constants;->BLE_NAME:[Ljava/lang/String;

    iput-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mScanName:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 276
    iput-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mScanName:[Ljava/lang/String;

    .line 278
    :goto_0
    new-instance v0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    invoke-direct {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mScanName:[Ljava/lang/String;

    .line 279
    invoke-virtual {v0, v2, v1}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->setDeviceName(Z[Ljava/lang/String;)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 280
    invoke-virtual {v0, v1, v2}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->setScanTimeOut(J)Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->build()Lcom/clj/fastble/scan/BleScanRuleConfig;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    invoke-virtual {v1, v0}, Lcom/clj/fastble/BleManager;->initScanRule(Lcom/clj/fastble/scan/BleScanRuleConfig;)V

    return-void
.end method

.method private startScan()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    new-instance v1, Lcom/living/emo/activity/ConnectActivity$3;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/ConnectActivity$3;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->scan(Lcom/clj/fastble/callback/BleScanCallback;)V

    return-void
.end method

.method private updateFindingUi()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ble_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mAnimBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mScanTips:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mFindEmo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mCancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_0
    sget-object v1, Lcom/living/emo/activity/ConnectActivity;->TAG:Ljava/lang/String;

    const-string v4, "updateFindingUi: "

    invoke-static {v1, v4}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mScanTips:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mAnimBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mFindEmo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mFindEmo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finding  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mCancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$initEvents$0$ConnectActivity(Landroid/view/View;)V
    .locals 4

    .line 152
    sget-object v0, Lcom/living/emo/activity/ConnectActivity;->TAG:Ljava/lang/String;

    const-string v1, "initEvents: "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDeviceWindow:Lcom/living/emo/view/BleDeviceWindow;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/living/emo/view/BleDeviceWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public synthetic lambda$initEvents$1$ConnectActivity(Landroid/view/View;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mTxtIv:Landroid/widget/ImageView;

    const v0, 0x7f080161

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mAnimBox:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mEmoBox:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0, p1}, Lcom/living/emo/activity/ConnectActivity;->connect(Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initEvents$2$ConnectActivity(Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v0, "ble_name"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->destroy()V

    .line 169
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->cancelScan()V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->updateFindingUi()V

    .line 172
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->searchEmo()V

    return-void
.end method

.method public synthetic lambda$sendConfig$3$ConnectActivity()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 402
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/living/emo/activity/ConnectActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 567
    invoke-super {p0, p1, p2, p3}, Lcom/living/emo/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->checkGPSIsopen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->searchEmo()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 98
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/ConnectActivity;->setContentView(I)V

    .line 99
    invoke-static {p0}, Lcom/living/emo/util/ActivityCollector;->removeActivity(Landroid/app/Activity;)V

    .line 100
    invoke-static {}, Lcom/living/emo/util/ActivityCollector;->finishAll()V

    .line 101
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->initBle()V

    .line 103
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->initPreferences()V

    .line 104
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->initWindow()V

    .line 105
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->initViews()V

    .line 106
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->initEvents()V

    .line 107
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 582
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 583
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleDeviceWindow:Lcom/living/emo/view/BleDeviceWindow;

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/living/emo/view/BleDeviceWindow;->dismiss()V

    .line 586
    :cond_0
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

    .line 411
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:connect"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v0, Lcom/living/emo/activity/ConnectActivity$5;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/ConnectActivity$5;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleVersionResponseParse;->version(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;)V

    .line 422
    new-instance v0, Lcom/living/emo/activity/ConnectActivity$6;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/ConnectActivity$6;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleCityResponseParse;->city(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleCityResponseParse$Callback;)V

    .line 438
    new-instance v0, Lcom/living/emo/activity/ConnectActivity$7;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/ConnectActivity$7;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleTimezoneResponseParse;->timezone(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleTimezoneResponseParse$Callback;)V

    .line 450
    new-instance v0, Lcom/living/emo/activity/ConnectActivity$8;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/ConnectActivity$8;-><init>(Lcom/living/emo/activity/ConnectActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleNetworkResponseParse;->network(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 577
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 531
    invoke-super {p0, p1, p2, p3}, Lcom/living/emo/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 533
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 534
    :goto_0
    array-length v0, p3

    if-ge p1, v0, :cond_1

    .line 535
    aget v0, p3, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 536
    aget-object v0, p2, p1

    invoke-direct {p0, v0}, Lcom/living/emo/activity/ConnectActivity;->onPermissionGranted(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 181
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity;->mBleManger:Lcom/clj/fastble/BleManager;

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/living/emo/activity/ConnectActivity;->checkPermission()V

    :cond_0
    return-void
.end method
