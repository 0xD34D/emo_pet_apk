.class public Lcom/living/emo/activity/DiscActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "DiscActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/DiscActivity$TimerInterval;
    }
.end annotation


# static fields
.field private static final DISC_VOLUME_DEFAULT:F = 0.5f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private delayed:Ljava/lang/Runnable;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private handler:Landroid/os/Handler;

.field private isDance:Z

.field private isLeftUserTouch:Z

.field private isMusic1:Z

.field private isMusic2:Z

.field private isPlaying:Z

.field private isProcessing:Z

.field private isRightUserTouch:Z

.field private isTask:Z

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mBtnGroup:Landroidx/recyclerview/widget/RecyclerView;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mDiscLWindow:Lcom/living/emo/view/DiscWindow;

.field private mDiscRWindow:Lcom/living/emo/view/DiscWindow;

.field private mLAddIb:Landroid/widget/ImageButton;

.field private mLBpm:Landroid/widget/TextView;

.field private mLDish:Landroid/widget/ImageView;

.field private mLDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

.field private mLMusicBar:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

.field private mLMusicTime:Landroid/widget/TextView;

.field private mLMusicTitle:Landroid/widget/TextView;

.field private mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

.field private mLPlayIb:Landroid/widget/ImageButton;

.field private mLPlayView:Lcom/living/emo/interfaces/IPlayerControlView;

.field private mLSpeed:Lcom/jaygoo/widget/VerticalRangeSeekBar;

.field private mLTouch:Lcom/living/emo/presenter/TouchPresenter;

.field private mMusicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/MusicBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mRAddIb:Landroid/widget/ImageButton;

.field private mRBpm:Landroid/widget/TextView;

.field private mRDish:Landroid/widget/ImageView;

.field private mRDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

.field private mRMusicBar:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

.field private mRMusicTime:Landroid/widget/TextView;

.field private mRMusicTitle:Landroid/widget/TextView;

.field private mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

.field private mRPlayIb:Landroid/widget/ImageButton;

.field private mRPlayView:Lcom/living/emo/interfaces/IPlayerControlView;

.field private mRSpeed:Lcom/jaygoo/widget/VerticalRangeSeekBar;

.field private mRTouch:Lcom/living/emo/presenter/TouchPresenter;

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mSoundPool:Lcom/living/emo/presenter/SoundsPresenter;

.field private mVol:I

.field private mVolume:Lcom/jaygoo/widget/VerticalRangeSeekBar;

.field private mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

.field private play:Ljava/lang/Runnable;

.field private playing:Ljava/lang/Runnable;

.field private playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private stop:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/DiscActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mMusicList:Ljava/util/List;

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/living/emo/activity/DiscActivity;->isLeftUserTouch:Z

    .line 90
    iput-boolean v1, p0, Lcom/living/emo/activity/DiscActivity;->isRightUserTouch:Z

    .line 95
    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    .line 99
    iput-boolean v1, p0, Lcom/living/emo/activity/DiscActivity;->isPlaying:Z

    .line 100
    iput-boolean v1, p0, Lcom/living/emo/activity/DiscActivity;->isProcessing:Z

    .line 101
    iput-boolean v1, p0, Lcom/living/emo/activity/DiscActivity;->isTask:Z

    .line 103
    iput-boolean v1, p0, Lcom/living/emo/activity/DiscActivity;->isDance:Z

    .line 104
    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 142
    new-instance v0, Lcom/living/emo/activity/DiscActivity$1;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DiscActivity$1;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->delayed:Ljava/lang/Runnable;

    const/4 v0, 0x3

    .line 229
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 237
    new-instance v0, Lcom/living/emo/activity/DiscActivity$3;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DiscActivity$3;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->play:Ljava/lang/Runnable;

    .line 249
    new-instance v0, Lcom/living/emo/activity/DiscActivity$4;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DiscActivity$4;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->stop:Ljava/lang/Runnable;

    .line 308
    new-instance v0, Lcom/living/emo/activity/DiscActivity$5;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DiscActivity$5;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->playing:Ljava/lang/Runnable;

    .line 489
    new-instance v0, Lcom/living/emo/activity/DiscActivity$12;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DiscActivity$12;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayView:Lcom/living/emo/interfaces/IPlayerControlView;

    .line 532
    new-instance v0, Lcom/living/emo/activity/DiscActivity$13;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DiscActivity$13;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayView:Lcom/living/emo/interfaces/IPlayerControlView;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/DiscActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/activity/DiscActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/activity/DiscActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/living/emo/activity/DiscActivity;->isMusic1:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/living/emo/activity/DiscActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/living/emo/activity/DiscActivity;->isMusic1:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/living/emo/activity/DiscActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/living/emo/activity/DiscActivity;->isMusic2:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/living/emo/activity/DiscActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/living/emo/activity/DiscActivity;->isMusic2:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/living/emo/activity/DiscActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/living/emo/activity/DiscActivity;->mVol:I

    return p0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/living/emo/activity/DiscActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/living/emo/activity/DiscActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/living/emo/activity/DiscActivity;->isProcessing:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/living/emo/activity/DiscActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/living/emo/activity/DiscActivity;->isProcessing:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/living/emo/activity/DiscActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->stop:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/living/emo/activity/DiscActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/living/emo/activity/DiscActivity;->isPlaying:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/living/emo/activity/DiscActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/living/emo/activity/DiscActivity;->isPlaying:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/living/emo/activity/DiscActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->play:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/living/emo/activity/DiscActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/living/emo/activity/DiscActivity;->isTask:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/living/emo/activity/DiscActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/living/emo/activity/DiscActivity;->isTask:Z

    return p1
.end method

.method static synthetic access$200(Lcom/living/emo/activity/DiscActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->delayed:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/living/emo/activity/DiscActivity;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/living/emo/activity/DiscActivity;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity;->playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/living/emo/activity/DiscActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->playing:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/living/emo/activity/DiscActivity;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/living/emo/activity/DiscActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/living/emo/activity/DiscActivity;->isDance:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/living/emo/activity/DiscActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/living/emo/activity/DiscActivity;->isDance:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/TouchPresenter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mLTouch:Lcom/living/emo/presenter/TouchPresenter;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/living/emo/activity/DiscActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/living/emo/activity/DiscActivity;->touchPress(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/living/emo/activity/DiscActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/living/emo/activity/DiscActivity;->touchUpLift(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/SoundsPresenter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mSoundPool:Lcom/living/emo/presenter/SoundsPresenter;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mRDish:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/TouchPresenter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mRTouch:Lcom/living/emo/presenter/TouchPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/activity/DiscActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/animation/ImageButtonAnimation;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mRDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayIb:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/living/emo/activity/DiscActivity;ILandroid/widget/ImageButton;[ILcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/living/emo/activity/DiscActivity;->setPlayBg(ILandroid/widget/ImageButton;[ILcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mLMusicTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/living/emo/activity/DiscActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/living/emo/activity/DiscActivity;->isLeftUserTouch:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/living/emo/activity/DiscActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/living/emo/activity/DiscActivity;->isLeftUserTouch:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/living/emo/activity/DiscActivity;)Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mLMusicBar:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mLMusicTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayIb:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mRMusicTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/living/emo/activity/DiscActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/living/emo/activity/DiscActivity;->isRightUserTouch:Z

    return p0
.end method

.method static synthetic access$3902(Lcom/living/emo/activity/DiscActivity;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/living/emo/activity/DiscActivity;->isRightUserTouch:Z

    return p1
.end method

.method static synthetic access$400(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/DiscControlPresenter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/living/emo/activity/DiscActivity;)Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mRMusicBar:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mRMusicTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mLBpm:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/living/emo/activity/DiscActivity;FLandroid/widget/TextView;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/DiscActivity;->setBpmAndEdit(FLandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mRBpm:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/activity/DiscActivity;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mMusicList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/animation/ImageButtonAnimation;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mLDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/living/emo/activity/DiscActivity;->mLDish:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/activity/DiscActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->closeThread()V

    return-void
.end method

.method private cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 794
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRotation()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/living/emo/animation/ImageButtonAnimation;->setRos(I)Lcom/living/emo/animation/ImageButtonAnimation;

    .line 795
    invoke-virtual {p1}, Lcom/living/emo/animation/ImageButtonAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private closeThread()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 761
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 762
    iput-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 765
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 766
    iput-object v1, p0, Lcom/living/emo/activity/DiscActivity;->playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 769
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->play:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private initAnim()V
    .locals 2

    .line 466
    new-instance v0, Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-direct {v0}, Lcom/living/emo/animation/ImageButtonAnimation;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    .line 467
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mLDish:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/animation/ImageButtonAnimation;->setView(Landroid/view/View;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/animation/ImageButtonAnimation;->init()V

    .line 469
    new-instance v0, Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-direct {v0}, Lcom/living/emo/animation/ImageButtonAnimation;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    .line 470
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mRDish:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/animation/ImageButtonAnimation;->setView(Landroid/view/View;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/animation/ImageButtonAnimation;->init()V

    return-void
.end method

.method private initBle()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const/4 v1, 0x7

    .line 131
    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->enterApp(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/DiscActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 482
    invoke-static {}, Lcom/living/emo/presenter/MusicsPresenters;->getInstance()Lcom/living/emo/presenter/MusicsPresenters;

    move-result-object v0

    .line 483
    new-instance v1, Lcom/living/emo/activity/-$$Lambda$DiscActivity$QCb7EMqsoE1aDo3hbTs-iloyvTE;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$DiscActivity$QCb7EMqsoE1aDo3hbTs-iloyvTE;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/MusicsPresenters;->registerControlView(Lcom/living/emo/interfaces/IMusicsControlViewCallback;)V

    .line 486
    invoke-virtual {v0}, Lcom/living/emo/presenter/MusicsPresenters;->getMusicList()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLAddIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRAddIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayIb:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mVolume:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    new-instance v1, Lcom/living/emo/activity/DiscActivity$14;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DiscActivity$14;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setOnRangeChangedListener(Lcom/jaygoo/widget/OnRangeChangedListener;)V

    .line 607
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLSpeed:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    new-instance v1, Lcom/living/emo/activity/DiscActivity$15;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DiscActivity$15;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setOnRangeChangedListener(Lcom/jaygoo/widget/OnRangeChangedListener;)V

    .line 627
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRSpeed:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    new-instance v1, Lcom/living/emo/activity/DiscActivity$16;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DiscActivity$16;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setOnRangeChangedListener(Lcom/jaygoo/widget/OnRangeChangedListener;)V

    .line 647
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLMusicBar:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    new-instance v1, Lcom/living/emo/activity/DiscActivity$17;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DiscActivity$17;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->setOnSeekBarChangeListener(Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;)V

    .line 667
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRMusicBar:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    new-instance v1, Lcom/living/emo/activity/DiscActivity$18;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DiscActivity$18;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->setOnSeekBarChangeListener(Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;)V

    return-void
.end method

.method private initPlayMusic()V
    .locals 2

    .line 475
    new-instance v0, Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-direct {v0, p0}, Lcom/living/emo/presenter/DiscControlPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    .line 476
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayView:Lcom/living/emo/interfaces/IPlayerControlView;

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/DiscControlPresenter;->registerControlView(Lcom/living/emo/interfaces/IPlayerControlView;)V

    .line 477
    new-instance v0, Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-direct {v0, p0}, Lcom/living/emo/presenter/DiscControlPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    .line 478
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayView:Lcom/living/emo/interfaces/IPlayerControlView;

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/DiscControlPresenter;->registerControlView(Lcom/living/emo/interfaces/IPlayerControlView;)V

    return-void
.end method

.method private initProgressDialog()V
    .locals 4

    .line 135
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f1000de

    .line 136
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/DiscActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 138
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 139
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->delayed:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initReceiver()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/living/emo/observer/VolumeChangeObserver;

    invoke-direct {v0}, Lcom/living/emo/observer/VolumeChangeObserver;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    .line 327
    invoke-virtual {v0}, Lcom/living/emo/observer/VolumeChangeObserver;->registerReceiver()V

    .line 328
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    invoke-virtual {v0, p0}, Lcom/living/emo/observer/VolumeChangeObserver;->setVolumeChangeListener(Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;)V

    .line 329
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    invoke-virtual {v0}, Lcom/living/emo/observer/VolumeChangeObserver;->getCurrentVolume()I

    move-result v0

    iput v0, p0, Lcom/living/emo/activity/DiscActivity;->mVol:I

    :cond_0
    return-void
.end method

.method private initSoundPool()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mSoundPool:Lcom/living/emo/presenter/SoundsPresenter;

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Lcom/living/emo/presenter/SoundsPresenter;->getInstance()Lcom/living/emo/presenter/SoundsPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mSoundPool:Lcom/living/emo/presenter/SoundsPresenter;

    :cond_0
    return-void
.end method

.method private initTimer()V
    .locals 7

    .line 232
    new-instance v1, Lcom/living/emo/activity/DiscActivity$TimerInterval;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/living/emo/activity/DiscActivity$TimerInterval;-><init>(Lcom/living/emo/activity/DiscActivity;Lcom/living/emo/activity/DiscActivity$1;)V

    .line 233
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private initTouchEvent()V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLTouch:Lcom/living/emo/presenter/TouchPresenter;

    const-wide/16 v1, 0x64

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/living/emo/presenter/TouchPresenter;

    invoke-direct {v0}, Lcom/living/emo/presenter/TouchPresenter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLTouch:Lcom/living/emo/presenter/TouchPresenter;

    .line 369
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLDish:Landroid/widget/ImageView;

    new-instance v3, Lcom/living/emo/activity/DiscActivity$6;

    invoke-direct {v3, p0}, Lcom/living/emo/activity/DiscActivity$6;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLTouch:Lcom/living/emo/presenter/TouchPresenter;

    new-instance v3, Lcom/living/emo/activity/DiscActivity$7;

    invoke-direct {v3, p0}, Lcom/living/emo/activity/DiscActivity$7;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v3}, Lcom/living/emo/presenter/TouchPresenter;->setTouchListener(Lcom/living/emo/presenter/TouchPresenter$TouchListener;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRTouch:Lcom/living/emo/presenter/TouchPresenter;

    if-nez v0, :cond_1

    .line 406
    new-instance v0, Lcom/living/emo/presenter/TouchPresenter;

    invoke-direct {v0}, Lcom/living/emo/presenter/TouchPresenter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRTouch:Lcom/living/emo/presenter/TouchPresenter;

    .line 407
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLDish:Landroid/widget/ImageView;

    new-instance v3, Lcom/living/emo/activity/DiscActivity$8;

    invoke-direct {v3, p0}, Lcom/living/emo/activity/DiscActivity$8;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRTouch:Lcom/living/emo/presenter/TouchPresenter;

    new-instance v1, Lcom/living/emo/activity/DiscActivity$9;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DiscActivity$9;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/TouchPresenter;->setTouchListener(Lcom/living/emo/presenter/TouchPresenter$TouchListener;)V

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLDish:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/DiscActivity$10;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DiscActivity$10;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 451
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRDish:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/DiscActivity$11;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/DiscActivity$11;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0900f4

    .line 699
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLAddIb:Landroid/widget/ImageButton;

    const v0, 0x7f0900fc

    .line 700
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRAddIb:Landroid/widget/ImageButton;

    const v0, 0x7f0900f9

    .line 702
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayIb:Landroid/widget/ImageButton;

    const v0, 0x7f090101

    .line 703
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayIb:Landroid/widget/ImageButton;

    const v0, 0x7f0900f6

    .line 705
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLDish:Landroid/widget/ImageView;

    const v0, 0x7f0900fe

    .line 706
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRDish:Landroid/widget/ImageView;

    const v0, 0x7f090104

    .line 708
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaygoo/widget/VerticalRangeSeekBar;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mVolume:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 709
    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setProgress(F)V

    const v0, 0x7f0900fa

    .line 711
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaygoo/widget/VerticalRangeSeekBar;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLSpeed:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    const v0, 0x7f090102

    .line 712
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaygoo/widget/VerticalRangeSeekBar;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRSpeed:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    .line 713
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLSpeed:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setProgress(F)V

    .line 714
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRSpeed:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setProgress(F)V

    const v0, 0x7f0900f8

    .line 717
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLMusicTitle:Landroid/widget/TextView;

    const v0, 0x7f0900f7

    .line 718
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLMusicTime:Landroid/widget/TextView;

    const v0, 0x7f090100

    .line 720
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRMusicTitle:Landroid/widget/TextView;

    const v0, 0x7f0900ff

    .line 721
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRMusicTime:Landroid/widget/TextView;

    const v0, 0x7f0900f3

    .line 723
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLMusicBar:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    const v0, 0x7f0900fb

    .line 724
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRMusicBar:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    const v0, 0x7f0900f5

    .line 726
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLBpm:Landroid/widget/TextView;

    const/16 v1, 0x80

    .line 727
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900fd

    .line 728
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRBpm:Landroid/widget/TextView;

    .line 729
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900f2

    .line 731
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mBtnGroup:Landroidx/recyclerview/widget/RecyclerView;

    .line 733
    new-instance v0, Lcom/living/emo/activity/DiscActivity$19;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p0, v1}, Lcom/living/emo/activity/DiscActivity$19;-><init>(Lcom/living/emo/activity/DiscActivity;Landroid/content/Context;I)V

    .line 739
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mBtnGroup:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 740
    new-instance v0, Lcom/living/emo/adapter/DiscBtnGroupAdapter;

    invoke-direct {v0}, Lcom/living/emo/adapter/DiscBtnGroupAdapter;-><init>()V

    .line 741
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mBtnGroup:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 742
    new-instance v1, Lcom/living/emo/activity/-$$Lambda$DiscActivity$CKsb3goZzqHUMjV9WOxrrr60oGs;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$DiscActivity$CKsb3goZzqHUMjV9WOxrrr60oGs;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/DiscBtnGroupAdapter;->setOnclickListener(Lcom/living/emo/adapter/DiscBtnGroupAdapter$OnClickListener;)V

    const v0, 0x7f0900f1

    .line 747
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/DiscActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 748
    new-instance v1, Lcom/living/emo/activity/DiscActivity$20;

    invoke-direct {v1, p0, v0}, Lcom/living/emo/activity/DiscActivity$20;-><init>(Lcom/living/emo/activity/DiscActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWindow()V
    .locals 2

    .line 559
    new-instance v0, Lcom/living/emo/view/DiscWindow;

    invoke-direct {v0}, Lcom/living/emo/view/DiscWindow;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mDiscLWindow:Lcom/living/emo/view/DiscWindow;

    .line 560
    new-instance v1, Lcom/living/emo/activity/-$$Lambda$DiscActivity$wKfDOlJCXJh_Pl7bu1IRsKjezaE;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$DiscActivity$wKfDOlJCXJh_Pl7bu1IRsKjezaE;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/DiscWindow;->setPlayerItemListener(Lcom/living/emo/view/DiscWindow$PlayerItemListener;)V

    .line 564
    new-instance v0, Lcom/living/emo/view/DiscWindow;

    invoke-direct {v0}, Lcom/living/emo/view/DiscWindow;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mDiscRWindow:Lcom/living/emo/view/DiscWindow;

    .line 565
    new-instance v1, Lcom/living/emo/activity/-$$Lambda$DiscActivity$wzHbyLDgWZrHurJ2cbFrR3Ok5bY;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$DiscActivity$wzHbyLDgWZrHurJ2cbFrR3Ok5bY;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/DiscWindow;->setPlayerItemListener(Lcom/living/emo/view/DiscWindow$PlayerItemListener;)V

    return-void
.end method

.method private setBpmAndEdit(FLandroid/widget/TextView;)V
    .locals 3

    const/high16 v0, 0x43000000    # 128.0f

    mul-float/2addr p1, v0

    .line 693
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p1

    .line 694
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPlayBg(ILandroid/widget/ImageButton;[ILcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p4}, Lcom/living/emo/animation/ImageButtonAnimation;->end()V

    const/4 p1, 0x0

    .line 525
    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 526
    invoke-virtual {p4, v0}, Lcom/living/emo/animation/ImageButtonAnimation;->setRos(I)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/animation/ImageButtonAnimation;->setValues()V

    .line 527
    aget p1, p3, v1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 521
    :cond_1
    aget p1, p3, v1

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 518
    :cond_2
    aget p1, p3, v0

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private start(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 781
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRotation()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/living/emo/animation/ImageButtonAnimation;->setRos(I)Lcom/living/emo/animation/ImageButtonAnimation;

    .line 782
    invoke-virtual {p1}, Lcom/living/emo/animation/ImageButtonAnimation;->start()V

    :cond_0
    return-void
.end method

.method private touchPress(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 341
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->pause()V

    .line 345
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/living/emo/activity/DiscActivity;->cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/living/emo/activity/DiscActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100049

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/DiscActivity;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private touchUpLift(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;Z)V
    .locals 3

    .line 354
    sget-object v0, Lcom/living/emo/activity/DiscActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchUpLift:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 356
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isData()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 358
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->play()V

    .line 359
    invoke-direct {p0, p2, p3}, Lcom/living/emo/activity/DiscActivity;->start(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBpmValue()I
    .locals 7

    .line 154
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v0}, Lcom/living/emo/presenter/DiscControlPresenter;->getSpeed()F

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v1}, Lcom/living/emo/presenter/DiscControlPresenter;->getSpeed()F

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v2}, Lcom/living/emo/presenter/DiscControlPresenter;->getVolume()F

    move-result v2

    .line 157
    iget-object v3, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v3}, Lcom/living/emo/presenter/DiscControlPresenter;->getVolume()F

    move-result v3

    .line 159
    sget-object v4, Lcom/living/emo/activity/DiscActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBpmValue:volume1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBpmValue:volume2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v5, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v5}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v5}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_0

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v2}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 169
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBpmValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x43000000    # 128.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int v0, v0

    return v0
.end method

.method public synthetic lambda$initData$0$DiscActivity(Ljava/util/List;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity;->mMusicList:Ljava/util/List;

    return-void
.end method

.method public synthetic lambda$initView$3$DiscActivity(Landroid/view/View;I)V
    .locals 0

    .line 743
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity;->mSoundPool:Lcom/living/emo/presenter/SoundsPresenter;

    invoke-virtual {p1, p2}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    return-void
.end method

.method public synthetic lambda$initWindow$1$DiscActivity(Lcom/living/emo/bean/MusicBean$DataBean;)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v0, p1}, Lcom/living/emo/presenter/DiscControlPresenter;->setData(Lcom/living/emo/bean/MusicBean$DataBean;)V

    .line 562
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity;->mDiscLWindow:Lcom/living/emo/view/DiscWindow;

    invoke-virtual {p1}, Lcom/living/emo/view/DiscWindow;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initWindow$2$DiscActivity(Lcom/living/emo/bean/MusicBean$DataBean;)V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v0, p1}, Lcom/living/emo/presenter/DiscControlPresenter;->setData(Lcom/living/emo/bean/MusicBean$DataBean;)V

    .line 567
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity;->mDiscRWindow:Lcom/living/emo/view/DiscWindow;

    invoke-virtual {p1}, Lcom/living/emo/view/DiscWindow;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/high16 v3, -0x3c790000    # -270.0f

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 835
    :sswitch_0
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mRDish:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/living/emo/activity/DiscActivity;->playOrPause(Lcom/living/emo/presenter/DiscControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 827
    :sswitch_1
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mDiscRWindow:Lcom/living/emo/view/DiscWindow;

    iget-object v4, p0, Lcom/living/emo/activity/DiscActivity;->mMusicList:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/living/emo/view/DiscWindow;->setMusicList(Ljava/util/List;)V

    .line 828
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mDiscRWindow:Lcom/living/emo/view/DiscWindow;

    invoke-static {v3}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/living/emo/view/DiscWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_0

    .line 831
    :sswitch_2
    sget-object p1, Lcom/living/emo/activity/DiscActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v1}, Lcom/living/emo/presenter/DiscControlPresenter;->isData()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mLDish:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/living/emo/activity/DiscActivity;->playOrPause(Lcom/living/emo/presenter/DiscControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 823
    :sswitch_3
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mDiscLWindow:Lcom/living/emo/view/DiscWindow;

    iget-object v4, p0, Lcom/living/emo/activity/DiscActivity;->mMusicList:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/living/emo/view/DiscWindow;->setMusicList(Ljava/util/List;)V

    .line 824
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mDiscLWindow:Lcom/living/emo/view/DiscWindow;

    invoke-static {v3}, Lcom/youth/banner/util/BannerUtils;->dp2px(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/living/emo/view/DiscWindow;->showAsDropDown(Landroid/view/View;III)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900f4 -> :sswitch_3
        0x7f0900f9 -> :sswitch_2
        0x7f0900fc -> :sswitch_1
        0x7f090101 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 112
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/DiscActivity;->setContentView(I)V

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity;->handler:Landroid/os/Handler;

    .line 115
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initReceiver()V

    .line 116
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initBle()V

    .line 117
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initData()V

    .line 118
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initView()V

    .line 119
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initWindow()V

    .line 120
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initEvent()V

    .line 121
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initAnim()V

    .line 122
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initTouchEvent()V

    .line 123
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initPlayMusic()V

    .line 124
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initSoundPool()V

    .line 125
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initTimer()V

    .line 126
    invoke-direct {p0}, Lcom/living/emo/activity/DiscActivity;->initProgressDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 871
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 872
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    invoke-virtual {v0}, Lcom/living/emo/observer/VolumeChangeObserver;->unRegisterReceiver()V

    .line 873
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0}, Lcom/living/emo/presenter/DiscControlPresenter;->unRegisterControlView()V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {v0}, Lcom/living/emo/presenter/DiscControlPresenter;->unRegisterControlView()V

    .line 879
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

    .line 175
    invoke-virtual {p1}, Lcom/living/emo/event/MessageEvent;->getData()[B

    move-result-object p1

    .line 176
    new-instance v0, Lcom/living/emo/activity/DiscActivity$2;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/DiscActivity$2;-><init>(Lcom/living/emo/activity/DiscActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/bean/AmusementBean;->AmusementNotify([BLcom/living/emo/bean/AmusementBean$AmusementResponse;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 845
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onPause()V

    .line 846
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v0}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v0}, Lcom/living/emo/presenter/DiscControlPresenter;->pause()V

    .line 848
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mLDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mLDish:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/living/emo/activity/DiscActivity;->cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v0}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRPlayControl:Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v0}, Lcom/living/emo/presenter/DiscControlPresenter;->pause()V

    .line 852
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mRDishAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity;->mRDish:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/living/emo/activity/DiscActivity;->cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 858
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onStop()V

    .line 859
    invoke-virtual {p0}, Lcom/living/emo/activity/DiscActivity;->finish()V

    .line 860
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 861
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity;->playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 865
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0

    .line 884
    iput p1, p0, Lcom/living/emo/activity/DiscActivity;->mVol:I

    return-void
.end method

.method public playOrPause(Lcom/living/emo/presenter/DiscControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 1

    .line 800
    invoke-virtual {p1}, Lcom/living/emo/presenter/DiscControlPresenter;->isData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {p1}, Lcom/living/emo/presenter/DiscControlPresenter;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    invoke-virtual {p1}, Lcom/living/emo/presenter/DiscControlPresenter;->play()V

    .line 803
    invoke-direct {p0, p2, p3}, Lcom/living/emo/activity/DiscActivity;->start(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 805
    :cond_0
    invoke-virtual {p1}, Lcom/living/emo/presenter/DiscControlPresenter;->pause()V

    .line 806
    invoke-direct {p0, p2, p3}, Lcom/living/emo/activity/DiscActivity;->cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/living/emo/activity/DiscActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100049

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/DiscActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
