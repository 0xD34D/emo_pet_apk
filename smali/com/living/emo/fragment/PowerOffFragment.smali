.class public Lcom/living/emo/fragment/PowerOffFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "PowerOffFragment.java"


# instance fields
.field private mActivity:Lcom/living/emo/activity/SettingActivity;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mPowerOffBtnView:Landroid/view/View;

.field private mPowerOffIb:Landroid/widget/ImageButton;

.field mRelativeLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/PowerOffFragment;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/living/emo/fragment/PowerOffFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/PowerOffFragment;)Lcom/living/emo/activity/SettingActivity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/living/emo/fragment/PowerOffFragment;->mActivity:Lcom/living/emo/activity/SettingActivity;

    return-object p0
.end method

.method private askForPower()V
    .locals 3

    .line 63
    new-instance v0, Lcom/living/emo/view/PowerOffSureDialog;

    invoke-direct {v0}, Lcom/living/emo/view/PowerOffSureDialog;-><init>()V

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/living/emo/view/PowerOffSureDialog;->setCancelable(Z)V

    .line 65
    new-instance v1, Lcom/living/emo/fragment/PowerOffFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/PowerOffFragment$1;-><init>(Lcom/living/emo/fragment/PowerOffFragment;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/PowerOffSureDialog;->setDialogClickListener(Lcom/living/emo/view/PowerOffSureDialog$onDialogClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/living/emo/fragment/PowerOffFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/view/PowerOffSureDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method initData()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 52
    invoke-virtual {p0}, Lcom/living/emo/fragment/PowerOffFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/SettingActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment;->mActivity:Lcom/living/emo/activity/SettingActivity;

    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment;->mPowerOffIb:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PowerOffFragment$2xDvrxJh1gES058hMKK14Uh5BzY;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PowerOffFragment$2xDvrxJh1gES058hMKK14Uh5BzY;-><init>(Lcom/living/emo/fragment/PowerOffFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 102
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment;->mPowerOffBtnView:Landroid/view/View;

    const v1, 0x7f09024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment;->mPowerOffIb:Landroid/widget/ImageButton;

    return-void
.end method

.method public synthetic lambda$initEvent$0$PowerOffFragment(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/living/emo/fragment/PowerOffFragment;->askForPower()V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0075

    return v0
.end method

.method protected loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    const v0, 0x7f0c0074

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/PowerOffFragment;->mPowerOffBtnView:Landroid/view/View;

    .line 46
    iget-object p2, p0, Lcom/living/emo/fragment/PowerOffFragment;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 109
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

    .line 81
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:wifiSettingFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/living/emo/fragment/PowerOffFragment$2;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/PowerOffFragment$2;-><init>(Lcom/living/emo/fragment/PowerOffFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->powerOff(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method
