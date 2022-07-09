.class public Lcom/living/emo/activity/CustomizationActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "CustomizationActivity.java"

# interfaces
.implements Lcom/living/emo/interfaces/OpenFileChooserCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/CustomizationActivity$TellNative;,
        Lcom/living/emo/activity/CustomizationActivity$State;
    }
.end annotation


# static fields
.field private static final HANDLE_TIME_OUT:I = 0x1770

.field private static final REQUEST_CODE_PICK_IMAGE:I = 0x1111


# instance fields
.field private currState:Lcom/living/emo/activity/CustomizationActivity$State;

.field private filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private isClose:Z

.field private mBack:Landroid/widget/ImageView;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mCustomTcpServer:Lcom/living/emo/util/CustomTcpServer;

.field private mHandler:Landroid/os/Handler;

.field private mHomeMusicIv:Landroid/widget/ImageView;

.field private mHomeSet:Landroid/widget/ImageView;

.field private mSettings:Landroid/webkit/WebSettings;

.field private mTopTxtIv:Landroid/widget/ImageView;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private photoUri:Landroid/net/Uri;

.field private task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mCustomTcpServer:Lcom/living/emo/util/CustomTcpServer;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/living/emo/activity/CustomizationActivity;->isClose:Z

    .line 136
    sget-object v0, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    .line 162
    new-instance v0, Lcom/living/emo/activity/CustomizationActivity$3;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/CustomizationActivity$3;-><init>(Lcom/living/emo/activity/CustomizationActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/living/emo/activity/CustomizationActivity;)Lcom/living/emo/activity/CustomizationActivity$State;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    return-object p0
.end method

.method static synthetic access$102(Lcom/living/emo/activity/CustomizationActivity;Lcom/living/emo/activity/CustomizationActivity$State;)Lcom/living/emo/activity/CustomizationActivity$State;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/living/emo/activity/CustomizationActivity;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->getIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/activity/CustomizationActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/living/emo/activity/CustomizationActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method private addJavascriptInterface()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/living/emo/activity/CustomizationActivity$TellNative;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/living/emo/activity/CustomizationActivity$TellNative;-><init>(Lcom/living/emo/activity/CustomizationActivity;Lcom/living/emo/activity/CustomizationActivity$1;)V

    const-string v2, "TellNative"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private checkWifiIsOpen()Z
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcom/living/emo/activity/CustomizationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 336
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method private getIp()Ljava/lang/String;
    .locals 5

    .line 453
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TAG"

    invoke-static {v3, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIp: ipAddress"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-direct {p0, v0}, Lcom/living/emo/activity/CustomizationActivity;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private gotoPhoto()V
    .locals 3

    .line 323
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x2

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 325
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1111

    .line 326
    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$CustomizationActivity$bGBUkHO7vrQ3EEQcZ_ry4IfZ3AY;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$CustomizationActivity$bGBUkHO7vrQ3EEQcZ_ry4IfZ3AY;-><init>(Lcom/living/emo/activity/CustomizationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initOther()V
    .locals 3

    .line 288
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    const v1, 0x7f09015a

    .line 290
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/CustomizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 291
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/living/emo/util/MusicPlayerUtil;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v2, Lcom/living/emo/activity/CustomizationActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/living/emo/activity/CustomizationActivity$4;-><init>(Lcom/living/emo/activity/CustomizationActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Lcom/living/emo/util/MusicPlayerUtil;->setOnChangeMusicName(Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;)V

    .line 298
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->init()V

    .line 300
    iget-object v1, p0, Lcom/living/emo/activity/CustomizationActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CustomizationActivity;->playBackgroundMusicEvent(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f090330

    .line 340
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CustomizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mTopTxtIv:Landroid/widget/ImageView;

    const v1, 0x7f080350

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f090368

    .line 342
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CustomizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f090159

    .line 344
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CustomizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    const v0, 0x7f09015b

    .line 346
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CustomizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mHomeSet:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f090151

    .line 349
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CustomizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mBack:Landroid/widget/ImageView;

    .line 350
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 351
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 352
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 356
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mSettings:Landroid/webkit/WebSettings;

    .line 357
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->addJavascriptInterface()V

    .line 358
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mSettings:Landroid/webkit/WebSettings;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 360
    invoke-virtual {p0}, Lcom/living/emo/activity/CustomizationActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v2, p0, Lcom/living/emo/activity/CustomizationActivity;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 362
    iget-object v2, p0, Lcom/living/emo/activity/CustomizationActivity;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 364
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 368
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/living/emo/MyWebChromeClient;

    invoke-direct {v1, p0}, Lcom/living/emo/MyWebChromeClient;-><init>(Lcom/living/emo/interfaces/OpenFileChooserCallBack;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 369
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/custom/index.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->initOther()V

    return-void
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 3

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showOptions()V
    .locals 2

    const-string v0, "TAG"

    const-string v1, "showOptions: "

    .line 99
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/living/emo/activity/CustomizationActivityPermissionsDispatcher;->photoPermissionCheckWithPermissionCheck(Lcom/living/emo/activity/CustomizationActivity;)V

    return-void
.end method


# virtual methods
.method public hex2RGB(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 421
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 423
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x5

    .line 424
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$initEvent$1$CustomizationActivity(Landroid/view/View;)V
    .locals 1

    .line 306
    iget-boolean p1, p0, Lcom/living/emo/activity/CustomizationActivity;->isClose:Z

    if-nez p1, :cond_0

    const-string p1, "processing"

    .line 307
    invoke-static {p0, p1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->OUT:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/living/emo/activity/CustomizationActivity;->isClose:Z

    .line 310
    iget-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v0, "out"

    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->customize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/CustomizationActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 311
    iget-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mCustomTcpServer:Lcom/living/emo/util/CustomTcpServer;

    invoke-virtual {p1}, Lcom/living/emo/util/CustomTcpServer;->stopServer()V

    const/4 p1, 0x0

    .line 312
    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mCustomTcpServer:Lcom/living/emo/util/CustomTcpServer;

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$CustomizationActivity()V
    .locals 1

    const-string v0, "Setting failed,please try again"

    .line 151
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 153
    sget-object v0, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 477
    invoke-super {p0, p1, p2, p3}, Lcom/living/emo/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "resultCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAG"

    invoke-static {v2, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->gotoPhoto()V

    :cond_0
    const/16 v0, 0x1111

    if-ne p1, v0, :cond_7

    .line 484
    iget-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    .line 488
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 489
    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 491
    :cond_2
    iget-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_7

    .line 492
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 493
    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_4

    .line 497
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 498
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v0

    .line 500
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult: result"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5

    .line 502
    iget-object p2, p0, Lcom/living/emo/activity/CustomizationActivity;->photoUri:Landroid/net/Uri;

    if-eqz p2, :cond_5

    move-object p1, p2

    :cond_5
    const/4 p2, 0x1

    new-array p2, p2, [Landroid/net/Uri;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 508
    iget-object p3, p0, Lcom/living/emo/activity/CustomizationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p3, :cond_6

    .line 509
    invoke-interface {p3, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 510
    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 513
    :cond_6
    iget-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_7

    .line 514
    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 515
    iput-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    :cond_7
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 140
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 141
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->setContentView(I)V

    .line 142
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v0, "in"

    .line 143
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->customize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/CustomizationActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 144
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->IN:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    .line 145
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->initView()V

    .line 146
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->initEvent()V

    .line 147
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->checkWifiIsOpen()Z

    .line 148
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 149
    new-instance p1, Lcom/living/emo/util/CustomTcpServer;

    invoke-direct {p1}, Lcom/living/emo/util/CustomTcpServer;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mCustomTcpServer:Lcom/living/emo/util/CustomTcpServer;

    .line 150
    new-instance v0, Lcom/living/emo/activity/-$$Lambda$CustomizationActivity$4PC4wgmYnwFOYgCOx-h7I0GC1Tg;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/-$$Lambda$CustomizationActivity$4PC4wgmYnwFOYgCOx-h7I0GC1Tg;-><init>(Lcom/living/emo/activity/CustomizationActivity;)V

    invoke-virtual {p1, v0}, Lcom/living/emo/util/CustomTcpServer;->setServerNotifyMessageListener(Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;)V

    .line 155
    iget-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mCustomTcpServer:Lcom/living/emo/util/CustomTcpServer;

    const/16 v0, 0x2382

    invoke-virtual {p1, v0}, Lcom/living/emo/util/CustomTcpServer;->starServer(I)V

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ip:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":9090"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1000de

    .line 157
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    .line 159
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 435
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 436
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 437
    iget-boolean v0, p0, Lcom/living/emo/activity/CustomizationActivity;->isClose:Z

    if-nez v0, :cond_0

    const-string v0, "TAG"

    const-string v1, "onDestroy: out"

    .line 438
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v1, "out"

    invoke-static {v1}, Lcom/living/emo/blebean/util/BleJsonUtil;->customize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/CustomizationActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->mCustomTcpServer:Lcom/living/emo/util/CustomTcpServer;

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0}, Lcom/living/emo/util/CustomTcpServer;->stopServer()V

    .line 444
    :cond_1
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 174
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 177
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 178
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eye_rsp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultResponse.getData().getResult() onMessageEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p1

    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 225
    :pswitch_1
    iput-boolean v4, p0, Lcom/living/emo/activity/CustomizationActivity;->isClose:Z

    .line 226
    iget-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mCustomTcpServer:Lcom/living/emo/util/CustomTcpServer;

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/living/emo/util/CustomTcpServer;->stopServer()V

    :cond_0
    const p1, 0x7f100055

    .line 229
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 231
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    .line 232
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Lcom/living/emo/activity/CustomizationActivity;->finish()V

    goto/16 :goto_0

    .line 261
    :pswitch_2
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    const p1, 0x7f100054

    .line 262
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 263
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto/16 :goto_0

    .line 256
    :pswitch_3
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    const p1, 0x7f100052

    .line 257
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 258
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto/16 :goto_0

    .line 251
    :pswitch_4
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    const p1, 0x7f100058

    .line 252
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 253
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto/16 :goto_0

    .line 246
    :pswitch_5
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    const p1, 0x7f100051

    .line 247
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 248
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto/16 :goto_0

    .line 241
    :pswitch_6
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    const p1, 0x7f100053

    .line 242
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 243
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto/16 :goto_0

    :pswitch_7
    const p1, 0x7f100050

    .line 236
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 238
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto/16 :goto_0

    .line 182
    :pswitch_8
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$5;->$SwitchMap$com$living$emo$activity$CustomizationActivity$State:[I

    iget-object v5, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    invoke-virtual {v5}, Lcom/living/emo/activity/CustomizationActivity$State;->ordinal()I

    move-result v5

    aget p1, p1, v5

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p1, "onMessageEvent:  eyes set"

    .line 196
    invoke-static {v1, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f10004f

    .line 197
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 199
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto :goto_0

    .line 189
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/living/emo/activity/CustomizationActivity;->finish()V

    .line 191
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    .line 192
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    goto :goto_0

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/living/emo/activity/-$$Lambda$2j3CHImIe3MI5fFgY9dgdXpJv_8;->INSTANCE:Lcom/living/emo/activity/-$$Lambda$2j3CHImIe3MI5fFgY9dgdXpJv_8;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto :goto_0

    .line 205
    :pswitch_9
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$5;->$SwitchMap$com$living$emo$activity$CustomizationActivity$State:[I

    iget-object v1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/activity/CustomizationActivity$State;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_4

    goto :goto_0

    :cond_4
    const p1, 0x7f100059

    .line 217
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 219
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto :goto_0

    .line 211
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/CustomizationActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {p0}, Lcom/living/emo/activity/CustomizationActivity;->finish()V

    .line 213
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    goto :goto_0

    .line 208
    :cond_6
    sget-object p1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->currState:Lcom/living/emo/activity/CustomizationActivity$State;

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/living/emo/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 381
    invoke-static {p0, p1, p3}, Lcom/living/emo/activity/CustomizationActivityPermissionsDispatcher;->onRequestPermissionsResult(Lcom/living/emo/activity/CustomizationActivity;I[I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 272
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 273
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->getUserIsPause()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPause()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPlay()V

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    .line 284
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/living/emo/activity/CustomizationActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method

.method public openFileChooser5CallBack(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    const-string p1, "Tag"

    const-string p3, "openFileChooser5CallBack"

    .line 93
    invoke-static {p1, p3}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p2, p0, Lcom/living/emo/activity/CustomizationActivity;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 95
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->showOptions()V

    return-void
.end method

.method public openFileChooserCallBack(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p2, "Tag"

    const-string v0, "openFileChooserCallBack"

    .line 86
    invoke-static {p2, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 88
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->showOptions()V

    return-void
.end method

.method public photoPermissionCheck()V
    .locals 2

    const-string v0, "zxl"

    const-string v1, "photoPermissionCheck"

    .line 106
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/living/emo/activity/CustomizationActivity;->gotoPhoto()V

    return-void
.end method

.method public showDeniedForCamera()V
    .locals 3

    const-string v0, "zxl"

    const-string v1, "showDeniedForCamera"

    .line 112
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100056

    .line 114
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100057

    .line 115
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10004e

    .line 116
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/CustomizationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/living/emo/activity/CustomizationActivity$2;

    invoke-direct {v2, p0}, Lcom/living/emo/activity/CustomizationActivity$2;-><init>(Lcom/living/emo/activity/CustomizationActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/CustomizationActivity$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/CustomizationActivity$1;-><init>(Lcom/living/emo/activity/CustomizationActivity;)V

    const v2, 0x7f100044

    .line 123
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
