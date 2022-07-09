.class public Lcom/living/emo/fragment/PhotoFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "PhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/PhotoFragment$State;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_OPEN_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhotoFragment"


# instance fields
.field private currState:Lcom/living/emo/fragment/PhotoFragment$State;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field mClear:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090237
    .end annotation
.end field

.field private mDeleteFile:Ljava/io/File;

.field private mPhotoActivity:Lcom/living/emo/activity/ToolPhotoActivity;

.field private mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

.field mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023a
    .end annotation
.end field

.field private mPreviewPicturePopWindow:Lcom/living/emo/view/PreviewPicturePopWindow;

.field private mRootDir:Ljava/io/File;

.field mSlideShow:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023c
    .end annotation
.end field

.field mSync:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023f
    .end annotation
.end field

.field private mTcpServerUtil:Lcom/living/emo/util/TcpServerUtil;

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090241
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    const/16 v0, 0x2382

    .line 70
    iput v0, p0, Lcom/living/emo/fragment/PhotoFragment;->port:I

    .line 86
    sget-object v0, Lcom/living/emo/fragment/PhotoFragment$State;->NONE:Lcom/living/emo/fragment/PhotoFragment$State;

    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->currState:Lcom/living/emo/fragment/PhotoFragment$State;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/PhotoFragment;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/living/emo/fragment/PhotoFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/PhotoFragment;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->getIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/util/TcpServerUtil;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/living/emo/fragment/PhotoFragment;->mTcpServerUtil:Lcom/living/emo/util/TcpServerUtil;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/PhotoFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/living/emo/fragment/PhotoFragment;->port:I

    return p0
.end method

.method static synthetic access$300(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/activity/ToolPhotoActivity;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoActivity:Lcom/living/emo/activity/ToolPhotoActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/PhotoFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->getArrayListFile()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/adapter/PhotoListAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    return-object p0
.end method

.method static synthetic access$602(Lcom/living/emo/fragment/PhotoFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mDeleteFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$702(Lcom/living/emo/fragment/PhotoFragment;Lcom/living/emo/fragment/PhotoFragment$State;)Lcom/living/emo/fragment/PhotoFragment$State;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->currState:Lcom/living/emo/fragment/PhotoFragment$State;

    return-object p1
.end method

.method static synthetic access$800(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/view/PreviewPicturePopWindow;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPreviewPicturePopWindow:Lcom/living/emo/view/PreviewPicturePopWindow;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/fragment/PhotoFragment;)Z
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->checkWifiIsOpen()Z

    move-result p0

    return p0
.end method

.method private askWifiOpen()V
    .locals 3

    .line 341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Tips"

    .line 343
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "WiFi needs to be turned on for the current function"

    .line 344
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$Sa7QERten7hLayy5FIkPBAz5STI;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$Sa7QERten7hLayy5FIkPBAz5STI;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    const-string v2, "cancel"

    .line 345
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$ClFz1ixdaYqKMYaHQjV_ZOPTZeo;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$ClFz1ixdaYqKMYaHQjV_ZOPTZeo;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    const-string v2, "Go to settings"

    .line 349
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private checkWifiIsOpen()Z
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 363
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method private getArrayListFile()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->listFile()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIp()Ljava/lang/String;
    .locals 5

    .line 459
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TAG"

    invoke-static {v3, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIp: ipAddress"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-direct {p0, v0}, Lcom/living/emo/fragment/PhotoFragment;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 3

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private listFile()[Ljava/io/File;
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mRootDir:Ljava/io/File;

    new-instance v1, Lcom/living/emo/fragment/PhotoFragment$6;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/PhotoFragment$6;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method


# virtual methods
.method initData()V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->getArrayListFile()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/PhotoListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 319
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    invoke-virtual {v0}, Lcom/living/emo/adapter/PhotoListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    const-string v1, "There are no photos in the app, please click the sync button on the left to sync the photos taken by EMO to the app."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mSync:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$gpDvX6h-cobgLSSyl1CJMaaLUrU;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$gpDvX6h-cobgLSSyl1CJMaaLUrU;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mSlideShow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$lotB8aPlPwxMe2D31X5ujrd7B8g;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$lotB8aPlPwxMe2D31X5ujrd7B8g;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mClear:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$8Ovts_NZgqRCmPxYzQzUu_JluJg;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$8Ovts_NZgqRCmPxYzQzUu_JluJg;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView()V
    .locals 3

    .line 96
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/living/emo/util/TcpServerUtil;

    invoke-direct {v0}, Lcom/living/emo/util/TcpServerUtil;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mTcpServerUtil:Lcom/living/emo/util/TcpServerUtil;

    .line 98
    new-instance v1, Lcom/living/emo/fragment/PhotoFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/PhotoFragment$1;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/util/TcpServerUtil;->setServerNotifyMessageListener(Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;)V

    .line 134
    new-instance v0, Lcom/living/emo/view/PreviewPicturePopWindow;

    invoke-direct {v0}, Lcom/living/emo/view/PreviewPicturePopWindow;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPreviewPicturePopWindow:Lcom/living/emo/view/PreviewPicturePopWindow;

    .line 136
    new-instance v1, Lcom/living/emo/fragment/PhotoFragment$2;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/PhotoFragment$2;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/PreviewPicturePopWindow;->setOnClickEventListener(Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;)V

    .line 171
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 172
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/ToolPhotoActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoActivity:Lcom/living/emo/activity/ToolPhotoActivity;

    .line 173
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 174
    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 175
    new-instance v0, Lcom/living/emo/adapter/PhotoListAdapter;

    invoke-direct {v0}, Lcom/living/emo/adapter/PhotoListAdapter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    .line 176
    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$2l-JLyG22_WTfbDJgsZ3pkyH0Vo;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$2l-JLyG22_WTfbDJgsZ3pkyH0Vo;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/PhotoListAdapter;->setOnClickItemListener(Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;)V

    .line 182
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 183
    invoke-static {}, Lcom/living/emo/MyApplication;->getInstance()Lcom/living/emo/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/MyApplication;->getRootDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mRootDir:Ljava/io/File;

    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 265
    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->listFile()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 269
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$askWifiOpen$4$PhotoFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 346
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/fragment/PhotoFragment;->startActivity(Landroid/content/Intent;)V

    .line 347
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$askWifiOpen$5$PhotoFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 350
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/fragment/PhotoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$initEvent$1$PhotoFragment(Landroid/view/View;)V
    .locals 4

    .line 190
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mSync:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/living/emo/fragment/PhotoFragment$3;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/PhotoFragment$3;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    const v1, 0x7f0c00d0

    const v2, 0x7f09023e

    const v3, 0x7f090240

    invoke-static {p1, v1, v2, v3, v0}, Lcom/living/emo/view/PhotoDialogView;->showDialog(Landroid/content/Context;IIILcom/living/emo/view/PhotoDialogView$OnClickListener;)V

    .line 215
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mSync:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$initEvent$2$PhotoFragment(Landroid/view/View;)V
    .locals 4

    .line 219
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mSlideShow:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/living/emo/fragment/PhotoFragment$4;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/PhotoFragment$4;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    const v1, 0x7f0c00cf

    const v2, 0x7f09023b

    const v3, 0x7f09023d

    invoke-static {p1, v1, v2, v3, v0}, Lcom/living/emo/view/PhotoDialogView;->showDialog(Landroid/content/Context;IIILcom/living/emo/view/PhotoDialogView$OnClickListener;)V

    .line 234
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mSlideShow:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$initEvent$3$PhotoFragment(Landroid/view/View;)V
    .locals 4

    .line 239
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mClear:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/living/emo/fragment/PhotoFragment$5;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/PhotoFragment$5;-><init>(Lcom/living/emo/fragment/PhotoFragment;)V

    const v1, 0x7f0c00cd

    const v2, 0x7f090238

    const v3, 0x7f090239

    invoke-static {p1, v1, v2, v3, v0}, Lcom/living/emo/view/PhotoDialogView;->showDialog(Landroid/content/Context;IIILcom/living/emo/view/PhotoDialogView$OnClickListener;)V

    .line 254
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mClear:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$initView$0$PhotoFragment(Ljava/io/File;)V
    .locals 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnClickItemListener file name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoActivity:Lcom/living/emo/activity/ToolPhotoActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "show"

    invoke-static {v3, v2}, Lcom/living/emo/blebean/util/BleJsonUtil;->Photo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/ToolPhotoActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 179
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPreviewPicturePopWindow:Lcom/living/emo/view/PreviewPicturePopWindow;

    invoke-virtual {v0, p1}, Lcom/living/emo/view/PreviewPicturePopWindow;->setData(Ljava/io/File;)V

    .line 180
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPreviewPicturePopWindow:Lcom/living/emo/view/PreviewPicturePopWindow;

    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/living/emo/view/PreviewPicturePopWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0073

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 440
    invoke-super {p0, p1, p2, p3}, Lcom/living/emo/fragment/AbstractBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 441
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult: requestCode:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TAG"

    invoke-static {v0, p3}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: resultCode"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->checkWifiIsOpen()Z

    move-result p1

    if-nez p1, :cond_0

    .line 445
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/fragment/PhotoFragment;->startActivity(Landroid/content/Intent;)V

    .line 446
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->getIp()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 479
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroy()V

    .line 480
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPreviewPicturePopWindow:Lcom/living/emo/view/PreviewPicturePopWindow;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/living/emo/view/PreviewPicturePopWindow;->dismiss()V

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mPreviewPicturePopWindow:Lcom/living/emo/view/PreviewPicturePopWindow;

    .line 485
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 369
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:wifiSettingFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 372
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 373
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo_rsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 374
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoActivity:Lcom/living/emo/activity/ToolPhotoActivity;

    const-string v0, "Emo not networked"

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/ToolPhotoActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoActivity:Lcom/living/emo/activity/ToolPhotoActivity;

    const-string v0, "Failed to send photos"

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/ToolPhotoActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 417
    :cond_2
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoActivity:Lcom/living/emo/activity/ToolPhotoActivity;

    const-string v0, "Failed to connect to the server"

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/ToolPhotoActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 380
    :cond_3
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoActivity:Lcom/living/emo/activity/ToolPhotoActivity;

    const-string v0, "success"

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/ToolPhotoActivity;->showToast(Ljava/lang/String;)V

    .line 381
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->currState:Lcom/living/emo/fragment/PhotoFragment$State;

    sget-object v0, Lcom/living/emo/fragment/PhotoFragment$State;->DELETE:Lcom/living/emo/fragment/PhotoFragment$State;

    const-string v1, "There are no photos in the app, please click the sync button on the left to sync the photos taken by EMO to the app."

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v0, :cond_6

    .line 382
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mDeleteFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 383
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mDeleteFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 385
    :cond_4
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPreviewPicturePopWindow:Lcom/living/emo/view/PreviewPicturePopWindow;

    invoke-virtual {p1}, Lcom/living/emo/view/PreviewPicturePopWindow;->dismiss()V

    .line 386
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 387
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->getArrayListFile()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/living/emo/adapter/PhotoListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 388
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    invoke-virtual {p1}, Lcom/living/emo/adapter/PhotoListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 390
    :cond_5
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 392
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->currState:Lcom/living/emo/fragment/PhotoFragment$State;

    sget-object v0, Lcom/living/emo/fragment/PhotoFragment$State;->UPLOAD:Lcom/living/emo/fragment/PhotoFragment$State;

    if-ne p1, v0, :cond_8

    .line 396
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 397
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->getArrayListFile()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/living/emo/adapter/PhotoListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 398
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    invoke-virtual {p1}, Lcom/living/emo/adapter/PhotoListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 400
    :cond_7
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    const-string v0, "It looks like EMO hasn\'t taken any photos yet, please ask him to take a few for you."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 402
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->currState:Lcom/living/emo/fragment/PhotoFragment$State;

    sget-object v0, Lcom/living/emo/fragment/PhotoFragment$State;->CLEAR:Lcom/living/emo/fragment/PhotoFragment$State;

    if-ne p1, v0, :cond_9

    .line 406
    invoke-virtual {p0}, Lcom/living/emo/fragment/PhotoFragment;->remove()V

    .line 407
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/living/emo/adapter/PhotoListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 408
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoListAdapter:Lcom/living/emo/adapter/PhotoListAdapter;

    invoke-virtual {p1}, Lcom/living/emo/adapter/PhotoListAdapter;->notifyDataSetChanged()V

    .line 409
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 410
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    :cond_9
    sget-object p1, Lcom/living/emo/fragment/PhotoFragment$State;->NONE:Lcom/living/emo/fragment/PhotoFragment$State;

    iput-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->currState:Lcom/living/emo/fragment/PhotoFragment$State;

    goto :goto_2

    .line 376
    :cond_a
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoActivity:Lcom/living/emo/activity/ToolPhotoActivity;

    const-string v0, "fail"

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/ToolPhotoActivity;->showToast(Ljava/lang/String;)V

    .line 432
    :goto_2
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    :cond_b
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 470
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onPause()V

    .line 471
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mTcpServerUtil:Lcom/living/emo/util/TcpServerUtil;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/living/emo/util/TcpServerUtil;->stopServer()V

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/living/emo/fragment/PhotoFragment;->mTcpServerUtil:Lcom/living/emo/util/TcpServerUtil;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 333
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onStart()V

    return-void
.end method

.method public remove()V
    .locals 4

    .line 273
    invoke-direct {p0}, Lcom/living/emo/fragment/PhotoFragment;->listFile()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
