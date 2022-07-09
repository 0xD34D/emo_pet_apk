.class public Lcom/living/emo/activity/DrumActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "DrumActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/DrumActivity$TellNative;
    }
.end annotation


# static fields
.field private static final HANDLE_TIME_OUT:I = 0x2710

.field private static PERMISSIONS_STORAGE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBack:Landroid/widget/ImageView;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebView;

.field private task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/DrumActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/DrumActivity;->TAG:Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 41
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/DrumActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/living/emo/activity/DrumActivity$1;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DrumActivity$1;-><init>(Lcom/living/emo/activity/DrumActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/DrumActivity;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/DrumActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/activity/DrumActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/activity/DrumActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/living/emo/activity/DrumActivity;->exitActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/living/emo/activity/DrumActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/activity/DrumActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/living/emo/activity/DrumActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/living/emo/activity/DrumActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/activity/DrumActivity;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/activity/DrumActivity;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/activity/DrumActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/activity/DrumActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/living/emo/activity/DrumActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method private addJavascriptInterface()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/living/emo/activity/DrumActivity$TellNative;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DrumActivity$TellNative;-><init>(Lcom/living/emo/activity/DrumActivity;)V

    const-string v2, "TellNative"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private checkPermissions()V
    .locals 4

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 106
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 107
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 108
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/living/emo/activity/DrumActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/living/emo/activity/DrumActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v0, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 116
    sget-object v0, Lcom/living/emo/activity/DrumActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v0, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private exitActivity()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/living/emo/activity/DrumActivity;->finish()V

    .line 97
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/living/emo/activity/-$$Lambda$DrumActivity$D3br4tur3thoDsB1kZ14vrLVqWM;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/-$$Lambda$DrumActivity$D3br4tur3thoDsB1kZ14vrLVqWM;-><init>(Lcom/living/emo/activity/DrumActivity;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DrumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$DrumActivity$YSJ95b-GpdoFqSaVSh5WHNLw-Zw;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$DrumActivity$YSJ95b-GpdoFqSaVSh5WHNLw-Zw;-><init>(Lcom/living/emo/activity/DrumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    .line 70
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f1000de

    .line 71
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/DrumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 73
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f09010f

    .line 161
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DrumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f09010e

    .line 162
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DrumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mBack:Landroid/widget/ImageView;

    return-void
.end method

.method private initWebView()V
    .locals 6

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 124
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setAllowUniversalAccessFromFileURLs"

    new-array v3, v1, [Ljava/lang/Class;

    .line 128
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v2, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 134
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/living/emo/activity/DrumActivity;->addJavascriptInterface()V

    .line 137
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, -0x1

    .line 139
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 140
    invoke-virtual {p0}, Lcom/living/emo/activity/DrumActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 148
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 149
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/dist/chose.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$exitActivity$1$DrumActivity()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public synthetic lambda$initEvents$0$DrumActivity(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/living/emo/activity/DrumActivity;->mBack:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 90
    invoke-direct {p0}, Lcom/living/emo/activity/DrumActivity;->exitActivity()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    .line 56
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/DrumActivity;->setContentView(I)V

    .line 57
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/living/emo/activity/DrumActivity;->initViews()V

    .line 59
    invoke-direct {p0}, Lcom/living/emo/activity/DrumActivity;->initWebView()V

    .line 60
    invoke-direct {p0}, Lcom/living/emo/activity/DrumActivity;->initEvents()V

    .line 61
    invoke-direct {p0}, Lcom/living/emo/activity/DrumActivity;->checkPermissions()V

    .line 62
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/DrumActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 63
    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->enterApp(I)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 64
    invoke-direct {p0}, Lcom/living/emo/activity/DrumActivity;->initProgressDialog()V

    .line 65
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/DrumActivity;->mHandler:Landroid/os/Handler;

    .line 66
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 338
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 339
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 345
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

    .line 263
    invoke-virtual {p1}, Lcom/living/emo/event/MessageEvent;->getData()[B

    move-result-object p1

    .line 264
    new-instance v0, Lcom/living/emo/activity/DrumActivity$2;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DrumActivity$2;-><init>(Lcom/living/emo/activity/DrumActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/bean/DrumGameBean;->drumNotify([BLcom/living/emo/bean/DrumGameBean$DrumGameResponse;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 328
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onStop()V

    .line 329
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 331
    invoke-virtual {p0}, Lcom/living/emo/activity/DrumActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/living/emo/activity/DrumActivity;->finish()V

    :cond_0
    return-void
.end method
