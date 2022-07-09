.class public Lcom/living/emo/activity/LudoGameActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "LudoGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/LudoGameActivity$TellNative;
    }
.end annotation


# static fields
.field private static final HANDLE_TIME_OUT:I = 0x2710

.field private static final NUMBER_FIVE:[I

.field private static final NUMBER_FOUR:[I

.field private static final NUMBER_ONE:[I

.field private static final NUMBER_SIX:[I

.field private static final NUMBER_THREE:[I

.field private static final NUMBER_TWO:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isDice:Z

.field private mAudio:Lcom/living/emo/util/AudioUtil;

.field private mBack:Landroid/widget/ImageButton;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLudoSoundPool:Lcom/living/emo/util/LudoSoundPoolUtil;

.field private mNum:I

.field private mPlay:Landroid/widget/ImageView;

.field private mWebView:Landroid/webkit/WebView;

.field private task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/LudoGameActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 53
    fill-array-data v1, :array_0

    sput-object v1, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_ONE:[I

    new-array v1, v0, [I

    .line 54
    fill-array-data v1, :array_1

    sput-object v1, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_TWO:[I

    new-array v1, v0, [I

    .line 55
    fill-array-data v1, :array_2

    sput-object v1, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_THREE:[I

    new-array v1, v0, [I

    .line 56
    fill-array-data v1, :array_3

    sput-object v1, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_FOUR:[I

    new-array v1, v0, [I

    .line 57
    fill-array-data v1, :array_4

    sput-object v1, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_FIVE:[I

    new-array v0, v0, [I

    .line 58
    fill-array-data v0, :array_5

    sput-object v0, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_SIX:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a000e
        0x7f0a000f
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0014
        0x7f0a0015
    .end array-data

    :array_2
    .array-data 4
        0x7f0a0012
        0x7f0a0013
    .end array-data

    :array_3
    .array-data 4
        0x7f0a000c
        0x7f0a000d
    .end array-data

    :array_4
    .array-data 4
        0x7f0a000a
        0x7f0a000b
    .end array-data

    :array_5
    .array-data 4
        0x7f0a0010
        0x7f0a0011
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/living/emo/activity/LudoGameActivity;->isDice:Z

    .line 82
    new-instance v0, Lcom/living/emo/activity/LudoGameActivity$1;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/LudoGameActivity$1;-><init>(Lcom/living/emo/activity/LudoGameActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/living/emo/activity/LudoGameActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/living/emo/activity/LudoGameActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/living/emo/activity/LudoGameActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/living/emo/activity/LudoGameActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/living/emo/activity/LudoGameActivity;)Lcom/living/emo/util/LudoSoundPoolUtil;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/living/emo/activity/LudoGameActivity;->mLudoSoundPool:Lcom/living/emo/util/LudoSoundPoolUtil;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/living/emo/activity/LudoGameActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/living/emo/activity/LudoGameActivity;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/living/emo/activity/LudoGameActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/living/emo/activity/LudoGameActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/living/emo/activity/LudoGameActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/living/emo/activity/LudoGameActivity;->mBack:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/living/emo/activity/LudoGameActivity;)Lcom/living/emo/util/AudioUtil;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/living/emo/activity/LudoGameActivity;->mAudio:Lcom/living/emo/util/AudioUtil;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/living/emo/activity/LudoGameActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/living/emo/activity/LudoGameActivity;->mPlay:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/activity/LudoGameActivity;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/living/emo/activity/LudoGameActivity;->mNum:I

    return p0
.end method

.method static synthetic access$202(Lcom/living/emo/activity/LudoGameActivity;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/living/emo/activity/LudoGameActivity;->mNum:I

    return p1
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 40
    sget-object v0, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_ONE:[I

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 40
    sget-object v0, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_TWO:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .line 40
    sget-object v0, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_THREE:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .line 40
    sget-object v0, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_FOUR:[I

    return-object v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .line 40
    sget-object v0, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_FIVE:[I

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .line 40
    sget-object v0, Lcom/living/emo/activity/LudoGameActivity;->NUMBER_SIX:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/living/emo/activity/LudoGameActivity;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/living/emo/activity/LudoGameActivity;->isDice:Z

    return p0
.end method

.method static synthetic access$902(Lcom/living/emo/activity/LudoGameActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/living/emo/activity/LudoGameActivity;->isDice:Z

    return p1
.end method

.method private addJavascriptInterface()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/living/emo/activity/LudoGameActivity$TellNative;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/living/emo/activity/LudoGameActivity$TellNative;-><init>(Lcom/living/emo/activity/LudoGameActivity;Lcom/living/emo/activity/LudoGameActivity$1;)V

    const-string v2, "TellNative"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    .line 95
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f1000de

    .line 96
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/LudoGameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 98
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f090367

    .line 374
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/LudoGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    .line 375
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 376
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 377
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    const v0, 0x7f090084

    .line 378
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/LudoGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mBack:Landroid/widget/ImageButton;

    const v0, 0x7f090064

    .line 379
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/LudoGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mPlay:Landroid/widget/ImageView;

    .line 380
    sget-object v0, Lcom/living/emo/util/AudioUtil;->INSTANCE:Lcom/living/emo/util/AudioUtil;

    iput-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mAudio:Lcom/living/emo/util/AudioUtil;

    .line 381
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/LudoGameActivity$3;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/LudoGameActivity$3;-><init>(Lcom/living/emo/activity/LudoGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mPlay:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/LudoGameActivity$4;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/LudoGameActivity$4;-><init>(Lcom/living/emo/activity/LudoGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 111
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 114
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity;->addJavascriptInterface()V

    .line 115
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, -0x1

    .line 116
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 117
    invoke-virtual {p0}, Lcom/living/emo/activity/LudoGameActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 124
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 125
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/ludo/index.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    .line 66
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/LudoGameActivity;->setContentView(I)V

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/living/emo/util/LudoSoundPoolUtil;->getInstance()Lcom/living/emo/util/LudoSoundPoolUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity;->mLudoSoundPool:Lcom/living/emo/util/LudoSoundPoolUtil;

    .line 72
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const/4 v0, 0x1

    .line 74
    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->enterApp(I)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/LudoGameActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 75
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity;->initViews()V

    .line 76
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity;->initWebView()V

    .line 77
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity;->initProgressDialog()V

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity;->mHandler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 421
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 422
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 428
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 322
    invoke-virtual {p1}, Lcom/living/emo/event/MessageEvent;->getData()[B

    move-result-object p1

    .line 323
    new-instance v0, Lcom/living/emo/activity/LudoGameActivity$2;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/LudoGameActivity$2;-><init>(Lcom/living/emo/activity/LudoGameActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/bean/LudoGameBean;->ludoNotify([BLcom/living/emo/bean/LudoGameBean$LudoGameResponse;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mAudio:Lcom/living/emo/util/AudioUtil;

    const v1, 0x7f0f0007

    invoke-virtual {v0, p0, v1}, Lcom/living/emo/util/AudioUtil;->play(Landroid/content/Context;I)V

    .line 105
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mPlay:Landroid/widget/ImageView;

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 409
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onStop()V

    .line 410
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/LudoGameActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 412
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mAudio:Lcom/living/emo/util/AudioUtil;

    invoke-virtual {v0}, Lcom/living/emo/util/AudioUtil;->stopPlay()V

    .line 413
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity;->mPlay:Landroid/widget/ImageView;

    const v1, 0x7f08011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 414
    invoke-virtual {p0}, Lcom/living/emo/activity/LudoGameActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/living/emo/activity/LudoGameActivity;->finish()V

    :cond_0
    return-void
.end method
