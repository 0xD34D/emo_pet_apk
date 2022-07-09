.class public Lcom/living/emo/MainActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/living/emo/interfaces/IVersionContrlView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/MainActivity$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private currState:Lcom/living/emo/MainActivity$State;

.field private isgo:Z

.field private mAct:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/living/emo/bean/StatusBean;",
            ">;"
        }
    .end annotation
.end field

.field private mBackIv:Landroid/widget/ImageView;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mBtnGameIb:Landroid/widget/ImageButton;

.field private mBtnGameIv:Landroid/widget/ImageView;

.field private mBtnInteractIb:Landroid/widget/ImageButton;

.field private mBtnInteractIv:Landroid/widget/ImageView;

.field private mBtnLifeTimeIb:Landroid/widget/ImageButton;

.field private mBtnLifeTimeIv:Landroid/widget/ImageView;

.field private mBtnUtilitiesIb:Landroid/widget/ImageButton;

.field private mBtnUtilitiesIv:Landroid/widget/ImageView;

.field private mCommunity:Landroid/widget/LinearLayout;

.field private mCustom:Landroid/widget/ImageView;

.field private mDocView:Landroid/widget/LinearLayout;

.field private mEmoName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeMusicIv:Landroid/widget/ImageView;

.field private mHomeSetIv:Landroid/widget/ImageView;

.field private mIconCustomize:Landroid/widget/ImageView;

.field private mIconEdit:Landroid/widget/ImageView;

.field private mIconEditText:Landroid/widget/TextView;

.field private mIconRecognition:Landroid/widget/ImageView;

.field private mImgElectricity:Landroid/widget/ImageView;

.field private mNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;

.field private mNotifications:Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

.field private mPg1:Landroid/widget/ProgressBar;

.field private mRecognitionNameView:Lcom/living/emo/view/RecognitionNameView;

.field private mStatusAdapter:Lcom/living/emo/adapter/StatusAdapter;

.field private mTopTxtIv:Landroid/widget/ImageView;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClose:Landroid/widget/TextView;

.field private mWebViewCon:Landroid/widget/RelativeLayout;

.field private mWebViewLeft:Landroid/widget/ImageView;

.field private mWebViewRefresh:Landroid/widget/ImageView;

.field private mWebViewRight:Landroid/widget/ImageView;

.field private needClearHistory:Z

.field private task:Ljava/lang/Runnable;

.field private taskSetting:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/living/emo/MainActivity;->needClearHistory:Z

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/living/emo/-$$Lambda$MainActivity$4Nq5tpafePrAaEwjabhRQDj8mXE;

    invoke-direct {v0, p0}, Lcom/living/emo/-$$Lambda$MainActivity$4Nq5tpafePrAaEwjabhRQDj8mXE;-><init>(Lcom/living/emo/MainActivity;)V

    iput-object v0, p0, Lcom/living/emo/MainActivity;->task:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/living/emo/-$$Lambda$MainActivity$unR3MwNCZtrw0NCFW-aIH4diDPE;

    invoke-direct {v0, p0}, Lcom/living/emo/-$$Lambda$MainActivity$unR3MwNCZtrw0NCFW-aIH4diDPE;-><init>(Lcom/living/emo/MainActivity;)V

    iput-object v0, p0, Lcom/living/emo/MainActivity;->taskSetting:Ljava/lang/Runnable;

    .line 143
    sget-object v0, Lcom/living/emo/MainActivity$State;->NONE:Lcom/living/emo/MainActivity$State;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->currState:Lcom/living/emo/MainActivity$State;

    const/4 v0, 0x1

    .line 582
    iput-boolean v0, p0, Lcom/living/emo/MainActivity;->isgo:Z

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/MainActivity;)Lcom/living/emo/util/NoticeSharedPreferences;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/living/emo/MainActivity;->mNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/MainActivity;)Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/living/emo/MainActivity;->mNotifications:Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/MainActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/living/emo/MainActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/living/emo/MainActivity;Lcom/living/emo/MainActivity$State;)Lcom/living/emo/MainActivity$State;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/living/emo/MainActivity;->currState:Lcom/living/emo/MainActivity$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/living/emo/MainActivity;Ljava/lang/String;)Z
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/living/emo/MainActivity;->shadowSensitive(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/living/emo/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/living/emo/MainActivity;->mEmoName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/living/emo/MainActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/living/emo/MainActivity;->needClearHistory:Z

    return p0
.end method

.method static synthetic access$602(Lcom/living/emo/MainActivity;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/living/emo/MainActivity;->needClearHistory:Z

    return p1
.end method

.method static synthetic access$700(Lcom/living/emo/MainActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/MainActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/living/emo/MainActivity;->mPg1:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/living/emo/MainActivity;->mIconEditText:Landroid/widget/TextView;

    return-object p0
.end method

.method private askName()V
    .locals 3

    .line 275
    new-instance v0, Lcom/living/emo/view/RecognitionNameView;

    invoke-direct {v0}, Lcom/living/emo/view/RecognitionNameView;-><init>()V

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mRecognitionNameView:Lcom/living/emo/view/RecognitionNameView;

    const-string v1, "Please give your EMO a last name"

    .line 276
    invoke-virtual {v0, v1}, Lcom/living/emo/view/RecognitionNameView;->setTitle(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mRecognitionNameView:Lcom/living/emo/view/RecognitionNameView;

    new-instance v1, Lcom/living/emo/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/living/emo/MainActivity$2;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/RecognitionNameView;->setDialogClickListener(Lcom/living/emo/view/RecognitionNameView$onDialogClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mRecognitionNameView:Lcom/living/emo/view/RecognitionNameView;

    invoke-virtual {p0}, Lcom/living/emo/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "editName"

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/view/RecognitionNameView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private checkWifiIsEnable()Z
    .locals 2

    .line 396
    invoke-virtual {p0}, Lcom/living/emo/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initDatas()V
    .locals 5

    .line 240
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 241
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->versionAndPersonality()[B

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/living/emo/MainActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p0, v1, v0}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 243
    invoke-static {}, Lcom/living/emo/bean/StatusBean;->getData()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mAlertData:Ljava/util/HashMap;

    .line 245
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 246
    invoke-virtual {p0}, Lcom/living/emo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 247
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 248
    invoke-virtual {v0, v4, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_0
    new-instance v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    invoke-direct {v1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;-><init>()V

    iput-object v1, p0, Lcom/living/emo/MainActivity;->mAct:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    .line 251
    invoke-virtual {v1, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->build(Ljava/util/Map;)V

    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mBtnInteractIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mBtnLifeTimeIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mBtnUtilitiesIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mBtnGameIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mBackIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mHomeSetIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mNotifications:Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    invoke-virtual {v0, p0}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->playBackgroundMusicEvent(Landroid/view/View;)V

    .line 334
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mDocView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$gi1Om5UtxSGT1ORqaP89PdYfFYM;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$gi1Om5UtxSGT1ORqaP89PdYfFYM;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mCommunity:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$WbJjR32A23wJhwBPBFOm01-DWDc;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$WbJjR32A23wJhwBPBFOm01-DWDc;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mIconCustomize:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$GSUej6bIo0pVLB97cQfN4MAVrwc;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$GSUej6bIo0pVLB97cQfN4MAVrwc;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mIconRecognition:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$nX7FbkFDuyzXVbSpc6Vw_wC4q2c;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$nX7FbkFDuyzXVbSpc6Vw_wC4q2c;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mIconEdit:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$0CzH3DJTG5Wpg_iWCy5k01cmNh8;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$0CzH3DJTG5Wpg_iWCy5k01cmNh8;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebViewLeft:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$9xYsVNdK4iXkgJNGoI1t1ouZrME;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$9xYsVNdK4iXkgJNGoI1t1ouZrME;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebViewRight:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$DXKtFhfn1IfKZGXoaKxxZGjDAl4;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$DXKtFhfn1IfKZGXoaKxxZGjDAl4;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebViewRefresh:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$4rAud207DGUZW4WfWfDzwNx6F7I;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$4rAud207DGUZW4WfWfDzwNx6F7I;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebViewClose:Landroid/widget/TextView;

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$wIrgaPaqoTm7r1Wsezl8RT95rlA;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$wIrgaPaqoTm7r1Wsezl8RT95rlA;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initNotice()V
    .locals 3

    .line 173
    invoke-static {}, Lcom/living/emo/util/NoticesBean;->getInstance()Lcom/living/emo/util/NoticesBean;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/living/emo/util/NoticesBean;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    invoke-static {}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->getInstance()Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    move-result-object v1

    new-instance v2, Lcom/living/emo/MainActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/living/emo/MainActivity$1;-><init>(Lcom/living/emo/MainActivity;Lcom/living/emo/util/NoticesBean;)V

    invoke-virtual {v1, v2}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->setOnIResultContrlView(Lcom/living/emo/interfaces/IResultContrlView;)V

    .line 220
    invoke-static {}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->getInstance()Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->NoticesInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNotice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private initPresenter()V
    .locals 3

    .line 231
    new-instance v0, Lcom/living/emo/presenter/domain/VersionPresenterImpl;

    invoke-direct {v0}, Lcom/living/emo/presenter/domain/VersionPresenterImpl;-><init>()V

    .line 232
    invoke-virtual {v0, p0}, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->registerControlView(Lcom/living/emo/interfaces/IVersionContrlView;)V

    .line 233
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/living/emo/bean/EmoUpdate;->getServerVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->getVersionInfo()V

    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 4

    const v0, 0x7f090330

    .line 401
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mTopTxtIv:Landroid/widget/ImageView;

    const v1, 0x7f080354

    .line 402
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v0, 0x7f090159

    .line 403
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    const v0, 0x7f09015b

    .line 404
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mHomeSetIv:Landroid/widget/ImageView;

    const v0, 0x7f09008a

    .line 405
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBtnInteractIv:Landroid/widget/ImageView;

    const v0, 0x7f09008c

    .line 406
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBtnLifeTimeIv:Landroid/widget/ImageView;

    const v0, 0x7f09008e

    .line 407
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBtnUtilitiesIv:Landroid/widget/ImageView;

    const v0, 0x7f090088

    .line 408
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBtnGameIv:Landroid/widget/ImageView;

    const v0, 0x7f090089

    .line 409
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBtnInteractIb:Landroid/widget/ImageButton;

    const v0, 0x7f09008b

    .line 410
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBtnLifeTimeIb:Landroid/widget/ImageButton;

    const v0, 0x7f09008d

    .line 411
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBtnUtilitiesIb:Landroid/widget/ImageButton;

    const v0, 0x7f090151

    .line 412
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBackIv:Landroid/widget/ImageView;

    const v0, 0x7f090087

    .line 413
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mBtnGameIb:Landroid/widget/ImageButton;

    const v0, 0x7f090154

    .line 417
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mImgElectricity:Landroid/widget/ImageView;

    const v0, 0x7f09014e

    .line 419
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 420
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 421
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 422
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 423
    new-instance v1, Lcom/living/emo/adapter/StatusAdapter;

    invoke-direct {v1}, Lcom/living/emo/adapter/StatusAdapter;-><init>()V

    iput-object v1, p0, Lcom/living/emo/MainActivity;->mStatusAdapter:Lcom/living/emo/adapter/StatusAdapter;

    .line 424
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 427
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    const v1, 0x7f09015a

    .line 429
    invoke-virtual {p0, v1}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 430
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/living/emo/util/MusicPlayerUtil;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    new-instance v3, Lcom/living/emo/MainActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/living/emo/MainActivity$3;-><init>(Lcom/living/emo/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Lcom/living/emo/util/MusicPlayerUtil;->setOnChangeMusicName(Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;)V

    .line 437
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->init()V

    .line 439
    iget-object v1, p0, Lcom/living/emo/MainActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    const v0, 0x7f0901c1

    .line 443
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mDocView:Landroid/widget/LinearLayout;

    const v0, 0x7f0901c2

    .line 444
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mNotifications:Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    const v0, 0x7f0901c0

    .line 445
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mCommunity:Landroid/widget/LinearLayout;

    const v0, 0x7f090153

    .line 446
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mCustom:Landroid/widget/ImageView;

    const v0, 0x7f090155

    .line 447
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mIconCustomize:Landroid/widget/ImageView;

    const v0, 0x7f090156

    .line 448
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mIconEdit:Landroid/widget/ImageView;

    const v0, 0x7f090158

    .line 449
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mIconRecognition:Landroid/widget/ImageView;

    const v0, 0x7f090157

    .line 450
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mIconEditText:Landroid/widget/TextView;

    const v0, 0x7f0901c3

    .line 452
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f090258

    .line 453
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mPg1:Landroid/widget/ProgressBar;

    .line 454
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 455
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 456
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 v1, -0x1

    .line 457
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 458
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 459
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 460
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    const-string v1, "utf-8"

    .line 461
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 464
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 465
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/living/emo/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/living/emo/MainActivity$4;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 509
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/living/emo/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/living/emo/MainActivity$5;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const v0, 0x7f0901c5

    .line 522
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mWebViewCon:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901c7

    .line 524
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mWebViewLeft:Landroid/widget/ImageView;

    const v0, 0x7f0901c9

    .line 525
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mWebViewRight:Landroid/widget/ImageView;

    const v0, 0x7f0901c8

    .line 526
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mWebViewRefresh:Landroid/widget/ImageView;

    const v0, 0x7f0901c4

    .line 527
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/MainActivity;->mWebViewClose:Landroid/widget/TextView;

    return-void
.end method

.method private shadowSensitive(Ljava/lang/String;)Z
    .locals 5

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 256
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mAct:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    invoke-virtual {p1, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->parseText(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "*"

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;

    .line 259
    iget v3, v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->begin:I

    :goto_0
    iget v4, v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->end:I

    if-ge v3, v4, :cond_0

    .line 260
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stringBuffer:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getVersionInfo(Lcom/living/emo/bean/domain/Version;)V
    .locals 2

    .line 812
    invoke-virtual {p1}, Lcom/living/emo/bean/domain/Version;->getErrcode()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    .line 813
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/bean/domain/Version;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/bean/EmoUpdate;->setServerVersionName(Ljava/lang/String;)V

    .line 814
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/bean/domain/Version;->getVersionNum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/living/emo/bean/EmoUpdate;->setServerVersion(I)V

    .line 815
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/EmoUpdate;->isUpdate()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "There is a new firmware available for EMO, please install it in settings."

    .line 816
    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "MainActivity"

    const-string v0, "getVersionInfo:\u670d\u52a1\u7aef\u6ca1\u6709\u4efb\u4f55\u7248\u672c\u4fe1\u606f"

    .line 819
    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public goToActivity(Ljava/lang/Class;)V
    .locals 4

    .line 585
    iget-boolean v0, p0, Lcom/living/emo/MainActivity;->isgo:Z

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    :cond_0
    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcom/living/emo/MainActivity;->isgo:Z

    .line 591
    iget-object v1, p0, Lcom/living/emo/MainActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    aget v0, v2, v0

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->statusOnOff(I)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 592
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$HYOVdD7FM3coU2vnccN1y7-RqT8;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/-$$Lambda$MainActivity$HYOVdD7FM3coU2vnccN1y7-RqT8;-><init>(Lcom/living/emo/MainActivity;Ljava/lang/Class;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public synthetic lambda$goToActivity$11$MainActivity(Ljava/lang/Class;)V
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->syncAOnOff(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 594
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    const-class v1, Lcom/living/emo/activity/RecognitionActivity;

    if-ne p1, v1, :cond_0

    .line 596
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "from_activity"

    const-string v2, "main_activity"

    .line 597
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 600
    :cond_0
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 601
    invoke-virtual {p0}, Lcom/living/emo/MainActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initEvents$10$MainActivity(Landroid/view/View;)V
    .locals 2

    .line 386
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 387
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebViewCon:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 389
    iput-boolean p1, p0, Lcom/living/emo/MainActivity;->needClearHistory:Z

    return-void

    :array_0
    .array-data 8
        0xa
        0x32
        0xa
        0x32
    .end array-data
.end method

.method public synthetic lambda$initEvents$2$MainActivity(Landroid/view/View;)V
    .locals 1

    .line 335
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebViewCon:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, "https://living.ai/docs/emo/"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initEvents$3$MainActivity(Landroid/view/View;)V
    .locals 1

    .line 339
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebViewCon:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, "https://forums.living.ai/"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initEvents$4$MainActivity(Landroid/view/View;)V
    .locals 1

    .line 344
    invoke-direct {p0}, Lcom/living/emo/MainActivity;->checkWifiIsEnable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "Please make sure that your mobile device and EMO have been connected to the same network."

    .line 345
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    const/4 p1, 0x0

    .line 349
    iput-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 350
    const-class p1, Lcom/living/emo/activity/CustomizationActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic lambda$initEvents$5$MainActivity(Landroid/view/View;)V
    .locals 0

    .line 353
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    const/4 p1, 0x0

    .line 354
    iput-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    .line 355
    const-class p1, Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic lambda$initEvents$6$MainActivity(Landroid/view/View;)V
    .locals 3

    .line 359
    sget-object p1, Lcom/living/emo/MainActivity$State;->IN:Lcom/living/emo/MainActivity$State;

    iput-object p1, p0, Lcom/living/emo/MainActivity;->currState:Lcom/living/emo/MainActivity$State;

    const p1, 0x7f1000de

    .line 360
    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v0, "in"

    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->EditInfoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 362
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/MainActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$initEvents$7$MainActivity(Landroid/view/View;)V
    .locals 2

    const-string p1, "MainActivity"

    const-string v0, "initEvents: mWebViewLeft"

    .line 366
    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 369
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0xa
        0x32
        0xa
        0x32
    .end array-data
.end method

.method public synthetic lambda$initEvents$8$MainActivity(Landroid/view/View;)V
    .locals 2

    const-string p1, "MainActivity"

    const-string v0, "initEvents: mWebViewRight"

    .line 374
    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 378
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0xa
        0x32
        0xa
        0x32
    .end array-data
.end method

.method public synthetic lambda$initEvents$9$MainActivity(Landroid/view/View;)V
    .locals 2

    .line 382
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 383
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void

    :array_0
    .array-data 8
        0xa
        0x32
        0xa
        0x32
    .end array-data
.end method

.method public synthetic lambda$new$0$MainActivity()V
    .locals 1

    .line 131
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    const-string v0, "Request timed out. Please make sure EMO is upgraded to 1.4.0 and above."

    .line 132
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$1$MainActivity()V
    .locals 1

    .line 135
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    const v0, 0x7f10005f

    .line 136
    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onPause$12$MainActivity()V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->syncAOnOff(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 570
    :sswitch_0
    invoke-static {}, Lcom/living/emo/util/NoticesBean;->getInstance()Lcom/living/emo/util/NoticesBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/NoticesBean;->empty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "loading..."

    .line 571
    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 573
    :cond_0
    const-class p1, Lcom/living/emo/activity/NotificationsActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 555
    :sswitch_1
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object p1

    .line 556
    invoke-virtual {p1}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersion()I

    move-result v0

    .line 557
    invoke-virtual {p1}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersionName()Ljava/lang/String;

    move-result-object p1

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: versionName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const-string v0, "1.4.0"

    .line 559
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1.4.0.p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f1000de

    .line 560
    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 561
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v0, "in"

    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->Setting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 562
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/MainActivity;->taskSetting:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 564
    :cond_1
    const-class p1, Lcom/living/emo/activity/SettingActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 549
    :sswitch_2
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->destroy()V

    .line 550
    const-class p1, Lcom/living/emo/activity/ConnectActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    .line 551
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/MusicPlayerUtil;->end()V

    goto :goto_0

    .line 542
    :sswitch_3
    const-class p1, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 538
    :sswitch_4
    const-class p1, Lcom/living/emo/activity/LifeTimeActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 535
    :sswitch_5
    const-class p1, Lcom/living/emo/activity/InteractActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 546
    :sswitch_6
    const-class p1, Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090087 -> :sswitch_6
        0x7f090089 -> :sswitch_5
        0x7f09008b -> :sswitch_4
        0x7f09008d -> :sswitch_3
        0x7f090151 -> :sswitch_2
        0x7f09015b -> :sswitch_1
        0x7f0901c2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0029

    .line 148
    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->setContentView(I)V

    .line 149
    invoke-direct {p0}, Lcom/living/emo/MainActivity;->initNotice()V

    .line 150
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0}, Lcom/living/emo/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/living/emo/MainActivity;->mVibrator:Landroid/os/Vibrator;

    .line 152
    invoke-static {p0}, Lcom/living/emo/util/NoticeSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/NoticeSharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/MainActivity;->mNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;

    .line 153
    invoke-direct {p0}, Lcom/living/emo/MainActivity;->initDatas()V

    .line 154
    invoke-direct {p0}, Lcom/living/emo/MainActivity;->initViews()V

    .line 155
    invoke-direct {p0}, Lcom/living/emo/MainActivity;->initEvents()V

    .line 156
    invoke-direct {p0}, Lcom/living/emo/MainActivity;->initPresenter()V

    .line 158
    invoke-static {}, Lcom/living/emo/util/NoticesBean;->getInstance()Lcom/living/emo/util/NoticesBean;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/living/emo/util/NoticesBean;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p1}, Lcom/living/emo/util/NoticesBean;->isMainNew()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mNotifications:Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->isShowBadge()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MainActivity"

    const-string v0, "onCreate: fffffffff"

    .line 162
    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mNotifications:Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    const-string v0, "NEW"

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->showTextBadge(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mNotifications:Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->hiddenBadge()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .line 825
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 826
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 827
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 829
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 834
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 609
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:MainActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    new-instance v0, Lcom/living/emo/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/living/emo/MainActivity$6;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleVersionResponseParse;->version(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;)V

    .line 643
    new-instance v0, Lcom/living/emo/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/living/emo/MainActivity$7;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BlePersonalityResponseParse;->personality(Ljava/lang/String;Lcom/living/emo/blebean/parse/BlePersonalityResponseParse$Callback;)V

    .line 650
    new-instance v0, Lcom/living/emo/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/living/emo/MainActivity$8;-><init>(Lcom/living/emo/MainActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->ota(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    .line 662
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 663
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 664
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    .line 665
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edit_info_rsp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 666
    invoke-virtual {v0}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result v1

    .line 667
    iget-object v3, p0, Lcom/living/emo/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/living/emo/MainActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x3

    if-ne v1, v2, :cond_3

    .line 669
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 670
    sget-object v1, Lcom/living/emo/MainActivity$9;->$SwitchMap$com$living$emo$MainActivity$State:[I

    iget-object v4, p0, Lcom/living/emo/MainActivity;->currState:Lcom/living/emo/MainActivity$State;

    invoke-virtual {v4}, Lcom/living/emo/MainActivity$State;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v2, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/living/emo/MainActivity;->mIconEditText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EMO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/living/emo/MainActivity;->mEmoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "successful"

    .line 679
    invoke-virtual {p0, v1}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :cond_1
    sget-object v1, Lcom/living/emo/MainActivity$State;->NONE:Lcom/living/emo/MainActivity$State;

    iput-object v1, p0, Lcom/living/emo/MainActivity;->currState:Lcom/living/emo/MainActivity$State;

    goto :goto_0

    .line 672
    :cond_2
    invoke-direct {p0}, Lcom/living/emo/MainActivity;->askName()V

    .line 682
    :goto_0
    sget-object v1, Lcom/living/emo/MainActivity$State;->NONE:Lcom/living/emo/MainActivity$State;

    iput-object v1, p0, Lcom/living/emo/MainActivity;->currState:Lcom/living/emo/MainActivity$State;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_5

    .line 684
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 685
    sget-object v1, Lcom/living/emo/MainActivity$9;->$SwitchMap$com$living$emo$MainActivity$State:[I

    iget-object v4, p0, Lcom/living/emo/MainActivity;->currState:Lcom/living/emo/MainActivity$State;

    invoke-virtual {v4}, Lcom/living/emo/MainActivity$State;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "fail"

    .line 691
    invoke-virtual {p0, v1}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v3, 0xa

    if-ne v1, v3, :cond_7

    .line 695
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 696
    iget-object v1, p0, Lcom/living/emo/MainActivity;->mRecognitionNameView:Lcom/living/emo/view/RecognitionNameView;

    if-eqz v1, :cond_6

    .line 697
    invoke-virtual {v1}, Lcom/living/emo/view/RecognitionNameView;->dismiss()V

    .line 699
    :cond_6
    sget-object v1, Lcom/living/emo/MainActivity$State;->NONE:Lcom/living/emo/MainActivity$State;

    iput-object v1, p0, Lcom/living/emo/MainActivity;->currState:Lcom/living/emo/MainActivity$State;

    .line 705
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "setting_rsp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 706
    invoke-virtual {v0}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p1

    .line 707
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/MainActivity;->taskSetting:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-ne p1, v2, :cond_8

    .line 709
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 710
    const-class p1, Lcom/living/emo/activity/SettingActivity;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->goToActivity(Ljava/lang/Class;)V

    goto :goto_2

    .line 712
    :cond_8
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    const p1, 0x7f10005f

    .line 713
    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 724
    invoke-virtual {p1}, Lcom/living/emo/event/MessageEvent;->getData()[B

    move-result-object p1

    const/4 v0, 0x3

    .line 728
    aget-byte v1, p1, v0

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const-string v6, "MainActivity"

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v5

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    aget v2, v2, v3

    if-ne v1, v2, :cond_0

    .line 729
    aget-byte v1, p1, v4

    const/4 v2, 0x6

    .line 730
    aget-byte v2, p1, v2

    .line 731
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMessageEvent2: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v2, p0, Lcom/living/emo/MainActivity;->mAlertData:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/bean/StatusBean;

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMessageEvent: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 736
    iget-object v2, p0, Lcom/living/emo/MainActivity;->mStatusAdapter:Lcom/living/emo/adapter/StatusAdapter;

    invoke-virtual {v2, v1}, Lcom/living/emo/adapter/StatusAdapter;->setData(Lcom/living/emo/bean/StatusBean;)V

    .line 742
    :cond_0
    aget-byte v0, p1, v0

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_CATEGORY:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-ne v0, v1, :cond_7

    aget-byte v0, p1, v5

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_7

    .line 743
    aget-byte p1, p1, v4

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Electricity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    const/16 v0, 0x28

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 762
    :cond_1
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mImgElectricity:Landroid/widget/ImageView;

    const v0, 0x7f080193

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 759
    :cond_2
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mImgElectricity:Landroid/widget/ImageView;

    const v0, 0x7f080192

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 756
    :cond_3
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mImgElectricity:Landroid/widget/ImageView;

    const v0, 0x7f080191

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 753
    :cond_4
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mImgElectricity:Landroid/widget/ImageView;

    const v0, 0x7f080190

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 750
    :cond_5
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mImgElectricity:Landroid/widget/ImageView;

    const v0, 0x7f08018f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 747
    :cond_6
    iget-object p1, p0, Lcom/living/emo/MainActivity;->mImgElectricity:Landroid/widget/ImageView;

    const v0, 0x7f08018e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 794
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onPause()V

    .line 795
    iget-boolean v0, p0, Lcom/living/emo/MainActivity;->isgo:Z

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->statusOnOff(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 797
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$8BcG0LfhjfecXE72b8juKCzD_IQ;

    invoke-direct {v1, p0}, Lcom/living/emo/-$$Lambda$MainActivity$8BcG0LfhjfecXE72b8juKCzD_IQ;-><init>(Lcom/living/emo/MainActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/living/emo/MainActivity;->isgo:Z

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 804
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 807
    :cond_1
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 771
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 772
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 775
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 776
    iget-object v0, p0, Lcom/living/emo/MainActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 778
    :cond_0
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->getUserIsPause()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 781
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPause()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 783
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->userPlay()V

    goto :goto_0

    .line 785
    :cond_2
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 786
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    .line 789
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/living/emo/MainActivity;->mHomeMusicIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/util/MusicPlayerUtil;->backgroundImage(Landroid/view/View;)V

    return-void
.end method
