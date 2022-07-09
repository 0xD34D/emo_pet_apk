.class public Lcom/living/emo/fragment/TimezoneFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "TimezoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/TimezoneFragment$State;
    }
.end annotation


# instance fields
.field private currState:Lcom/living/emo/fragment/TimezoneFragment$State;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mLoadTimezoneEditView:Landroid/view/View;

.field private mLoadTimezoneLoadingView:Landroid/view/View;

.field private mLoadTimezoneShowView:Landroid/view/View;

.field private mSet:Landroid/widget/ImageButton;

.field private mSettingActivity:Lcom/living/emo/activity/SettingActivity;

.field private mShowTextSetting:Landroid/widget/TextView;

.field private mTimeZoneEv:Landroid/widget/EditText;

.field mTimezoneContainer:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902cc
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    .line 50
    sget-object v0, Lcom/living/emo/fragment/TimezoneFragment$State;->LOADING:Lcom/living/emo/fragment/TimezoneFragment$State;

    iput-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->currState:Lcom/living/emo/fragment/TimezoneFragment$State;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/TimezoneFragment;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mShowTextSetting:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/TimezoneFragment;Lcom/living/emo/fragment/TimezoneFragment$State;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/TimezoneFragment;->changeStateView(Lcom/living/emo/fragment/TimezoneFragment$State;)V

    return-void
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/TimezoneFragment;)Lcom/living/emo/activity/SettingActivity;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    return-object p0
.end method

.method private changeStateView(Lcom/living/emo/fragment/TimezoneFragment$State;)V
    .locals 4

    .line 148
    iput-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment;->currState:Lcom/living/emo/fragment/TimezoneFragment$State;

    .line 149
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneLoadingView:Landroid/view/View;

    sget-object v1, Lcom/living/emo/fragment/TimezoneFragment$State;->LOADING:Lcom/living/emo/fragment/TimezoneFragment$State;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneEditView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->currState:Lcom/living/emo/fragment/TimezoneFragment$State;

    sget-object v1, Lcom/living/emo/fragment/TimezoneFragment$State;->EDIT:Lcom/living/emo/fragment/TimezoneFragment$State;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneShowView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->currState:Lcom/living/emo/fragment/TimezoneFragment$State;

    sget-object v1, Lcom/living/emo/fragment/TimezoneFragment$State;->SHOW:Lcom/living/emo/fragment/TimezoneFragment$State;

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private loadTimezoneEditView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c007d

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadTimezoneLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c006f

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadTimezoneShowView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c007f

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method initData()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 76
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->timezone()[B

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/living/emo/fragment/TimezoneFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v2, p0, Lcom/living/emo/fragment/TimezoneFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mSet:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$TimezoneFragment$O7j9EpAiT5-oMwvW674MeBLZ2Y0;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$TimezoneFragment$O7j9EpAiT5-oMwvW674MeBLZ2Y0;-><init>(Lcom/living/emo/fragment/TimezoneFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 59
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/living/emo/fragment/TimezoneFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/SettingActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    .line 61
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneEditView:Landroid/view/View;

    const v1, 0x7f09031d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mTimeZoneEv:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneEditView:Landroid/view/View;

    const v1, 0x7f090320

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mSet:Landroid/widget/ImageButton;

    .line 63
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mTimeZoneEv:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 64
    sget-object v0, Lcom/living/emo/fragment/TimezoneFragment$State;->LOADING:Lcom/living/emo/fragment/TimezoneFragment$State;

    invoke-direct {p0, v0}, Lcom/living/emo/fragment/TimezoneFragment;->changeStateView(Lcom/living/emo/fragment/TimezoneFragment$State;)V

    .line 65
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneShowView:Landroid/view/View;

    const v1, 0x7f090321

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$TimezoneFragment$_F1Uwi_evPGy_dY3CVq-SDySKzo;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$TimezoneFragment$_F1Uwi_evPGy_dY3CVq-SDySKzo;-><init>(Lcom/living/emo/fragment/TimezoneFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneShowView:Landroid/view/View;

    const v1, 0x7f090322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mShowTextSetting:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic lambda$initEvent$1$TimezoneFragment(Landroid/view/View;)V
    .locals 2

    .line 117
    sget-object p1, Lcom/living/emo/fragment/TimezoneFragment$State;->LOADING:Lcom/living/emo/fragment/TimezoneFragment$State;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/TimezoneFragment;->changeStateView(Lcom/living/emo/fragment/TimezoneFragment$State;)V

    .line 118
    iget-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment;->mSet:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 119
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->timeZone(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mSettingActivity:Lcom/living/emo/activity/SettingActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/TimezoneFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 122
    iget-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment;->mSet:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$initView$0$TimezoneFragment(Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mTimeZoneEv:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget-object p1, Lcom/living/emo/fragment/TimezoneFragment$State;->EDIT:Lcom/living/emo/fragment/TimezoneFragment$State;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/TimezoneFragment;->changeStateView(Lcom/living/emo/fragment/TimezoneFragment$State;)V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c007e

    return v0
.end method

.method protected loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/TimezoneFragment;->loadTimezoneLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneLoadingView:Landroid/view/View;

    .line 128
    iget-object v1, p0, Lcom/living/emo/fragment/TimezoneFragment;->mTimezoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/TimezoneFragment;->loadTimezoneEditView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneEditView:Landroid/view/View;

    .line 130
    iget-object v1, p0, Lcom/living/emo/fragment/TimezoneFragment;->mTimezoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/living/emo/fragment/TimezoneFragment;->loadTimezoneShowView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment;->mLoadTimezoneShowView:Landroid/view/View;

    .line 132
    iget-object p2, p0, Lcom/living/emo/fragment/TimezoneFragment;->mTimezoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 156
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

    .line 82
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:TimezoneFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/living/emo/fragment/TimezoneFragment$1;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/TimezoneFragment$1;-><init>(Lcom/living/emo/fragment/TimezoneFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleTimezoneResponseParse;->timezone(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleTimezoneResponseParse$Callback;)V

    .line 96
    new-instance v0, Lcom/living/emo/fragment/TimezoneFragment$2;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/TimezoneFragment$2;-><init>(Lcom/living/emo/fragment/TimezoneFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->timezone(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method
