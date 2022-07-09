.class public Lcom/living/emo/activity/DanceListActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "DanceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/DanceListActivity$TellNative;
    }
.end annotation


# instance fields
.field private mBack:Landroid/widget/ImageView;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mDanceArray:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeMusicIv:Landroid/widget/ImageView;

.field private mHomeSet:Landroid/widget/ImageView;

.field private mTopTxtIv:Landroid/widget/ImageView;

.field private mWebView:Landroid/webkit/WebView;

.field private task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    .line 135
    new-instance v0, Lcom/living/emo/activity/DanceListActivity$2;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DanceListActivity$2;-><init>(Lcom/living/emo/activity/DanceListActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/DanceListActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/living/emo/activity/DanceListActivity;->goToMain()V

    return-void
.end method

.method static synthetic access$200(Lcom/living/emo/activity/DanceListActivity;)[Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/DanceListActivity;->mDanceArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/activity/DanceListActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/DanceListActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/activity/DanceListActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/DanceListActivity;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/activity/DanceListActivity;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/DanceListActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/activity/DanceListActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private addJavascriptInterface()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/living/emo/activity/DanceListActivity$TellNative;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/living/emo/activity/DanceListActivity$TellNative;-><init>(Lcom/living/emo/activity/DanceListActivity;Lcom/living/emo/activity/DanceListActivity$1;)V

    const-string v2, "TellNative"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private goToMain()V
    .locals 2

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/living/emo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DanceListActivity;->startActivity(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {p0}, Lcom/living/emo/activity/DanceListActivity;->finish()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$DanceListActivity$8Kurz9veItyVm8SHNosKxd0zFWk;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$DanceListActivity$8Kurz9veItyVm8SHNosKxd0zFWk;-><init>(Lcom/living/emo/activity/DanceListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DanceListActivity;->playBackgroundMusicEvent(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f09019e

    .line 84
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f090330

    .line 85
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mTopTxtIv:Landroid/widget/ImageView;

    const v1, 0x7f080242

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f090159

    .line 87
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    const v0, 0x7f09015b

    .line 88
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mHomeSet:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f09019d

    .line 90
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mBack:Landroid/widget/ImageView;

    .line 92
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    const v1, 0x7f09015a

    .line 94
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/DanceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/living/emo/util/MusicPlayerUtil;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v2, Lcom/living/emo/activity/DanceListActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/living/emo/activity/DanceListActivity$1;-><init>(Lcom/living/emo/activity/DanceListActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Lcom/living/emo/util/MusicPlayerUtil;->setOnChangeMusicName(Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;)V

    .line 102
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->init()V

    .line 104
    iget-object v1, p0, Lcom/living/emo/activity/DanceListActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method

.method private initWebView()V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/living/emo/activity/DanceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mDanceArray:[Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 111
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 112
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 114
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/living/emo/activity/DanceListActivity;->addJavascriptInterface()V

    .line 117
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, -0x1

    .line 119
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 120
    invoke-virtual {p0}, Lcom/living/emo/activity/DanceListActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 127
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/danceList/index.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "Syncing Dances list from EMO..."

    .line 129
    invoke-static {p0, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->danceList()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/DanceListActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mHandler:Landroid/os/Handler;

    .line 132
    iget-object v1, p0, Lcom/living/emo/activity/DanceListActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$initEvent$0$DanceListActivity(Landroid/view/View;)V
    .locals 1

    .line 77
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/activity/LifeTimeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/DanceListActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/living/emo/activity/DanceListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    .line 50
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/DanceListActivity;->setContentView(I)V

    .line 51
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/DanceListActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/living/emo/activity/DanceListActivity;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/living/emo/activity/DanceListActivity;->initWebView()V

    .line 55
    invoke-direct {p0}, Lcom/living/emo/activity/DanceListActivity;->initEvent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 184
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 185
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/activity/DanceListActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 197
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJsonEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hello"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/living/emo/activity/DanceListActivity$3;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DanceListActivity$3;-><init>(Lcom/living/emo/activity/DanceListActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleDanceListResponseParse;->danceLists(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleDanceListResponseParse$Callback;)V

    .line 211
    new-instance v0, Lcom/living/emo/activity/DanceListActivity$4;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DanceListActivity$4;-><init>(Lcom/living/emo/activity/DanceListActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultNumParse;->animRequest(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultNumParse$Callback;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 60
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 61
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->getUserIsPause()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPause()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPlay()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    .line 72
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/living/emo/activity/DanceListActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method
