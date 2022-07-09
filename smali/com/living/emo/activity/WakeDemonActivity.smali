.class public Lcom/living/emo/activity/WakeDemonActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "WakeDemonActivity.java"


# static fields
.field private static final HANDLE_TIME_OUT:I = 0x2710


# instance fields
.field private isPlaying:Z

.field private mAudioUtil:Lcom/living/emo/util/AudioUtil;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mCloseIv:Landroid/widget/ImageView;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mDuringContainer:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mMusicIv:Landroid/widget/ImageView;

.field private mOverContainer:Landroid/widget/RelativeLayout;

.field private mOverNow:Landroid/widget/ImageView;

.field private mPalyNow:Landroid/widget/ImageView;

.field private mPlayContainer:Landroid/widget/RelativeLayout;

.field private task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->isPlaying:Z

    .line 52
    new-instance v0, Lcom/living/emo/activity/WakeDemonActivity$1;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/WakeDemonActivity$1;-><init>(Lcom/living/emo/activity/WakeDemonActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/WakeDemonActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mOverContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mPalyNow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mOverNow:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/activity/WakeDemonActivity;)Lcom/living/emo/util/AudioUtil;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mAudioUtil:Lcom/living/emo/util/AudioUtil;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mCloseIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/activity/WakeDemonActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mPlayContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mDuringContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private error()V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lcom/living/emo/activity/WakeDemonActivity;->finish()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mPalyNow:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/WakeDemonActivity$2;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/WakeDemonActivity$2;-><init>(Lcom/living/emo/activity/WakeDemonActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mOverNow:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/WakeDemonActivity$3;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/WakeDemonActivity$3;-><init>(Lcom/living/emo/activity/WakeDemonActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mCloseIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/WakeDemonActivity$4;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/WakeDemonActivity$4;-><init>(Lcom/living/emo/activity/WakeDemonActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    .line 65
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f1000de

    .line 66
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/WakeDemonActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 68
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 146
    sget-object v0, Lcom/living/emo/util/AudioUtil;->INSTANCE:Lcom/living/emo/util/AudioUtil;

    iput-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mAudioUtil:Lcom/living/emo/util/AudioUtil;

    const v0, 0x7f090361

    .line 148
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WakeDemonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mPlayContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f09035e

    .line 150
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WakeDemonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mDuringContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f090360

    .line 152
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WakeDemonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mOverContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f090362

    .line 154
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WakeDemonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mPalyNow:Landroid/widget/ImageView;

    const v0, 0x7f09035f

    .line 156
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WakeDemonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mOverNow:Landroid/widget/ImageView;

    const v0, 0x7f09035d

    .line 158
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WakeDemonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mCloseIv:Landroid/widget/ImageView;

    .line 162
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mPlayContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mDuringContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mOverContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private ready()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0030

    .line 42
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/WakeDemonActivity;->setContentView(I)V

    .line 43
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/living/emo/activity/WakeDemonActivity;->initView()V

    .line 45
    invoke-direct {p0}, Lcom/living/emo/activity/WakeDemonActivity;->initEvent()V

    .line 46
    invoke-direct {p0}, Lcom/living/emo/activity/WakeDemonActivity;->initProgressDialog()V

    .line 47
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const/4 v0, 0x3

    .line 48
    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->enterApp(I)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/WakeDemonActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 49
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity;->mHandler:Landroid/os/Handler;

    .line 50
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 179
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mAudioUtil:Lcom/living/emo/util/AudioUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/living/emo/util/AudioUtil;->stopPlay()V

    .line 182
    iput-object v1, p0, Lcom/living/emo/activity/WakeDemonActivity;->mAudioUtil:Lcom/living/emo/util/AudioUtil;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 185
    iput-object v1, p0, Lcom/living/emo/activity/WakeDemonActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 187
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

    .line 99
    invoke-virtual {p1}, Lcom/living/emo/event/MessageEvent;->getData()[B

    move-result-object p1

    .line 100
    new-instance v0, Lcom/living/emo/activity/WakeDemonActivity$5;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/WakeDemonActivity$5;-><init>(Lcom/living/emo/activity/WakeDemonActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/bean/WakeDemonBean;->ludoNotify([BLcom/living/emo/bean/WakeDemonBean$WakeDemonResponse;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 170
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onStop()V

    .line 171
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/WakeDemonActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 173
    invoke-virtual {p0}, Lcom/living/emo/activity/WakeDemonActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/living/emo/activity/WakeDemonActivity;->finish()V

    :cond_0
    return-void
.end method
