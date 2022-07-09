.class public Lcom/living/emo/activity/HuntActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "HuntActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/HuntActivity$Treasure;,
        Lcom/living/emo/activity/HuntActivity$Tips;,
        Lcom/living/emo/activity/HuntActivity$State;,
        Lcom/living/emo/activity/HuntActivity$Direction;
    }
.end annotation


# static fields
.field private static final HANDLE_TIME_OUT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "HuntActivity"


# instance fields
.field private currDirection:Lcom/living/emo/activity/HuntActivity$Direction;

.field private currSearch:I

.field private currState:Lcom/living/emo/activity/HuntActivity$State;

.field private currTips:Lcom/living/emo/activity/HuntActivity$Tips;

.field private ismove:Z

.field private isplay:Z

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mBtnOk:Landroid/view/View$OnClickListener;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCuntTime:Landroid/widget/TextView;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mExplanationView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHuntBack:Landroid/widget/ImageView;

.field private mHuntCore:Landroid/widget/ImageView;

.field private mHuntDialogReady:Landroid/widget/ImageView;

.field private mHuntOtherCon:Landroid/widget/RelativeLayout;

.field private mHuntSearch:Landroid/widget/ImageView;

.field private mHuntTxt:Landroid/widget/ImageView;

.field private mKnow:Landroid/widget/ImageView;

.field private mLeftSmallPour:Landroid/widget/ImageView;

.field private mMusicBtn:Landroid/widget/ImageView;

.field private mOverView:Landroid/view/View;

.field private mReadyView:Landroid/view/View;

.field private mRestTv:Landroid/widget/TextView;

.field private mRightSmallPour:Landroid/widget/ImageView;

.field private mSensorUtil:Lcom/living/emo/util/SensorUtil;

.field private mStart:Landroid/widget/ImageView;

.field private mStartView:Landroid/view/View;

.field private mStopView:Landroid/widget/ImageView;

.field private mTimeoutView:Landroid/view/View;

.field private mTipsBtnOk:Landroid/widget/ImageButton;

.field private mTipsDialog:Landroid/view/View;

.field private mTipsTxtContent:Landroid/widget/TextView;

.field private mTreasureDialog:Landroid/view/View;

.field private mTreasures:[Lcom/living/emo/activity/HuntActivity$Treasure;

.field private mUpSmallPour:Landroid/widget/ImageView;

.field private mWarningBtnOk:Landroid/widget/ImageButton;

.field private mWarningDialog:Landroid/view/View;

.field private mWarningTxtContent:Landroid/widget/TextView;

.field private stop:Z

.field private task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    .line 40
    sget-object v0, Lcom/living/emo/activity/HuntActivity$State;->EXPLANATION:Lcom/living/emo/activity/HuntActivity$State;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->currState:Lcom/living/emo/activity/HuntActivity$State;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTreasures:[Lcom/living/emo/activity/HuntActivity$Treasure;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/living/emo/activity/HuntActivity;->isplay:Z

    .line 65
    iput-boolean v0, p0, Lcom/living/emo/activity/HuntActivity;->ismove:Z

    .line 92
    sget-object v1, Lcom/living/emo/activity/HuntActivity$Direction;->STOP:Lcom/living/emo/activity/HuntActivity$Direction;

    iput-object v1, p0, Lcom/living/emo/activity/HuntActivity;->currDirection:Lcom/living/emo/activity/HuntActivity$Direction;

    .line 93
    sget-object v1, Lcom/living/emo/activity/HuntActivity$Tips;->NONE:Lcom/living/emo/activity/HuntActivity$Tips;

    iput-object v1, p0, Lcom/living/emo/activity/HuntActivity;->currTips:Lcom/living/emo/activity/HuntActivity$Tips;

    .line 114
    new-instance v1, Lcom/living/emo/activity/HuntActivity$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/HuntActivity$1;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    iput-object v1, p0, Lcom/living/emo/activity/HuntActivity;->task:Ljava/lang/Runnable;

    .line 166
    iput-boolean v0, p0, Lcom/living/emo/activity/HuntActivity;->stop:Z

    .line 457
    new-instance v1, Lcom/living/emo/activity/HuntActivity$6;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/HuntActivity$6;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    iput-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mBtnOk:Landroid/view/View$OnClickListener;

    .line 468
    iput v0, p0, Lcom/living/emo/activity/HuntActivity;->currSearch:I

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/HuntActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/activity/HuntActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/living/emo/activity/HuntActivity;->isplay:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/living/emo/activity/HuntActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$102(Lcom/living/emo/activity/HuntActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/living/emo/activity/HuntActivity;->isplay:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$State;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/living/emo/activity/HuntActivity;->changeStateView(Lcom/living/emo/activity/HuntActivity$State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/HuntActivity;->changTipsView(Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/living/emo/activity/HuntActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/living/emo/activity/HuntActivity;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/living/emo/activity/HuntActivity;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/living/emo/activity/HuntActivity;->changeSearchView(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/living/emo/activity/HuntActivity;)[Lcom/living/emo/activity/HuntActivity$Treasure;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mTreasures:[Lcom/living/emo/activity/HuntActivity$Treasure;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/living/emo/activity/HuntActivity;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/activity/HuntActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/living/emo/activity/HuntActivity;->ismove:Z

    return p0
.end method

.method static synthetic access$202(Lcom/living/emo/activity/HuntActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/living/emo/activity/HuntActivity;->ismove:Z

    return p1
.end method

.method static synthetic access$300(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mUpSmallPour:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/activity/HuntActivity;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/living/emo/activity/HuntActivity;->changeButtons(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$502(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Direction;)Lcom/living/emo/activity/HuntActivity$Direction;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity;->currDirection:Lcom/living/emo/activity/HuntActivity$Direction;

    return-object p1
.end method

.method static synthetic access$600(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mLeftSmallPour:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mRightSmallPour:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mStopView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/living/emo/activity/HuntActivity;->mCuntTime:Landroid/widget/TextView;

    return-object p0
.end method

.method private changTipsView(Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 600
    iput-boolean v0, p0, Lcom/living/emo/activity/HuntActivity;->ismove:Z

    .line 601
    invoke-direct {p0, v0}, Lcom/living/emo/activity/HuntActivity;->changeSearchView(I)V

    .line 602
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/living/emo/util/SoundIdPoolUntil;->stop()V

    .line 603
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity;->currTips:Lcom/living/emo/activity/HuntActivity$Tips;

    .line 604
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mTipsDialog:Landroid/view/View;

    sget-object v2, Lcom/living/emo/activity/HuntActivity$Tips;->TIPS:Lcom/living/emo/activity/HuntActivity$Tips;

    const/16 v3, 0x8

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mWarningDialog:Landroid/view/View;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->currTips:Lcom/living/emo/activity/HuntActivity$Tips;

    sget-object v2, Lcom/living/emo/activity/HuntActivity$Tips;->WARNING:Lcom/living/emo/activity/HuntActivity$Tips;

    if-ne v1, v2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mTreasureDialog:Landroid/view/View;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->currTips:Lcom/living/emo/activity/HuntActivity$Tips;

    sget-object v2, Lcom/living/emo/activity/HuntActivity$Tips;->HUNT:Lcom/living/emo/activity/HuntActivity$Tips;

    if-ne v1, v2, :cond_2

    move v3, v0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 608
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->currTips:Lcom/living/emo/activity/HuntActivity$Tips;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$Tips;->TIPS:Lcom/living/emo/activity/HuntActivity$Tips;

    if-ne p1, v1, :cond_3

    .line 609
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mTipsTxtContent:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    :cond_3
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->currTips:Lcom/living/emo/activity/HuntActivity$Tips;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$Tips;->WARNING:Lcom/living/emo/activity/HuntActivity$Tips;

    if-ne p1, v1, :cond_4

    .line 613
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mWarningTxtContent:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    :cond_4
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->currTips:Lcom/living/emo/activity/HuntActivity$Tips;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$Tips;->HUNT:Lcom/living/emo/activity/HuntActivity$Tips;

    if-ne p1, v1, :cond_5

    .line 617
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    const-string v1, "hunt_android"

    invoke-virtual {p1, v1, v0}, Lcom/living/emo/util/SoundIdPoolUntil;->play(Ljava/lang/String;I)V

    .line 618
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 619
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5b9d\u85cf\u7684\u4e0b\u6807:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    invoke-static {v0, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object p2, p0, Lcom/living/emo/activity/HuntActivity;->mTreasures:[Lcom/living/emo/activity/HuntActivity$Treasure;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/living/emo/activity/HuntActivity$Treasure;->incrByCount()V

    .line 621
    iget-object p2, p0, Lcom/living/emo/activity/HuntActivity;->mHuntCore:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTreasures:[Lcom/living/emo/activity/HuntActivity$Treasure;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/living/emo/activity/HuntActivity$Treasure;->getTreasure_img()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 622
    iget-object p2, p0, Lcom/living/emo/activity/HuntActivity;->mHuntTxt:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTreasures:[Lcom/living/emo/activity/HuntActivity$Treasure;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/living/emo/activity/HuntActivity$Treasure;->getTreasure_txt()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 623
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    const/4 p2, -0x1

    const-string v0, "hunt_effect"

    invoke-virtual {p1, v0, p2}, Lcom/living/emo/util/SoundIdPoolUntil;->play(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method private changeButtons(Landroid/view/View;)V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->currDirection:Lcom/living/emo/activity/HuntActivity$Direction;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$Direction;->STOP:Lcom/living/emo/activity/HuntActivity$Direction;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/widget/ImageView;

    .line 170
    iget-object v2, p0, Lcom/living/emo/activity/HuntActivity;->mStopView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/living/emo/activity/HuntActivity;->mLeftSmallPour:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/living/emo/activity/HuntActivity;->mRightSmallPour:Landroid/widget/ImageView;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/living/emo/activity/HuntActivity;->mUpSmallPour:Landroid/widget/ImageView;

    aput-object v5, v1, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 179
    aget-object v5, v1, v2

    .line 180
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mStopView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/living/emo/activity/HuntActivity;->stop:Z

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->stop()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 184
    iput-boolean v4, p0, Lcom/living/emo/activity/HuntActivity;->stop:Z

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mLeftSmallPour:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->left()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 188
    iput-boolean v3, p0, Lcom/living/emo/activity/HuntActivity;->stop:Z

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mRightSmallPour:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->right()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 192
    iput-boolean v3, p0, Lcom/living/emo/activity/HuntActivity;->stop:Z

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mUpSmallPour:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 195
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->go()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 196
    iput-boolean v3, p0, Lcom/living/emo/activity/HuntActivity;->stop:Z

    .line 198
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    return-void
.end method

.method private changeSearchView(I)V
    .locals 2

    .line 476
    iget v0, p0, Lcom/living/emo/activity/HuntActivity;->currSearch:I

    if-eq v0, p1, :cond_0

    .line 477
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/SoundIdPoolUntil;->stop()V

    .line 479
    :cond_0
    iput p1, p0, Lcom/living/emo/activity/HuntActivity;->currSearch:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto/16 :goto_0

    .line 500
    :cond_1
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/SoundIdPoolUntil;->isPlay()Z

    move-result p1

    if-nez p1, :cond_2

    .line 501
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    const-string v1, "effect_3"

    invoke-virtual {p1, v1, v0}, Lcom/living/emo/util/SoundIdPoolUntil;->play(Ljava/lang/String;I)V

    .line 503
    :cond_2
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntSearch:Landroid/widget/ImageView;

    const v0, 0x7f0801fa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 494
    :cond_3
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/SoundIdPoolUntil;->isPlay()Z

    move-result p1

    if-nez p1, :cond_4

    .line 495
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    const-string v1, "effect_2"

    invoke-virtual {p1, v1, v0}, Lcom/living/emo/util/SoundIdPoolUntil;->play(Ljava/lang/String;I)V

    .line 497
    :cond_4
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntSearch:Landroid/widget/ImageView;

    const v0, 0x7f0801f9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 488
    :cond_5
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/SoundIdPoolUntil;->isPlay()Z

    move-result p1

    if-nez p1, :cond_6

    .line 489
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    const-string v1, "effect_1"

    invoke-virtual {p1, v1, v0}, Lcom/living/emo/util/SoundIdPoolUntil;->play(Ljava/lang/String;I)V

    .line 491
    :cond_6
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntSearch:Landroid/widget/ImageView;

    const v0, 0x7f0801f8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 482
    :cond_7
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/SoundIdPoolUntil;->isPlay()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 483
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/SoundIdPoolUntil;->stop()V

    .line 485
    :cond_8
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntSearch:Landroid/widget/ImageView;

    const v0, 0x7f0801f7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 506
    :cond_9
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntSearch:Landroid/widget/ImageView;

    const v0, 0x7f0801fb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 509
    :goto_0
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntSearch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 510
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private changeStateView(Lcom/living/emo/activity/HuntActivity$State;)V
    .locals 6

    .line 634
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity;->currState:Lcom/living/emo/activity/HuntActivity$State;

    .line 635
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mExplanationView:Landroid/view/View;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$State;->EXPLANATION:Lcom/living/emo/activity/HuntActivity$State;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mReadyView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->currState:Lcom/living/emo/activity/HuntActivity$State;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$State;->READY:Lcom/living/emo/activity/HuntActivity$State;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mStartView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->currState:Lcom/living/emo/activity/HuntActivity$State;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$State;->START:Lcom/living/emo/activity/HuntActivity$State;

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->currState:Lcom/living/emo/activity/HuntActivity$State;

    sget-object v0, Lcom/living/emo/activity/HuntActivity$State;->START:Lcom/living/emo/activity/HuntActivity$State;

    if-ne p1, v0, :cond_3

    .line 639
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->startGame()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 640
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/living/emo/activity/-$$Lambda$HuntActivity$gNd8tnacLwbj1Kp4FY7figkVP-E;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$gNd8tnacLwbj1Kp4FY7figkVP-E;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 650
    :cond_3
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->currState:Lcom/living/emo/activity/HuntActivity$State;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$State;->OVER:Lcom/living/emo/activity/HuntActivity$State;

    if-ne v0, v1, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mTimeoutView:Landroid/view/View;

    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->currState:Lcom/living/emo/activity/HuntActivity$State;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$State;->TIMEOUT:Lcom/living/emo/activity/HuntActivity$State;

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mHuntBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$HuntActivity$P790Bn8REZ2-jnlJw9oHTG3Z87I;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$P790Bn8REZ2-jnlJw9oHTG3Z87I;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mKnow:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$HuntActivity$cDX2aUzib-RWrnD5Xj4F4XuLkvY;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$cDX2aUzib-RWrnD5Xj4F4XuLkvY;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mStart:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$HuntActivity$V3kW076AW4kvEYEZrQfUpXhJlbs;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$V3kW076AW4kvEYEZrQfUpXhJlbs;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v1, 0x7f090175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$HuntActivity$yuL1Cuo-3vCo59xu5RYxALRgsL8;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$yuL1Cuo-3vCo59xu5RYxALRgsL8;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mRestTv:Landroid/widget/TextView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$HuntActivity$7JLnZKsNDj1q8Qiaex-bTLtJySw;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$7JLnZKsNDj1q8Qiaex-bTLtJySw;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mMusicBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$HuntActivity$g66WttfOQCLp9FijEmyPtrLhlmM;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$g66WttfOQCLp9FijEmyPtrLhlmM;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTipsBtnOk:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mBtnOk:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mWarningBtnOk:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mBtnOk:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mHuntDialogReady:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$HuntActivity$egRH83B4AHBK9yubFjUbxHVasJ4;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$egRH83B4AHBK9yubFjUbxHVasJ4;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    .line 125
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f1000de

    .line 126
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/HuntActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 128
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private initSensor()V
    .locals 2

    .line 135
    invoke-static {}, Lcom/living/emo/util/SensorUtil;->getInstance()Lcom/living/emo/util/SensorUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mSensorUtil:Lcom/living/emo/util/SensorUtil;

    .line 136
    invoke-virtual {v0, p0}, Lcom/living/emo/util/SensorUtil;->setup(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mSensorUtil:Lcom/living/emo/util/SensorUtil;

    new-instance v1, Lcom/living/emo/activity/HuntActivity$2;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/HuntActivity$2;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/util/SensorUtil;->SetOnSensorListener(Lcom/living/emo/util/SensorUtil$SensorXYListener;)V

    return-void
.end method

.method private initTimer()V
    .locals 7

    .line 212
    new-instance v6, Lcom/living/emo/activity/HuntActivity$3;

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x12c

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/living/emo/activity/HuntActivity$3;-><init>(Lcom/living/emo/activity/HuntActivity;JJ)V

    iput-object v6, p0, Lcom/living/emo/activity/HuntActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private initView()V
    .locals 13

    .line 514
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/SoundIdPoolUntil;->load()V

    const v0, 0x7f09015f

    .line 515
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mHuntBack:Landroid/widget/ImageView;

    const v0, 0x7f090168

    .line 516
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    const v0, 0x7f090165

    .line 517
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mStopView:Landroid/widget/ImageView;

    const v0, 0x7f090166

    .line 518
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mLeftSmallPour:Landroid/widget/ImageView;

    const v0, 0x7f09016a

    .line 520
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mRightSmallPour:Landroid/widget/ImageView;

    const v0, 0x7f09017b

    .line 522
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mUpSmallPour:Landroid/widget/ImageView;

    const v0, 0x7f090169

    .line 524
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mRestTv:Landroid/widget/TextView;

    const v0, 0x7f09016b

    .line 525
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mHuntSearch:Landroid/widget/ImageView;

    const v0, 0x7f090160

    .line 526
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mCuntTime:Landroid/widget/TextView;

    const v0, 0x7f090167

    .line 527
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mMusicBtn:Landroid/widget/ImageView;

    .line 528
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/living/emo/activity/HuntActivity;->loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 530
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mExplanationView:Landroid/view/View;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mKnow:Landroid/widget/ImageView;

    .line 531
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mReadyView:Landroid/view/View;

    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mStart:Landroid/widget/ImageView;

    .line 532
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTipsDialog:Landroid/view/View;

    const v1, 0x7f090328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTipsTxtContent:Landroid/widget/TextView;

    .line 533
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTipsDialog:Landroid/view/View;

    const v1, 0x7f090327

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTipsBtnOk:Landroid/widget/ImageButton;

    .line 534
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mWarningDialog:Landroid/view/View;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mWarningTxtContent:Landroid/widget/TextView;

    .line 535
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mWarningDialog:Landroid/view/View;

    const v1, 0x7f090364

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mWarningBtnOk:Landroid/widget/ImageButton;

    .line 536
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTreasureDialog:Landroid/view/View;

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mHuntDialogReady:Landroid/widget/ImageView;

    .line 537
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTreasureDialog:Landroid/view/View;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mHuntCore:Landroid/widget/ImageView;

    .line 538
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTreasureDialog:Landroid/view/View;

    const v1, 0x7f090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mHuntTxt:Landroid/widget/ImageView;

    .line 542
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v1, 0x7f09016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 543
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    .line 544
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v1, 0x7f090170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 545
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v1, 0x7f090171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 546
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v1, 0x7f090176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 547
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v1, 0x7f090177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/4 v0, 0x3

    new-array v10, v0, [Lcom/living/emo/activity/HuntActivity$Treasure;

    .line 548
    new-instance v11, Lcom/living/emo/activity/HuntActivity$Treasure;

    const v2, 0x7f0801d7

    const v3, 0x7f080206

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/living/emo/activity/HuntActivity$Treasure;-><init>(Lcom/living/emo/activity/HuntActivity;IILandroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    const/4 v12, 0x0

    aput-object v11, v10, v12

    new-instance v11, Lcom/living/emo/activity/HuntActivity$Treasure;

    const v2, 0x7f0801d9

    const v3, 0x7f080207

    move-object v0, v11

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/living/emo/activity/HuntActivity$Treasure;-><init>(Lcom/living/emo/activity/HuntActivity;IILandroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    const/4 v6, 0x1

    aput-object v11, v10, v6

    new-instance v7, Lcom/living/emo/activity/HuntActivity$Treasure;

    const v2, 0x7f0801eb

    const v3, 0x7f080208

    move-object v0, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/living/emo/activity/HuntActivity$Treasure;-><init>(Lcom/living/emo/activity/HuntActivity;IILandroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    const/4 v0, 0x2

    aput-object v7, v10, v0

    iput-object v10, p0, Lcom/living/emo/activity/HuntActivity;->mTreasures:[Lcom/living/emo/activity/HuntActivity$Treasure;

    .line 554
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 555
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v2, 0x7f09016f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 556
    iget-object v2, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    const v3, 0x7f090179

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 558
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const v4, 0x7f0801db

    .line 559
    invoke-direct {p0, v4}, Lcom/living/emo/activity/HuntActivity;->layoutSize(I)[I

    move-result-object v4

    .line 560
    aget v5, v4, v12

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 561
    aget v4, v4, v6

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 562
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v3, 0x7f0801d6

    .line 565
    invoke-direct {p0, v3}, Lcom/living/emo/activity/HuntActivity;->layoutSize(I)[I

    move-result-object v3

    .line 566
    aget v4, v3, v12

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 567
    aget v3, v3, v6

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 568
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x7f0801e3

    .line 571
    invoke-direct {p0, v1}, Lcom/living/emo/activity/HuntActivity;->layoutSize(I)[I

    move-result-object v1

    .line 572
    aget v3, v1, v12

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 573
    aget v1, v1, v6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 574
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    sget-object v0, Lcom/living/emo/activity/HuntActivity$State;->EXPLANATION:Lcom/living/emo/activity/HuntActivity$State;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/HuntActivity;->changeStateView(Lcom/living/emo/activity/HuntActivity$State;)V

    .line 577
    sget-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->NONE:Lcom/living/emo/activity/HuntActivity$Tips;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/living/emo/activity/HuntActivity;->changTipsView(Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    return-void
.end method

.method private layoutSize(I)[I
    .locals 3

    .line 582
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 583
    invoke-virtual {p0}, Lcom/living/emo/activity/HuntActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "height:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    width:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tag"

    invoke-static {v1, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 586
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x0

    aput v1, p1, v2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    aput v0, p1, v1

    return-object p1
.end method

.method private loadExplanationView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0083

    const/4 v1, 0x0

    .line 784
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadHuntView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0084

    const/4 v1, 0x0

    .line 707
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadOverView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0085

    const/4 v1, 0x0

    .line 751
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadReadyView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0086

    const/4 v1, 0x0

    .line 773
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadStartView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0087

    const/4 v1, 0x0

    .line 762
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadStateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 662
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/HuntActivity;->loadExplanationView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mExplanationView:Landroid/view/View;

    .line 663
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 665
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/HuntActivity;->loadReadyView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mReadyView:Landroid/view/View;

    .line 666
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/HuntActivity;->loadStartView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mStartView:Landroid/view/View;

    .line 669
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 671
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/HuntActivity;->loadOverView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mOverView:Landroid/view/View;

    .line 672
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/HuntActivity;->loadTimeoutView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTimeoutView:Landroid/view/View;

    .line 675
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/HuntActivity;->loadTipsDialogView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mTipsDialog:Landroid/view/View;

    .line 678
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 680
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/HuntActivity;->loadWarningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mWarningDialog:Landroid/view/View;

    .line 681
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/HuntActivity;->loadHuntView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mTreasureDialog:Landroid/view/View;

    .line 684
    iget-object p2, p0, Lcom/living/emo/activity/HuntActivity;->mHuntOtherCon:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private loadTimeoutView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0088

    const/4 v1, 0x0

    .line 740
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadTipsDialogView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0089

    const/4 v1, 0x0

    .line 729
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private loadWarningView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c008a

    const/4 v1, 0x0

    .line 718
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public alertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/living/emo/activity/HuntActivity;->ismove:Z

    .line 372
    invoke-direct {p0, v0}, Lcom/living/emo/activity/HuntActivity;->changeSearchView(I)V

    .line 373
    iget-object v1, p0, Lcom/living/emo/activity/HuntActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 374
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 375
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 376
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/living/emo/activity/HuntActivity$5;

    invoke-direct {p2, p0}, Lcom/living/emo/activity/HuntActivity$5;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    const-string v0, "ok"

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$changeStateView$8$HuntActivity()V
    .locals 2

    .line 641
    sget-object v0, Lcom/living/emo/activity/HuntActivity$State;->NONE:Lcom/living/emo/activity/HuntActivity$State;

    invoke-direct {p0, v0}, Lcom/living/emo/activity/HuntActivity;->changeStateView(Lcom/living/emo/activity/HuntActivity$State;)V

    .line 642
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 v0, 0x0

    .line 643
    invoke-direct {p0, v0}, Lcom/living/emo/activity/HuntActivity;->changeSearchView(I)V

    const/4 v0, 0x1

    .line 644
    iput-boolean v0, p0, Lcom/living/emo/activity/HuntActivity;->isplay:Z

    .line 645
    iput-boolean v0, p0, Lcom/living/emo/activity/HuntActivity;->ismove:Z

    .line 647
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->resetting()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public synthetic lambda$initEvent$0$HuntActivity(Landroid/view/View;)V
    .locals 1

    .line 413
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 414
    invoke-virtual {p0}, Lcom/living/emo/activity/HuntActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initEvent$1$HuntActivity(Landroid/view/View;)V
    .locals 0

    .line 417
    sget-object p1, Lcom/living/emo/activity/HuntActivity$State;->READY:Lcom/living/emo/activity/HuntActivity$State;

    invoke-direct {p0, p1}, Lcom/living/emo/activity/HuntActivity;->changeStateView(Lcom/living/emo/activity/HuntActivity$State;)V

    return-void
.end method

.method public synthetic lambda$initEvent$2$HuntActivity(Landroid/view/View;)V
    .locals 0

    .line 420
    sget-object p1, Lcom/living/emo/activity/HuntActivity$State;->START:Lcom/living/emo/activity/HuntActivity$State;

    invoke-direct {p0, p1}, Lcom/living/emo/activity/HuntActivity;->changeStateView(Lcom/living/emo/activity/HuntActivity$State;)V

    const/4 p1, 0x0

    .line 421
    invoke-direct {p0, p1}, Lcom/living/emo/activity/HuntActivity;->changeSearchView(I)V

    return-void
.end method

.method public synthetic lambda$initEvent$3$HuntActivity(Landroid/view/View;)V
    .locals 1

    .line 424
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 425
    invoke-virtual {p0}, Lcom/living/emo/activity/HuntActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initEvent$4$HuntActivity(Landroid/view/View;)V
    .locals 1

    .line 428
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->stop()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 432
    sget-object p1, Lcom/living/emo/activity/HuntActivity$Tips;->TIPS:Lcom/living/emo/activity/HuntActivity$Tips;

    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/living/emo/activity/HuntActivity;->changTipsView(Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initEvent$5$HuntActivity(Landroid/view/View;)V
    .locals 1

    .line 435
    sget-object p1, Lcom/living/emo/util/AudioUtil;->INSTANCE:Lcom/living/emo/util/AudioUtil;

    invoke-virtual {p1}, Lcom/living/emo/util/AudioUtil;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 436
    sget-object p1, Lcom/living/emo/util/AudioUtil;->INSTANCE:Lcom/living/emo/util/AudioUtil;

    invoke-virtual {p1}, Lcom/living/emo/util/AudioUtil;->stopPlay()V

    .line 437
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mMusicBtn:Landroid/widget/ImageView;

    const v0, 0x7f0801e2

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 439
    :cond_0
    sget-object p1, Lcom/living/emo/util/AudioUtil;->INSTANCE:Lcom/living/emo/util/AudioUtil;

    const v0, 0x7f0f0006

    invoke-virtual {p1, p0, v0}, Lcom/living/emo/util/AudioUtil;->play(Landroid/content/Context;I)V

    .line 440
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mMusicBtn:Landroid/widget/ImageView;

    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initEvent$7$HuntActivity(Landroid/view/View;)V
    .locals 3

    .line 448
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/SoundIdPoolUntil;->stop()V

    .line 449
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->resetting()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 450
    sget-object p1, Lcom/living/emo/activity/HuntActivity$Tips;->NONE:Lcom/living/emo/activity/HuntActivity$Tips;

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/living/emo/activity/HuntActivity;->changTipsView(Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 451
    invoke-direct {p0, p1}, Lcom/living/emo/activity/HuntActivity;->changeSearchView(I)V

    .line 452
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/living/emo/activity/-$$Lambda$HuntActivity$dbGMVF_CL-6xGwGvWDV1C1TlUCk;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/-$$Lambda$HuntActivity$dbGMVF_CL-6xGwGvWDV1C1TlUCk;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$null$6$HuntActivity()V
    .locals 1

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lcom/living/emo/activity/HuntActivity;->ismove:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0026

    .line 98
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/HuntActivity;->setContentView(I)V

    .line 99
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0}, Lcom/living/emo/activity/HuntActivity;->initView()V

    .line 101
    invoke-direct {p0}, Lcom/living/emo/activity/HuntActivity;->initEvent()V

    .line 102
    invoke-direct {p0}, Lcom/living/emo/activity/HuntActivity;->initTimer()V

    .line 103
    invoke-direct {p0}, Lcom/living/emo/activity/HuntActivity;->initSensor()V

    .line 104
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 105
    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->enterApp(I)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 106
    invoke-direct {p0}, Lcom/living/emo/activity/HuntActivity;->initProgressDialog()V

    .line 107
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mHandler:Landroid/os/Handler;

    .line 108
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 110
    sget-object p1, Lcom/living/emo/util/AudioUtil;->INSTANCE:Lcom/living/emo/util/AudioUtil;

    const v0, 0x7f0f0006

    invoke-virtual {p1, p0, v0}, Lcom/living/emo/util/AudioUtil;->play(Landroid/content/Context;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 396
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 397
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 398
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/SoundIdPoolUntil;->stop()V

    .line 399
    sget-object v0, Lcom/living/emo/util/AudioUtil;->INSTANCE:Lcom/living/emo/util/AudioUtil;

    invoke-virtual {v0}, Lcom/living/emo/util/AudioUtil;->stopPlay()V

    .line 400
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 247
    invoke-virtual {p1}, Lcom/living/emo/event/MessageEvent;->getData()[B

    move-result-object p1

    .line 248
    new-instance v0, Lcom/living/emo/activity/HuntActivity$4;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/HuntActivity$4;-><init>(Lcom/living/emo/activity/HuntActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/bean/HuntBean;->HuntNotify([BLcom/living/emo/bean/HuntBean$HuntResponse;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onPause()V

    .line 406
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mSensorUtil:Lcom/living/emo/util/SensorUtil;

    invoke-virtual {v0}, Lcom/living/emo/util/SensorUtil;->disEnabled()V

    .line 407
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/SoundIdPoolUntil;->stop()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 390
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    .line 391
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mSensorUtil:Lcom/living/emo/util/SensorUtil;

    invoke-virtual {v0}, Lcom/living/emo/util/SensorUtil;->enabled()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 205
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 690
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onStop()V

    .line 691
    sget-object v0, Lcom/living/emo/util/AudioUtil;->INSTANCE:Lcom/living/emo/util/AudioUtil;

    invoke-virtual {v0}, Lcom/living/emo/util/AudioUtil;->stopPlay()V

    .line 692
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 693
    invoke-virtual {p0}, Lcom/living/emo/activity/HuntActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/living/emo/activity/HuntActivity;->finish()V

    :cond_0
    return-void
.end method
