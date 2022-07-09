.class public Lcom/living/emo/fragment/LightFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "LightFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/LightFragment$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currOnOff:I

.field private currPosition:I

.field private currRename:Ljava/lang/String;

.field private currState:Ljava/lang/String;

.field private currStatus:Lcom/living/emo/fragment/LightFragment$State;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mLightList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090264
    .end annotation
.end field

.field private mLightListAdapter:Lcom/living/emo/adapter/LightListAdapter;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mRefresh:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ad
    .end annotation
.end field

.field private mToolActivity:Lcom/living/emo/activity/ToolLightActivity;

.field mUnbind:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ae
    .end annotation
.end field

.field private timeOut:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/fragment/LightFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/fragment/LightFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    .line 69
    sget-object v1, Lcom/living/emo/fragment/LightFragment$State;->NONE:Lcom/living/emo/fragment/LightFragment$State;

    iput-object v1, p0, Lcom/living/emo/fragment/LightFragment;->currStatus:Lcom/living/emo/fragment/LightFragment$State;

    .line 99
    new-instance v1, Lcom/living/emo/fragment/LightFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/LightFragment$1;-><init>(Lcom/living/emo/fragment/LightFragment;)V

    iput-object v1, p0, Lcom/living/emo/fragment/LightFragment;->timeOut:Ljava/lang/Runnable;

    .line 110
    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->currState:Ljava/lang/String;

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcom/living/emo/fragment/LightFragment;->currPosition:I

    .line 112
    iput v1, p0, Lcom/living/emo/fragment/LightFragment;->currOnOff:I

    .line 113
    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->currRename:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/LightFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/fragment/LightFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/LightFragment;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/fragment/LightFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/fragment/LightFragment;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/LightFragment;->askForName(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/fragment/LightFragment;->currRename:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/living/emo/fragment/LightFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment;->currRename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/living/emo/fragment/LightFragment;Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/LightFragment;->setData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/adapter/LightListAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/fragment/LightFragment;->mLightListAdapter:Lcom/living/emo/adapter/LightListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/activity/ToolLightActivity;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/fragment/LightFragment;->mToolActivity:Lcom/living/emo/activity/ToolLightActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/fragment/LightFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/living/emo/fragment/LightFragment;->reset()V

    return-void
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/fragment/LightFragment$State;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/fragment/LightFragment;->currStatus:Lcom/living/emo/fragment/LightFragment$State;

    return-object p0
.end method

.method static synthetic access$402(Lcom/living/emo/fragment/LightFragment;Lcom/living/emo/fragment/LightFragment$State;)Lcom/living/emo/fragment/LightFragment$State;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment;->currStatus:Lcom/living/emo/fragment/LightFragment$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/fragment/LightFragment;->timeOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/fragment/LightFragment;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/fragment/LightFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/living/emo/fragment/LightFragment;->currState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/living/emo/fragment/LightFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment;->currState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/living/emo/fragment/LightFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/living/emo/fragment/LightFragment;->currPosition:I

    return p0
.end method

.method static synthetic access$802(Lcom/living/emo/fragment/LightFragment;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/living/emo/fragment/LightFragment;->currPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/living/emo/fragment/LightFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/living/emo/fragment/LightFragment;->currOnOff:I

    return p0
.end method

.method static synthetic access$902(Lcom/living/emo/fragment/LightFragment;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/living/emo/fragment/LightFragment;->currOnOff:I

    return p1
.end method

.method private askForName(I)V
    .locals 2

    .line 171
    new-instance v0, Lcom/living/emo/view/LightRename;

    invoke-direct {v0}, Lcom/living/emo/view/LightRename;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    invoke-virtual {v1}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/view/LightRename;->setName(Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/living/emo/fragment/LightFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/fragment/LightFragment$4;-><init>(Lcom/living/emo/fragment/LightFragment;I)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/LightRename;->setDialogClickListener(Lcom/living/emo/view/LightRename$onDialogClickListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/living/emo/fragment/LightFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "light"

    invoke-virtual {v0, p1, v1}, Lcom/living/emo/view/LightRename;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private setData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 271
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 272
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    .line 273
    invoke-virtual {v1}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    invoke-virtual {v4}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getId()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 274
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    invoke-virtual {v2}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getConnected()I

    move-result v2

    if-nez v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    invoke-virtual {v2}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getHsl()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->setHsl(Ljava/util/List;)V

    .line 278
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    invoke-virtual {v2}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->setName(Ljava/lang/String;)V

    .line 279
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    invoke-virtual {v2}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getOn()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->setOn(I)V

    goto :goto_0

    .line 285
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/living/emo/fragment/LightFragment;->mLightListAdapter:Lcom/living/emo/adapter/LightListAdapter;

    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/living/emo/adapter/LightListAdapter;->setLightData(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public static stringFilter(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    const-string v0, "^[a-zA-Z0-9 ]+$"

    .line 204
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method initData()V
    .locals 3

    .line 94
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 95
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->light()[B

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment;->mToolActivity:Lcom/living/emo/activity/ToolLightActivity;

    iget-object v2, p0, Lcom/living/emo/fragment/LightFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/ToolLightActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mLightListAdapter:Lcom/living/emo/adapter/LightListAdapter;

    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Lcom/living/emo/fragment/LightFragment$2;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/LightFragment$2;-><init>(Lcom/living/emo/fragment/LightFragment;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/LightListAdapter;->setOnCheckedChangeListener(Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mRefresh:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$LightFragment$WJAyfPwgp2o-NgMX8E0I_YcWR5E;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$LightFragment$WJAyfPwgp2o-NgMX8E0I_YcWR5E;-><init>(Lcom/living/emo/fragment/LightFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mUnbind:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$LightFragment$7vEXD3ZnLGpwJhiKxywKh3BI4Io;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$LightFragment$7vEXD3ZnLGpwJhiKxywKh3BI4Io;-><init>(Lcom/living/emo/fragment/LightFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initProgress()V
    .locals 2

    .line 73
    sget-object v0, Lcom/living/emo/fragment/LightFragment;->TAG:Ljava/lang/String;

    const-string v1, "initProgress: "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/living/emo/fragment/LightFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 76
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/living/emo/fragment/LightFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView: "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/living/emo/fragment/LightFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/ToolLightActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mToolActivity:Lcom/living/emo/activity/ToolLightActivity;

    .line 84
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 86
    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment;->mLightList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    new-instance v0, Lcom/living/emo/adapter/LightListAdapter;

    invoke-virtual {p0}, Lcom/living/emo/fragment/LightFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/living/emo/adapter/LightListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mLightListAdapter:Lcom/living/emo/adapter/LightListAdapter;

    .line 88
    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment;->mLightList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic lambda$initEvent$0$LightFragment(Landroid/view/View;)V
    .locals 2

    .line 145
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->light()[B

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mToolActivity:Lcom/living/emo/activity/ToolLightActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/ToolLightActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 147
    invoke-direct {p0}, Lcom/living/emo/fragment/LightFragment;->reset()V

    return-void
.end method

.method public synthetic lambda$initEvent$1$LightFragment(Landroid/view/View;)V
    .locals 4

    .line 151
    iget-object p1, p0, Lcom/living/emo/fragment/LightFragment;->mUnbind:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/living/emo/fragment/LightFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/living/emo/fragment/LightFragment$3;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/LightFragment$3;-><init>(Lcom/living/emo/fragment/LightFragment;)V

    const v1, 0x7f0c0058

    const v2, 0x7f0900e0

    const v3, 0x7f0900e1

    invoke-static {p1, v1, v2, v3, v0}, Lcom/living/emo/view/RecognitionDeleteView;->showDialog(Landroid/content/Context;IIILcom/living/emo/view/RecognitionDeleteView$OnClickListener;)V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c006e

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 292
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mLightListAdapter:Lcom/living/emo/adapter/LightListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mLightListAdapter:Lcom/living/emo/adapter/LightListAdapter;

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/living/emo/fragment/LightFragment;->reset()V

    return-void
.end method

.method public onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 209
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:LightFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/living/emo/fragment/LightFragment$5;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/LightFragment$5;-><init>(Lcom/living/emo/fragment/LightFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleLightResponseParse;->light(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleLightResponseParse$Callback;)V

    .line 218
    new-instance v0, Lcom/living/emo/fragment/LightFragment$6;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/LightFragment$6;-><init>(Lcom/living/emo/fragment/LightFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->light(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method

.method protected release()V
    .locals 1

    .line 308
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->release()V

    .line 309
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    return-void
.end method
