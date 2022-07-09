.class public Lcom/living/emo/activity/MemoryActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "MemoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/MemoryActivity$TellNative;
    }
.end annotation


# static fields
.field private static final HANDLE_TIME_OUT:I = 0x1770

.field private static MEMORY_BAD:[I

.field private static MEMORY_GOOD_AND_GREAT:[I

.field private static MEMORY_PERFECT:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isGenAction:Z

.field private mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mFinalStr:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mSound:Lcom/living/emo/util/SoundUtil;

.field private mWebView:Landroid/webkit/WebView;

.field private task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/MemoryActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 44
    fill-array-data v0, :array_0

    sput-object v0, Lcom/living/emo/activity/MemoryActivity;->MEMORY_BAD:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 51
    fill-array-data v0, :array_1

    sput-object v0, Lcom/living/emo/activity/MemoryActivity;->MEMORY_GOOD_AND_GREAT:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0a003d

    aput v2, v0, v1

    .line 57
    sput-object v0, Lcom/living/emo/activity/MemoryActivity;->MEMORY_PERFECT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0034
        0x7f0a0035
        0x7f0a0036
        0x7f0a0037
        0x7f0a0038
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0039
        0x7f0a0039
        0x7f0a003b
        0x7f0a003c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/living/emo/activity/MemoryActivity$1;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/MemoryActivity$1;-><init>(Lcom/living/emo/activity/MemoryActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->task:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/living/emo/activity/MemoryActivity;->isGenAction:Z

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/MemoryActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/living/emo/activity/MemoryActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1000()[I
    .locals 1

    .line 32
    sget-object v0, Lcom/living/emo/activity/MemoryActivity;->MEMORY_PERFECT:[I

    return-object v0
.end method

.method static synthetic access$1100()[I
    .locals 1

    .line 32
    sget-object v0, Lcom/living/emo/activity/MemoryActivity;->MEMORY_GOOD_AND_GREAT:[I

    return-object v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    .line 32
    sget-object v0, Lcom/living/emo/activity/MemoryActivity;->MEMORY_BAD:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/living/emo/activity/MemoryActivity;)Lcom/living/emo/util/SoundUtil;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/living/emo/activity/MemoryActivity;->mSound:Lcom/living/emo/util/SoundUtil;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/activity/MemoryActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/living/emo/activity/MemoryActivity;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/activity/MemoryActivity;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/living/emo/activity/MemoryActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/activity/MemoryActivity;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/living/emo/activity/MemoryActivity;->isGenAction:Z

    return p0
.end method

.method static synthetic access$402(Lcom/living/emo/activity/MemoryActivity;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/living/emo/activity/MemoryActivity;->isGenAction:Z

    return p1
.end method

.method static synthetic access$500(Lcom/living/emo/activity/MemoryActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/living/emo/activity/MemoryActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/living/emo/activity/MemoryActivity;)Lcom/living/emo/presenter/PlayMusicPresenters;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/living/emo/activity/MemoryActivity;->mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/living/emo/activity/MemoryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/living/emo/activity/MemoryActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/living/emo/activity/MemoryActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/activity/MemoryActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/living/emo/activity/MemoryActivity;->mFinalStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/living/emo/activity/MemoryActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/living/emo/activity/MemoryActivity;->mFinalStr:Ljava/lang/String;

    return-object p1
.end method

.method private addJavascriptInterface()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/living/emo/activity/MemoryActivity$TellNative;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/living/emo/activity/MemoryActivity$TellNative;-><init>(Lcom/living/emo/activity/MemoryActivity;Lcom/living/emo/activity/MemoryActivity$1;)V

    const-string v2, "TellNative"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private initBle()V
    .locals 3

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 95
    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->enterApp(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method private initData()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/living/emo/util/SoundUtil;->getInstance()Lcom/living/emo/util/SoundUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mSound:Lcom/living/emo/util/SoundUtil;

    .line 77
    new-instance v0, Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-direct {v0, p0}, Lcom/living/emo/presenter/PlayMusicPresenters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    .line 99
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f1000de

    .line 100
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/MemoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 102
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f0901e1

    .line 106
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/MemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 108
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 109
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    return-void
.end method

.method private initWebView()V
    .locals 3

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 126
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 129
    invoke-direct {p0}, Lcom/living/emo/activity/MemoryActivity;->addJavascriptInterface()V

    .line 130
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, -0x1

    .line 131
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 132
    invoke-virtual {p0}, Lcom/living/emo/activity/MemoryActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 139
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 140
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/action/index.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget-object p1, Lcom/living/emo/activity/MemoryActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: oncreate"

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0c002a

    .line 66
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/MemoryActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/living/emo/activity/MemoryActivity;->initBle()V

    .line 68
    invoke-direct {p0}, Lcom/living/emo/activity/MemoryActivity;->initViews()V

    .line 69
    invoke-direct {p0}, Lcom/living/emo/activity/MemoryActivity;->initWebView()V

    .line 70
    invoke-direct {p0}, Lcom/living/emo/activity/MemoryActivity;->initProgressDialog()V

    .line 71
    iget-object p1, p0, Lcom/living/emo/activity/MemoryActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    invoke-direct {p0}, Lcom/living/emo/activity/MemoryActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 352
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 353
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-virtual {v0}, Lcom/living/emo/presenter/PlayMusicPresenters;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-virtual {v0}, Lcom/living/emo/presenter/PlayMusicPresenters;->pause()V

    .line 355
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-virtual {v0}, Lcom/living/emo/presenter/PlayMusicPresenters;->release()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 363
    :cond_2
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

    .line 150
    invoke-virtual {p1}, Lcom/living/emo/event/MessageEvent;->getData()[B

    move-result-object p1

    .line 151
    new-instance v0, Lcom/living/emo/activity/MemoryActivity$2;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/MemoryActivity$2;-><init>(Lcom/living/emo/activity/MemoryActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/bean/MemoryBean;->MemoryNotify([BLcom/living/emo/bean/MemoryBean$MemoryResponse;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 117
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-virtual {v0}, Lcom/living/emo/presenter/PlayMusicPresenters;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-virtual {v0}, Lcom/living/emo/presenter/PlayMusicPresenters;->play()V

    .line 120
    :cond_0
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 339
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onStop()V

    .line 340
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 342
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-virtual {v0}, Lcom/living/emo/presenter/PlayMusicPresenters;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity;->mAudio:Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-virtual {v0}, Lcom/living/emo/presenter/PlayMusicPresenters;->pause()V

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/activity/MemoryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/living/emo/activity/MemoryActivity;->finish()V

    :cond_1
    return-void
.end method
