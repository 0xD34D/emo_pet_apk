.class public Lcom/living/emo/fragment/WifiSettingFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "WifiSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;,
        Lcom/living/emo/fragment/WifiSettingFragment$State;
    }
.end annotation


# instance fields
.field private currState:Lcom/living/emo/fragment/WifiSettingFragment$State;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mConnectBtn:Landroid/widget/ImageButton;

.field private mConnectTxt:Landroid/widget/TextView;

.field private mConnectView:Landroid/view/View;

.field private mDisConnect:Landroid/widget/ImageButton;

.field private mDisConnectedView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingView:Landroid/view/View;

.field private mPwd:Ljava/lang/String;

.field private mPwdEv:Landroid/widget/EditText;

.field private mSetConnect:Landroid/widget/ImageButton;

.field private mSetWifiConnectView:Landroid/view/View;

.field private mSettingActivity:Lcom/living/emo/activity/SettingActivity;

.field private mSsid:Ljava/lang/String;

.field private mSsidEv:Landroid/widget/EditText;

.field public task:Ljava/lang/Runnable;

.field wifiCon:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    .line 87
    sget-object v0, Lcom/living/emo/fragment/WifiSettingFragment$State;->DIS_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->currState:Lcom/living/emo/fragment/WifiSettingFragment$State;

    .line 285
    new-instance v0, Lcom/living/emo/fragment/WifiSettingFragment$5;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/WifiSettingFragment$5;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwdEv:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mConnectTxt:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/fragment/WifiSettingFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/WifiSettingFragment;->hideInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/living/emo/fragment/WifiSettingFragment;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Z
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/living/emo/fragment/WifiSettingFragment;->isMessyCode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/WifiSettingFragment;Lcom/living/emo/fragment/WifiSettingFragment$State;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/WifiSettingFragment;->changeStateView(Lcom/living/emo/fragment/WifiSettingFragment$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/WifiSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/fragment/WifiSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/fragment/WifiSettingFragment;)Lcom/living/emo/activity/SettingActivity;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsidEv:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetWifiConnectView:Landroid/view/View;

    return-object p0
.end method

.method private changeStateView(Lcom/living/emo/fragment/WifiSettingFragment$State;)V
    .locals 4

    .line 106
    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->currState:Lcom/living/emo/fragment/WifiSettingFragment$State;

    .line 107
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mDisConnectedView:Landroid/view/View;

    sget-object v1, Lcom/living/emo/fragment/WifiSettingFragment$State;->DIS_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetWifiConnectView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->currState:Lcom/living/emo/fragment/WifiSettingFragment$State;

    sget-object v1, Lcom/living/emo/fragment/WifiSettingFragment$State;->SET_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mConnectView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->currState:Lcom/living/emo/fragment/WifiSettingFragment$State;

    sget-object v1, Lcom/living/emo/fragment/WifiSettingFragment$State;->CONNECTED:Lcom/living/emo/fragment/WifiSettingFragment$State;

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mLoadingView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->currState:Lcom/living/emo/fragment/WifiSettingFragment$State;

    sget-object v1, Lcom/living/emo/fragment/WifiSettingFragment$State;->LOADING:Lcom/living/emo/fragment/WifiSettingFragment$State;

    if-ne v0, v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideInput(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "input_method"

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 282
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private static isMessyCode(Ljava/lang/String;)Z
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "\\s*|\t*|\r*|\n*"

    .line 437
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 438
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 439
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\\p{P}"

    .line 440
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p0, :cond_0

    .line 443
    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 445
    aget-char v4, p0, v3

    .line 446
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v5, p0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[\u4e00-\u9fa5]+"

    .line 448
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 454
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v1
.end method

.method private loadConnectedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0066

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadDisConnectedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0067

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006f

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadSetWifiConnectView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0079

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method initData()V
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/living/emo/fragment/WifiSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/SettingActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    .line 168
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 169
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->network()[B

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v2, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 171
    invoke-virtual {p0}, Lcom/living/emo/fragment/WifiSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/DbManager;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/DatabaseUtil;

    return-void
.end method

.method protected initEvent()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetWifiConnectView:Landroid/view/View;

    const v1, 0x7f090374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$WifiSettingFragment$2DOXKvrA_44iBlcZVgb7C-T_QVE;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$WifiSettingFragment$2DOXKvrA_44iBlcZVgb7C-T_QVE;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mDisConnect:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$WifiSettingFragment$1Ae3FmPREtmn5z8LVBRWI4mIUXk;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$WifiSettingFragment$1Ae3FmPREtmn5z8LVBRWI4mIUXk;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsidEv:Landroid/widget/EditText;

    new-instance v1, Lcom/living/emo/fragment/WifiSettingFragment$6;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/WifiSettingFragment$6;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 351
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetConnect:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$WifiSettingFragment$MNacUZ2QTdlAQal-JYWBhGTdC8o;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$WifiSettingFragment$MNacUZ2QTdlAQal-JYWBhGTdC8o;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mConnectBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$WifiSettingFragment$tfdeoLaUyQawer2YakWvAg6nVog;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$WifiSettingFragment$tfdeoLaUyQawer2YakWvAg6nVog;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsidEv:Landroid/widget/EditText;

    new-instance v1, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;

    invoke-virtual {p0}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsidEv:Landroid/widget/EditText;

    const/16 v4, 0x1f

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;Landroid/content/Context;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 385
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwdEv:Landroid/widget/EditText;

    new-instance v1, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;

    invoke-virtual {p0}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwdEv:Landroid/widget/EditText;

    const/16 v4, 0x3f

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;Landroid/content/Context;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mDisConnectedView:Landroid/view/View;

    const v1, 0x7f0902c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mDisConnect:Landroid/widget/ImageButton;

    .line 129
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetWifiConnectView:Landroid/view/View;

    const v1, 0x7f0902c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetConnect:Landroid/widget/ImageButton;

    .line 130
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mConnectView:Landroid/view/View;

    const v1, 0x7f0902c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mConnectBtn:Landroid/widget/ImageButton;

    .line 131
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mConnectView:Landroid/view/View;

    const v1, 0x7f0902c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mConnectTxt:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetWifiConnectView:Landroid/view/View;

    const v1, 0x7f09037b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsidEv:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetWifiConnectView:Landroid/view/View;

    const v1, 0x7f090378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwdEv:Landroid/widget/EditText;

    .line 135
    new-instance v1, Lcom/living/emo/fragment/WifiSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/WifiSettingFragment$1;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetWifiConnectView:Landroid/view/View;

    const v1, 0x7f090373

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mHandler:Landroid/os/Handler;

    .line 162
    sget-object v0, Lcom/living/emo/fragment/WifiSettingFragment$State;->LOADING:Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-direct {p0, v0}, Lcom/living/emo/fragment/WifiSettingFragment;->changeStateView(Lcom/living/emo/fragment/WifiSettingFragment$State;)V

    return-void
.end method

.method public synthetic lambda$initEvent$0$WifiSettingFragment(Landroid/view/View;)V
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/living/emo/fragment/WifiSettingFragment;->hideInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initEvent$1$WifiSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 301
    sget-object p1, Lcom/living/emo/fragment/WifiSettingFragment$State;->SET_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/WifiSettingFragment;->changeStateView(Lcom/living/emo/fragment/WifiSettingFragment$State;)V

    return-void
.end method

.method public synthetic lambda$initEvent$2$WifiSettingFragment(Landroid/view/View;)V
    .locals 4

    .line 353
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsidEv:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsid:Ljava/lang/String;

    .line 355
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwdEv:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwd:Ljava/lang/String;

    .line 356
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/living/emo/fragment/WifiSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi ssid is required"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEvent: mSsidBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mSsidBytes"

    invoke-static {v3, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    array-length p1, p1

    const/16 v1, 0x1f

    const-string v3, "Your input exceeds the maximum length allowed."

    if-le p1, v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 366
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwd:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    .line 369
    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwd:Ljava/lang/String;

    .line 371
    :cond_2
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwd:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mPwdBytes"

    invoke-static {v2, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    array-length p1, p1

    const/16 v1, 0x3f

    if-le p1, v1, :cond_3

    .line 374
    invoke-virtual {p0}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 377
    :cond_3
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSsid:Ljava/lang/String;

    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mPwd:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->wifi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 378
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 379
    sget-object p1, Lcom/living/emo/fragment/WifiSettingFragment$State;->LOADING:Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/WifiSettingFragment;->changeStateView(Lcom/living/emo/fragment/WifiSettingFragment$State;)V

    return-void
.end method

.method public synthetic lambda$initEvent$3$WifiSettingFragment(Landroid/view/View;)V
    .locals 0

    .line 382
    sget-object p1, Lcom/living/emo/fragment/WifiSettingFragment$State;->SET_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/WifiSettingFragment;->changeStateView(Lcom/living/emo/fragment/WifiSettingFragment$State;)V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0081

    return v0
.end method

.method protected loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/WifiSettingFragment;->loadLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mLoadingView:Landroid/view/View;

    .line 92
    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->wifiCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/WifiSettingFragment;->loadDisConnectedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mDisConnectedView:Landroid/view/View;

    .line 94
    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->wifiCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/WifiSettingFragment;->loadSetWifiConnectView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mSetWifiConnectView:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->wifiCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/WifiSettingFragment;->loadConnectedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment;->mConnectView:Landroid/view/View;

    .line 98
    iget-object p2, p0, Lcom/living/emo/fragment/WifiSettingFragment;->wifiCon:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 462
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 463
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

    .line 176
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:wifiSettingFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/living/emo/fragment/WifiSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/WifiSettingFragment$2;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleNetworkResponseParse;->network(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;)V

    .line 191
    new-instance v0, Lcom/living/emo/fragment/WifiSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/WifiSettingFragment$3;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->wifi(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    .line 216
    new-instance v0, Lcom/living/emo/fragment/WifiSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/WifiSettingFragment$4;-><init>(Lcom/living/emo/fragment/WifiSettingFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleWifiRequestParse;->wifiReq(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleWifiRequestParse$Callback;)V

    return-void
.end method
