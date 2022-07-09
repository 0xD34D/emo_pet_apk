.class public Lcom/living/emo/fragment/FrmareSettingFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "FrmareSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/FrmareSettingFragment$State;
    }
.end annotation


# instance fields
.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mCurrState:Lcom/living/emo/fragment/FrmareSettingFragment$State;

.field private mCurrentVersion:Landroid/widget/TextView;

.field mFirmwareContainer:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c4
    .end annotation
.end field

.field private mLatestVersion:Landroid/widget/TextView;

.field private mLoadFirmwareBtnView:Landroid/view/View;

.field private mLoadFirmwareLoadingView:Landroid/view/View;

.field private mLoadFirmwareShowView:Landroid/view/View;

.field private mSettingActivity:Lcom/living/emo/activity/SettingActivity;

.field private mShowTv:Landroid/widget/TextView;

.field private mUpdateIb:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/FrmareSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLatestVersion:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/FrmareSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mCurrentVersion:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/FrmareSettingFragment;Lcom/living/emo/fragment/FrmareSettingFragment$State;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/FrmareSettingFragment;->changeStateView(Lcom/living/emo/fragment/FrmareSettingFragment$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/living/emo/fragment/FrmareSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mShowTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/FrmareSettingFragment;)Lcom/living/emo/activity/SettingActivity;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/fragment/FrmareSettingFragment;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/fragment/FrmareSettingFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mUpdateIb:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private alert()V
    .locals 3

    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/living/emo/fragment/FrmareSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Are you sure to update?"

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 157
    new-instance v1, Lcom/living/emo/fragment/FrmareSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/FrmareSettingFragment$3;-><init>(Lcom/living/emo/fragment/FrmareSettingFragment;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    new-instance v1, Lcom/living/emo/fragment/FrmareSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/FrmareSettingFragment$4;-><init>(Lcom/living/emo/fragment/FrmareSettingFragment;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private changeStateView(Lcom/living/emo/fragment/FrmareSettingFragment$State;)V
    .locals 4

    .line 68
    iput-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mCurrState:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    .line 69
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareLoadingView:Landroid/view/View;

    sget-object v1, Lcom/living/emo/fragment/FrmareSettingFragment$State;->LOADING:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareShowView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mCurrState:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    sget-object v1, Lcom/living/emo/fragment/FrmareSettingFragment$State;->SHOW:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareBtnView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mCurrState:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    sget-object v1, Lcom/living/emo/fragment/FrmareSettingFragment$State;->BTN:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private loadFirmwareBtnView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0064

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadFirmwareLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006f

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadFirmwareShowView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c007b

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method initData()V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/living/emo/fragment/FrmareSettingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/SettingActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    .line 100
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 101
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->version()[B

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v2, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mUpdateIb:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$FrmareSettingFragment$9a0IFWAGsim5g-QAx04qwHB2fOw;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$FrmareSettingFragment$9a0IFWAGsim5g-QAx04qwHB2fOw;-><init>(Lcom/living/emo/fragment/FrmareSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/living/emo/fragment/FrmareSettingFragment$State;->LOADING:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    invoke-direct {p0, v0}, Lcom/living/emo/fragment/FrmareSettingFragment;->changeStateView(Lcom/living/emo/fragment/FrmareSettingFragment$State;)V

    .line 90
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareShowView:Landroid/view/View;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mShowTv:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareBtnView:Landroid/view/View;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mUpdateIb:Landroid/widget/ImageButton;

    .line 92
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareBtnView:Landroid/view/View;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLatestVersion:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareBtnView:Landroid/view/View;

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mCurrentVersion:Landroid/widget/TextView;

    .line 94
    sget-object v0, Lcom/living/emo/fragment/FrmareSettingFragment$State;->LOADING:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    invoke-direct {p0, v0}, Lcom/living/emo/fragment/FrmareSettingFragment;->changeStateView(Lcom/living/emo/fragment/FrmareSettingFragment$State;)V

    return-void
.end method

.method public synthetic lambda$initEvent$0$FrmareSettingFragment(Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mUpdateIb:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 109
    invoke-direct {p0}, Lcom/living/emo/fragment/FrmareSettingFragment;->alert()V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0069

    return v0
.end method

.method protected loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/FrmareSettingFragment;->loadFirmwareLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareLoadingView:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mFirmwareContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/FrmareSettingFragment;->loadFirmwareShowView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareShowView:Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mFirmwareContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/FrmareSettingFragment;->loadFirmwareBtnView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mLoadFirmwareBtnView:Landroid/view/View;

    .line 63
    iget-object p2, p0, Lcom/living/emo/fragment/FrmareSettingFragment;->mFirmwareContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 177
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 178
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

    .line 115
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:FrmareSettingFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/living/emo/fragment/FrmareSettingFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/living/emo/fragment/FrmareSettingFragment$1;-><init>(Lcom/living/emo/fragment/FrmareSettingFragment;Lcom/living/emo/bean/EmoUpdate;)V

    invoke-static {p1, v1}, Lcom/living/emo/blebean/parse/BleVersionResponseParse;->version(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;)V

    .line 139
    new-instance v0, Lcom/living/emo/fragment/FrmareSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/FrmareSettingFragment$2;-><init>(Lcom/living/emo/fragment/FrmareSettingFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->ota(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method
