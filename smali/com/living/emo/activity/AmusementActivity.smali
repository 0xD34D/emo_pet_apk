.class public Lcom/living/emo/activity/AmusementActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "AmusementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/AmusementActivity$TimerInterval;,
        Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;,
        Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;
    }
.end annotation


# static fields
.field private static final MUSIC_VOLUME:I = 0x32

.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bpmValue:I

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

.field private mBtNote1:Landroid/widget/Button;

.field private mBtNote10:Landroid/widget/Button;

.field private mBtNote11:Landroid/widget/Button;

.field private mBtNote12:Landroid/widget/Button;

.field private mBtNote2:Landroid/widget/Button;

.field private mBtNote3:Landroid/widget/Button;

.field private mBtNote4:Landroid/widget/Button;

.field private mBtNote5:Landroid/widget/Button;

.field private mBtNote6:Landroid/widget/Button;

.field private mBtNote7:Landroid/widget/Button;

.field private mBtNote8:Landroid/widget/Button;

.field private mBtNote9:Landroid/widget/Button;

.field private mClose:Landroid/widget/ImageButton;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/MusicBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDecimalVolume:F

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEnterAnimation:Landroid/animation/ValueAnimator;

.field private mIvLeftMusic:Landroid/widget/ImageButton;

.field private mIvRightMusic:Landroid/widget/ImageButton;

.field private mLeftAddMusicContainer:Landroid/widget/LinearLayout;

.field private mLeftAnim:Lcom/living/emo/animation/ImageButtonAnimation;

.field private mLeftBpm:Landroid/widget/TextView;

.field private mLeftDish:Landroid/widget/ImageView;

.field private mLeftEdit:Landroid/widget/TextView;

.field private mLeftMusic:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

.field private mLeftMusicContainer:Landroid/widget/LinearLayout;

.field private mLeftName:Landroid/widget/TextView;

.field private mLeftPopupWindow:Lcom/living/emo/view/LeftPopupWindow;

.field private mLeftSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

.field private mLeftStart:Landroid/widget/ImageButton;

.field private mLeftTime:Landroid/widget/TextView;

.field private mLeftTouch:Lcom/living/emo/presenter/TouchPresenter;

.field private mMusicsControlViewCallback:Lcom/living/emo/interfaces/IMusicsControlViewCallback;

.field private mMusicsPresenters:Lcom/living/emo/presenter/MusicsPresenters;

.field private mOuterAnimation:Landroid/animation/ValueAnimator;

.field private mPlayerConnect1:Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;

.field private mPlayerConnect2:Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;

.field private mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

.field private mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

.field private mPlayerControlView1:Lcom/living/emo/interfaces/IPlayerControlView;

.field private mPlayerControlView2:Lcom/living/emo/interfaces/IPlayerControlView;

.field private mRightAddMusicContainer:Landroid/widget/LinearLayout;

.field private mRightAnim:Lcom/living/emo/animation/ImageButtonAnimation;

.field private mRightBpm:Landroid/widget/TextView;

.field private mRightDish:Landroid/widget/ImageView;

.field private mRightEdit:Landroid/widget/TextView;

.field private mRightMusic:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

.field private mRightMusicContainer:Landroid/widget/LinearLayout;

.field private mRightName:Landroid/widget/TextView;

.field private mRightPopupWindow:Lcom/living/emo/view/RightPopupWindow;

.field private mRightSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

.field private mRightStart:Landroid/widget/ImageButton;

.field private mRightTime:Landroid/widget/TextView;

.field private mRightTouch:Lcom/living/emo/presenter/TouchPresenter;

.field private mSeekBaretVolumeKey:Lcom/jaygoo/widget/VerticalRangeSeekBar;

.field private mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

.field private mTvLeftMusic:Landroid/widget/TextView;

.field private mTvrightMusic:Landroid/widget/TextView;

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
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/AmusementActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/AmusementActivity;->TAG:Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 337
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/AmusementActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    const/16 v0, 0x80

    .line 89
    iput v0, p0, Lcom/living/emo/activity/AmusementActivity;->bpmValue:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect1:Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;

    .line 94
    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    .line 108
    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    .line 112
    new-instance v1, Lcom/living/emo/activity/AmusementActivity$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$1;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    iput-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mMusicsControlViewCallback:Lcom/living/emo/interfaces/IMusicsControlViewCallback;

    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lcom/living/emo/activity/AmusementActivity;->isLeftUserTouch:Z

    .line 148
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->handler:Landroid/os/Handler;

    .line 250
    new-instance v2, Lcom/living/emo/activity/AmusementActivity$3;

    invoke-direct {v2, p0}, Lcom/living/emo/activity/AmusementActivity$3;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    iput-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->delayed:Ljava/lang/Runnable;

    .line 298
    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect2:Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;

    .line 299
    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    .line 347
    new-instance v2, Lcom/living/emo/activity/AmusementActivity$4;

    invoke-direct {v2, p0}, Lcom/living/emo/activity/AmusementActivity$4;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    iput-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlView1:Lcom/living/emo/interfaces/IPlayerControlView;

    .line 421
    new-instance v2, Lcom/living/emo/activity/AmusementActivity$5;

    invoke-direct {v2, p0}, Lcom/living/emo/activity/AmusementActivity$5;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    iput-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlView2:Lcom/living/emo/interfaces/IPlayerControlView;

    const/4 v2, 0x3

    .line 469
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 476
    iput-boolean v1, p0, Lcom/living/emo/activity/AmusementActivity;->isPlaying:Z

    .line 479
    iput-boolean v1, p0, Lcom/living/emo/activity/AmusementActivity;->isProcessing:Z

    .line 480
    iput-boolean v1, p0, Lcom/living/emo/activity/AmusementActivity;->isTask:Z

    .line 545
    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 546
    new-instance v0, Lcom/living/emo/activity/AmusementActivity$6;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/AmusementActivity$6;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->play:Ljava/lang/Runnable;

    .line 558
    new-instance v0, Lcom/living/emo/activity/AmusementActivity$7;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/AmusementActivity$7;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->stop:Ljava/lang/Runnable;

    .line 570
    iput-boolean v1, p0, Lcom/living/emo/activity/AmusementActivity;->isDance:Z

    .line 571
    new-instance v0, Lcom/living/emo/activity/AmusementActivity$8;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/AmusementActivity$8;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->playing:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/AmusementActivity;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/living/emo/activity/AmusementActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/living/emo/activity/AmusementActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/living/emo/activity/AmusementActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/living/emo/activity/AmusementActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->delayed:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/living/emo/activity/AmusementActivity;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlView1:Lcom/living/emo/interfaces/IPlayerControlView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/living/emo/activity/AmusementActivity;)Lcom/jaygoo/widget/VerticalRangeSeekBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mSeekBaretVolumeKey:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/living/emo/activity/AmusementActivity;)Lcom/jaygoo/widget/VerticalRangeSeekBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftBpm:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftEdit:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/living/emo/activity/AmusementActivity;FLandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/living/emo/activity/AmusementActivity;->setBpmAndEdit(FLandroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;)Lcom/living/emo/interfaces/IPlayerControlPresenter;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlView2:Lcom/living/emo/interfaces/IPlayerControlView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;)Lcom/living/emo/interfaces/IPlayerControlPresenter;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/living/emo/activity/AmusementActivity;)Lcom/jaygoo/widget/VerticalRangeSeekBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightBpm:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightEdit:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightAddMusicContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightMusicContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftStart:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/living/emo/activity/AmusementActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/living/emo/activity/AmusementActivity;->isLeftUserTouch:Z

    return p0
.end method

.method static synthetic access$2802(Lcom/living/emo/activity/AmusementActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/living/emo/activity/AmusementActivity;->isLeftUserTouch:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/living/emo/activity/AmusementActivity;)Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftMusic:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftAddMusicContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightStart:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/animation/ImageButtonAnimation;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightDish:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/living/emo/activity/AmusementActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/living/emo/activity/AmusementActivity;->isRightUserTouch:Z

    return p0
.end method

.method static synthetic access$3502(Lcom/living/emo/activity/AmusementActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/living/emo/activity/AmusementActivity;->isRightUserTouch:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/living/emo/activity/AmusementActivity;)Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightMusic:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/living/emo/activity/AmusementActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/living/emo/activity/AmusementActivity;->isMusic1:Z

    return p0
.end method

.method static synthetic access$3902(Lcom/living/emo/activity/AmusementActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/living/emo/activity/AmusementActivity;->isMusic1:Z

    return p1
.end method

.method static synthetic access$400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftMusicContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/living/emo/activity/AmusementActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/living/emo/activity/AmusementActivity;->isMusic2:Z

    return p0
.end method

.method static synthetic access$4002(Lcom/living/emo/activity/AmusementActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/living/emo/activity/AmusementActivity;->isMusic2:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/living/emo/activity/AmusementActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/living/emo/activity/AmusementActivity;->isPlaying:Z

    return p0
.end method

.method static synthetic access$4102(Lcom/living/emo/activity/AmusementActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/living/emo/activity/AmusementActivity;->isPlaying:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/living/emo/activity/AmusementActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->play:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/living/emo/activity/AmusementActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->stop:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/living/emo/activity/AmusementActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/living/emo/activity/AmusementActivity;->isTask:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/living/emo/activity/AmusementActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/living/emo/activity/AmusementActivity;->isTask:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/living/emo/activity/AmusementActivity;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/living/emo/activity/AmusementActivity;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->playingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/living/emo/activity/AmusementActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->playing:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/living/emo/activity/AmusementActivity;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/living/emo/activity/AmusementActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/living/emo/activity/AmusementActivity;->isDance:Z

    return p0
.end method

.method static synthetic access$4802(Lcom/living/emo/activity/AmusementActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/living/emo/activity/AmusementActivity;->isDance:Z

    return p1
.end method

.method static synthetic access$500(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/animation/ImageButtonAnimation;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/presenter/TouchPresenter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftTouch:Lcom/living/emo/presenter/TouchPresenter;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/living/emo/activity/AmusementActivity;->touchPress(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/living/emo/activity/AmusementActivity;->touchUpLift(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/presenter/SoundsPresenter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/presenter/TouchPresenter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightTouch:Lcom/living/emo/presenter/TouchPresenter;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/living/emo/activity/AmusementActivity;F)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/living/emo/activity/AmusementActivity;->updateAlpha(F)V

    return-void
.end method

.method static synthetic access$5700(Lcom/living/emo/activity/AmusementActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mOuterAnimation:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/living/emo/activity/AmusementActivity;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/living/emo/activity/AmusementActivity;->lessFifty(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/living/emo/activity/AmusementActivity;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/living/emo/activity/AmusementActivity;->equalFifty(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftDish:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/living/emo/activity/AmusementActivity;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/living/emo/activity/AmusementActivity;->moreFifty(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/living/emo/activity/AmusementActivity;)F
    .locals 0

    .line 75
    iget p0, p0, Lcom/living/emo/activity/AmusementActivity;->mDecimalVolume:F

    return p0
.end method

.method static synthetic access$800(Lcom/living/emo/activity/AmusementActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/living/emo/activity/AmusementActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/activity/AmusementActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/living/emo/activity/AmusementActivity;->isProcessing:Z

    return p0
.end method

.method static synthetic access$902(Lcom/living/emo/activity/AmusementActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/living/emo/activity/AmusementActivity;->isProcessing:Z

    return p1
.end method

.method private cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRotation()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/living/emo/animation/ImageButtonAnimation;->setRos(I)Lcom/living/emo/animation/ImageButtonAnimation;

    .line 413
    invoke-virtual {p1}, Lcom/living/emo/animation/ImageButtonAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private checkPermissions()V
    .locals 4

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 770
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 771
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 772
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 774
    sget-object v1, Lcom/living/emo/activity/AmusementActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_1

    .line 777
    sget-object v0, Lcom/living/emo/activity/AmusementActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v0, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 780
    sget-object v0, Lcom/living/emo/activity/AmusementActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {p0, v0, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private equalFifty(I)V
    .locals 2

    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    .line 1116
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz v0, :cond_0

    .line 1117
    invoke-interface {v0, p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->setVolume(F)V

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz v0, :cond_1

    .line 1120
    invoke-interface {v0, p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->setVolume(F)V

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    if-eqz v0, :cond_2

    .line 1123
    iget v1, p0, Lcom/living/emo/activity/AmusementActivity;->mDecimalVolume:F

    invoke-static {v1, p1}, Lcom/living/emo/util/MathUtil;->multiplication(FF)F

    move-result p1

    invoke-static {p1}, Lcom/living/emo/util/MathUtil;->twoDecimal(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/living/emo/presenter/SoundsPresenter;->setVolume(F)V

    :cond_2
    return-void
.end method

.method private initAnimation()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 809
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mEnterAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    .line 810
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 811
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mEnterAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/living/emo/activity/AmusementActivity$15;

    invoke-direct {v4, p0}, Lcom/living/emo/activity/AmusementActivity$15;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 819
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mOuterAnimation:Landroid/animation/ValueAnimator;

    .line 820
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 821
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mOuterAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$16;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$16;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 829
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    if-nez v0, :cond_0

    .line 830
    new-instance v0, Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-direct {v0}, Lcom/living/emo/animation/ImageButtonAnimation;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    .line 831
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftDish:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/animation/ImageButtonAnimation;->setView(Landroid/view/View;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/animation/ImageButtonAnimation;->init()V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    if-nez v0, :cond_1

    .line 835
    new-instance v0, Lcom/living/emo/animation/ImageButtonAnimation;

    invoke-direct {v0}, Lcom/living/emo/animation/ImageButtonAnimation;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    .line 836
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mRightDish:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/living/emo/animation/ImageButtonAnimation;->setView(Landroid/view/View;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/animation/ImageButtonAnimation;->init()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initBindService()V
    .locals 5

    .line 638
    sget-object v0, Lcom/living/emo/activity/AmusementActivity;->TAG:Ljava/lang/String;

    const-string v1, "----------MusicPlayerService1-------------"

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect1:Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 640
    new-instance v1, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;

    invoke-direct {v1, p0, v2}, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;-><init>(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/activity/AmusementActivity$1;)V

    iput-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect1:Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;

    .line 642
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/living/emo/service/MusicPlayerService1;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect1:Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/living/emo/activity/AmusementActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 643
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect2:Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;

    if-nez v1, :cond_1

    .line 644
    new-instance v1, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;

    invoke-direct {v1, p0, v2}, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;-><init>(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/activity/AmusementActivity$1;)V

    iput-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect2:Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;

    .line 646
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/living/emo/service/MusicPlayerService2;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect2:Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;

    invoke-virtual {p0, v1, v2, v4}, Lcom/living/emo/activity/AmusementActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v1, "----------MusicPlayerService2-------------"

    .line 647
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initBle()V
    .locals 2

    .line 176
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const/4 v1, 0x7

    .line 177
    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->enterApp(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/AmusementActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 799
    invoke-static {}, Lcom/living/emo/presenter/MusicsPresenters;->getInstance()Lcom/living/emo/presenter/MusicsPresenters;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mMusicsPresenters:Lcom/living/emo/presenter/MusicsPresenters;

    .line 800
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mMusicsControlViewCallback:Lcom/living/emo/interfaces/IMusicsControlViewCallback;

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/MusicsPresenters;->registerControlView(Lcom/living/emo/interfaces/IMusicsControlViewCallback;)V

    .line 801
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mMusicsPresenters:Lcom/living/emo/presenter/MusicsPresenters;

    invoke-virtual {v0}, Lcom/living/emo/presenter/MusicsPresenters;->getMusicList()V

    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mIvLeftMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mTvLeftMusic:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mIvRightMusic:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mTvrightMusic:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftStart:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightStart:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote5:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote6:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote7:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote8:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 944
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote9:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote10:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote11:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote12:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mSeekBaretVolumeKey:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$21;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$21;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setOnRangeChangedListener(Lcom/jaygoo/widget/OnRangeChangedListener;)V

    .line 977
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$22;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$22;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setOnRangeChangedListener(Lcom/jaygoo/widget/OnRangeChangedListener;)V

    .line 1001
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$23;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$23;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setOnRangeChangedListener(Lcom/jaygoo/widget/OnRangeChangedListener;)V

    .line 1023
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftMusic:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$24;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$24;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->setOnSeekBarChangeListener(Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;)V

    .line 1043
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightMusic:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$25;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$25;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->setOnSeekBarChangeListener(Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;)V

    .line 1063
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$26;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$26;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPopupWindow()V
    .locals 2

    .line 846
    new-instance v0, Lcom/living/emo/view/LeftPopupWindow;

    invoke-direct {v0}, Lcom/living/emo/view/LeftPopupWindow;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftPopupWindow:Lcom/living/emo/view/LeftPopupWindow;

    .line 847
    new-instance v1, Lcom/living/emo/activity/AmusementActivity$17;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$17;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/LeftPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 854
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftPopupWindow:Lcom/living/emo/view/LeftPopupWindow;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$18;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$18;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/LeftPopupWindow;->setPlayerItemListener(Lcom/living/emo/view/LeftPopupWindow$PlayerItemListener;)V

    .line 867
    new-instance v0, Lcom/living/emo/view/RightPopupWindow;

    invoke-direct {v0}, Lcom/living/emo/view/RightPopupWindow;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightPopupWindow:Lcom/living/emo/view/RightPopupWindow;

    .line 868
    new-instance v1, Lcom/living/emo/activity/AmusementActivity$19;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$19;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/RightPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 874
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightPopupWindow:Lcom/living/emo/view/RightPopupWindow;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$20;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$20;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/view/RightPopupWindow;->setPlayerItemClickListener(Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;)V

    return-void
.end method

.method private initProgressDialog()V
    .locals 4

    .line 244
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mDialog:Landroid/app/ProgressDialog;

    const-string v1, "One moment please..."

    .line 245
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 247
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 248
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->delayed:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initReceiver()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Lcom/living/emo/observer/VolumeChangeObserver;

    invoke-direct {v0}, Lcom/living/emo/observer/VolumeChangeObserver;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    .line 609
    invoke-virtual {v0}, Lcom/living/emo/observer/VolumeChangeObserver;->registerReceiver()V

    .line 610
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    invoke-virtual {v0, p0}, Lcom/living/emo/observer/VolumeChangeObserver;->setVolumeChangeListener(Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;)V

    :cond_0
    return-void
.end method

.method private initSoundsPresenter()V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    if-nez v0, :cond_0

    .line 629
    invoke-static {}, Lcom/living/emo/presenter/SoundsPresenter;->getInstance()Lcom/living/emo/presenter/SoundsPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    :cond_0
    return-void
.end method

.method private initStartService()V
    .locals 2

    .line 790
    sget-object v0, Lcom/living/emo/activity/AmusementActivity;->TAG:Ljava/lang/String;

    const-string v1, "----------initStartService-------------"

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/living/emo/service/MusicPlayerService1;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 792
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/living/emo/service/MusicPlayerService2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private initTimer()V
    .locals 7

    .line 472
    new-instance v1, Lcom/living/emo/activity/AmusementActivity$TimerInterval;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/living/emo/activity/AmusementActivity$TimerInterval;-><init>(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/activity/AmusementActivity$1;)V

    .line 473
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private initTouchEvents()V
    .locals 4

    .line 658
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftTouch:Lcom/living/emo/presenter/TouchPresenter;

    const-wide/16 v1, 0x64

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Lcom/living/emo/presenter/TouchPresenter;

    invoke-direct {v0}, Lcom/living/emo/presenter/TouchPresenter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftTouch:Lcom/living/emo/presenter/TouchPresenter;

    .line 661
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftDish:Landroid/widget/ImageView;

    new-instance v3, Lcom/living/emo/activity/AmusementActivity$9;

    invoke-direct {v3, p0}, Lcom/living/emo/activity/AmusementActivity$9;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 676
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftTouch:Lcom/living/emo/presenter/TouchPresenter;

    new-instance v3, Lcom/living/emo/activity/AmusementActivity$10;

    invoke-direct {v3, p0}, Lcom/living/emo/activity/AmusementActivity$10;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v3}, Lcom/living/emo/presenter/TouchPresenter;->setTouchListener(Lcom/living/emo/presenter/TouchPresenter$TouchListener;)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightTouch:Lcom/living/emo/presenter/TouchPresenter;

    if-nez v0, :cond_1

    .line 702
    new-instance v0, Lcom/living/emo/presenter/TouchPresenter;

    invoke-direct {v0}, Lcom/living/emo/presenter/TouchPresenter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightTouch:Lcom/living/emo/presenter/TouchPresenter;

    .line 704
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftDish:Landroid/widget/ImageView;

    new-instance v3, Lcom/living/emo/activity/AmusementActivity$11;

    invoke-direct {v3, p0}, Lcom/living/emo/activity/AmusementActivity$11;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 718
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightTouch:Lcom/living/emo/presenter/TouchPresenter;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$12;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$12;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/TouchPresenter;->setTouchListener(Lcom/living/emo/presenter/TouchPresenter$TouchListener;)V

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftDish:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$13;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$13;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 757
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightDish:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$14;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$14;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f090196

    .line 1147
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mIvLeftMusic:Landroid/widget/ImageButton;

    const v0, 0x7f09033b

    .line 1148
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mTvLeftMusic:Landroid/widget/TextView;

    const v0, 0x7f090197

    .line 1149
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mIvRightMusic:Landroid/widget/ImageButton;

    const v0, 0x7f09033c

    .line 1150
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mTvrightMusic:Landroid/widget/TextView;

    const v0, 0x7f0901a7

    .line 1153
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftMusicContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0901a1

    .line 1154
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftAddMusicContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f090297

    .line 1155
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightMusicContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f090290

    .line 1156
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightAddMusicContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f09005e

    .line 1157
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mClose:Landroid/widget/ImageButton;

    const v0, 0x7f0901a4

    .line 1159
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftStart:Landroid/widget/ImageButton;

    const v0, 0x7f090293

    .line 1161
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightStart:Landroid/widget/ImageButton;

    const v0, 0x7f090076

    .line 1163
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote1:Landroid/widget/Button;

    const v0, 0x7f09007a

    .line 1164
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote2:Landroid/widget/Button;

    const v0, 0x7f09007b

    .line 1165
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote3:Landroid/widget/Button;

    const v0, 0x7f09007c

    .line 1166
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote4:Landroid/widget/Button;

    const v0, 0x7f09007d

    .line 1167
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote5:Landroid/widget/Button;

    const v0, 0x7f09007e

    .line 1168
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote6:Landroid/widget/Button;

    const v0, 0x7f09007f

    .line 1169
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote7:Landroid/widget/Button;

    const v0, 0x7f090080

    .line 1170
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote8:Landroid/widget/Button;

    const v0, 0x7f090081

    .line 1171
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote9:Landroid/widget/Button;

    const v0, 0x7f090077

    .line 1172
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote10:Landroid/widget/Button;

    const v0, 0x7f090078

    .line 1173
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote11:Landroid/widget/Button;

    const v0, 0x7f090079

    .line 1174
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mBtNote12:Landroid/widget/Button;

    const v0, 0x7f0902bc

    .line 1175
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaygoo/widget/VerticalRangeSeekBar;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mSeekBaretVolumeKey:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    const v0, 0x7f0901a3

    .line 1177
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftDish:Landroid/widget/ImageView;

    const v0, 0x7f090292

    .line 1179
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightDish:Landroid/widget/ImageView;

    const v0, 0x7f0901a9

    .line 1181
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaygoo/widget/VerticalRangeSeekBar;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    const v0, 0x7f090299

    .line 1182
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jaygoo/widget/VerticalRangeSeekBar;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightSeekBar:Lcom/jaygoo/widget/VerticalRangeSeekBar;

    const v0, 0x7f0901a2

    .line 1184
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftBpm:Landroid/widget/TextView;

    const v0, 0x7f0901a5

    .line 1185
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftEdit:Landroid/widget/TextView;

    const v0, 0x7f090291

    .line 1186
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightBpm:Landroid/widget/TextView;

    const v0, 0x7f090294

    .line 1187
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightEdit:Landroid/widget/TextView;

    const v0, 0x7f0901a8

    .line 1189
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftName:Landroid/widget/TextView;

    const v0, 0x7f0901aa

    .line 1190
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftTime:Landroid/widget/TextView;

    const v0, 0x7f0901a6

    .line 1191
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftMusic:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    const v0, 0x7f090298

    .line 1192
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightName:Landroid/widget/TextView;

    const v0, 0x7f09029b

    .line 1193
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightTime:Landroid/widget/TextView;

    const v0, 0x7f090296

    .line 1194
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    iput-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightMusic:Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    return-void
.end method

.method private initVolume()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/living/emo/observer/VolumeChangeObserver;->getDecimalVolume()F

    move-result v0

    iput v0, p0, Lcom/living/emo/activity/AmusementActivity;->mDecimalVolume:F

    .line 595
    sget-object v0, Lcom/living/emo/activity/AmusementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVolume: ====>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/living/emo/activity/AmusementActivity;->mDecimalVolume:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    if-eqz v0, :cond_0

    .line 598
    iget v1, p0, Lcom/living/emo/activity/AmusementActivity;->mDecimalVolume:F

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/SoundsPresenter;->setVolume(F)V

    :cond_0
    return-void
.end method

.method private lessFifty(I)V
    .locals 2

    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 1130
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz v1, :cond_0

    sub-float/2addr v0, p1

    .line 1131
    invoke-interface {v1, v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->setVolume(F)V

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz v0, :cond_1

    .line 1134
    invoke-interface {v0, p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->setVolume(F)V

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    if-eqz v0, :cond_2

    .line 1137
    iget v1, p0, Lcom/living/emo/activity/AmusementActivity;->mDecimalVolume:F

    invoke-static {v1, p1}, Lcom/living/emo/util/MathUtil;->multiplication(FF)F

    move-result p1

    invoke-static {p1}, Lcom/living/emo/util/MathUtil;->twoDecimal(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/living/emo/presenter/SoundsPresenter;->setVolume(F)V

    :cond_2
    return-void
.end method

.method private moreFifty(I)V
    .locals 2

    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    .line 1103
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz v0, :cond_0

    .line 1104
    invoke-interface {v0, p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->setVolume(F)V

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 1107
    invoke-interface {v0, v1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->setVolume(F)V

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    if-eqz v0, :cond_2

    .line 1110
    iget v1, p0, Lcom/living/emo/activity/AmusementActivity;->mDecimalVolume:F

    invoke-static {v1, p1}, Lcom/living/emo/util/MathUtil;->multiplication(FF)F

    move-result p1

    invoke-static {p1}, Lcom/living/emo/util/MathUtil;->twoDecimal(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/living/emo/presenter/SoundsPresenter;->setVolume(F)V

    :cond_2
    return-void
.end method

.method private playSounds(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1289
    :pswitch_0
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1286
    :pswitch_1
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1283
    :pswitch_2
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1280
    :pswitch_3
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1277
    :pswitch_4
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1274
    :pswitch_5
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1271
    :pswitch_6
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1268
    :pswitch_7
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1298
    :pswitch_8
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1295
    :pswitch_9
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1292
    :pswitch_a
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    goto :goto_0

    .line 1265
    :pswitch_b
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mSoundsPresenter:Lcom/living/emo/presenter/SoundsPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/living/emo/presenter/SoundsPresenter;->play(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090076
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBpmAndEdit(FLandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7

    const/high16 v0, 0x43000000    # 128.0f

    mul-float/2addr v0, p1

    .line 1081
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v2

    const-string v4, "%"

    if-nez v3, :cond_0

    const-wide/16 v2, 0x80

    .line 1083
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u00b1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    cmpg-float v5, p1, v2

    const/high16 v6, 0x42c80000    # 100.0f

    if-gez v5, :cond_1

    sub-float/2addr v2, p1

    mul-float/2addr v2, v6

    float-to-double v5, v0

    .line 1087
    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    sub-float/2addr p1, v2

    mul-float/2addr p1, v6

    float-to-double v2, v0

    .line 1091
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private start(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p2}, Landroid/widget/ImageView;->getRotation()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/living/emo/animation/ImageButtonAnimation;->setRos(I)Lcom/living/emo/animation/ImageButtonAnimation;

    .line 400
    invoke-virtual {p1}, Lcom/living/emo/animation/ImageButtonAnimation;->start()V

    :cond_0
    return-void
.end method

.method private touchPress(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 895
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->pause()V

    .line 899
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/living/emo/activity/AmusementActivity;->cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {p0}, Lcom/living/emo/activity/AmusementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100049

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/AmusementActivity;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private touchUpLift(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;Z)V
    .locals 3

    .line 913
    sget-object v0, Lcom/living/emo/activity/AmusementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchUpLift:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 915
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isData()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 917
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->play()V

    .line 918
    invoke-direct {p0, p2, p3}, Lcom/living/emo/activity/AmusementActivity;->start(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private updateAlpha(F)V
    .locals 2

    .line 1311
    invoke-virtual {p0}, Lcom/living/emo/activity/AmusementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1312
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1313
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1314
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBpmValue()I
    .locals 7

    .line 526
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-interface {v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getSpeed()F

    move-result v0

    .line 527
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-interface {v1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getSpeed()F

    move-result v1

    .line 528
    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-interface {v2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getVolume()F

    move-result v2

    .line 529
    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-interface {v3}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getVolume()F

    move-result v3

    .line 531
    sget-object v4, Lcom/living/emo/activity/AmusementActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBpmValue:volume1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBpmValue:volume2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v4, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-interface {v4}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-interface {v4}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_0

    .line 536
    :cond_0
    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-interface {v2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 542
    :goto_0
    iget v1, p0, Lcom/living/emo/activity/AmusementActivity;->bpmValue:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1246
    :sswitch_0
    sget-object p1, Lcom/living/emo/activity/AmusementActivity;->TAG:Ljava/lang/String;

    const-string v1, "----------R.id.right_dish_start-------------"

    invoke-static {p1, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz p1, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mRightAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->mRightDish:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v1, v2}, Lcom/living/emo/activity/AmusementActivity;->playOrPause(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1240
    :sswitch_1
    sget-object p1, Lcom/living/emo/activity/AmusementActivity;->TAG:Ljava/lang/String;

    const-string v1, "----------R.id.left_dish_start-------------"

    invoke-static {p1, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz p1, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftDish:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v1, v2}, Lcom/living/emo/activity/AmusementActivity;->playOrPause(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1235
    :sswitch_2
    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->mRightPopupWindow:Lcom/living/emo/view/RightPopupWindow;

    const/4 v3, 0x5

    invoke-virtual {v2, p1, v3, v1, v1}, Lcom/living/emo/view/RightPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1236
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mRightPopupWindow:Lcom/living/emo/view/RightPopupWindow;

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mData:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/living/emo/view/RightPopupWindow;->setMusicList(Ljava/util/List;)V

    .line 1237
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mEnterAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1229
    :sswitch_3
    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftPopupWindow:Lcom/living/emo/view/LeftPopupWindow;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3, v1, v1}, Lcom/living/emo/view/LeftPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1230
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftPopupWindow:Lcom/living/emo/view/LeftPopupWindow;

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mData:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/living/emo/view/LeftPopupWindow;->setMusicList(Ljava/util/List;)V

    .line 1231
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity;->mEnterAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1254
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->playSounds(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090196 -> :sswitch_3
        0x7f090197 -> :sswitch_2
        0x7f0901a4 -> :sswitch_1
        0x7f090293 -> :sswitch_0
        0x7f09033b -> :sswitch_3
        0x7f09033c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 156
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/AmusementActivity;->setContentView(I)V

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initBle()V

    .line 159
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initReceiver()V

    .line 160
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initView()V

    .line 161
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initData()V

    .line 162
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initStartService()V

    .line 163
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initBindService()V

    .line 164
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initEvents()V

    .line 165
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initAnimation()V

    .line 166
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initPopupWindow()V

    .line 167
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initTouchEvents()V

    .line 168
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->checkPermissions()V

    .line 169
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initSoundsPresenter()V

    .line 170
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initProgressDialog()V

    .line 171
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initVolume()V

    .line 172
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initTimer()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1339
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 1340
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftPopupWindow:Lcom/living/emo/view/LeftPopupWindow;

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {v0}, Lcom/living/emo/view/LeftPopupWindow;->dismiss()V

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightPopupWindow:Lcom/living/emo/view/RightPopupWindow;

    if-eqz v0, :cond_1

    .line 1344
    invoke-virtual {v0}, Lcom/living/emo/view/RightPopupWindow;->dismiss()V

    .line 1346
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mMusicsPresenters:Lcom/living/emo/presenter/MusicsPresenters;

    if-eqz v0, :cond_2

    .line 1347
    invoke-virtual {v0}, Lcom/living/emo/presenter/MusicsPresenters;->unRegisterControlView()V

    .line 1349
    :cond_2
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect1:Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1350
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1351
    iput-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect1:Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;

    .line 1352
    iput-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    .line 1354
    :cond_3
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect2:Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;

    if-eqz v0, :cond_4

    .line 1355
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/AmusementActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1356
    iput-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerConnect2:Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;

    .line 1357
    iput-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    .line 1359
    :cond_4
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    if-eqz v0, :cond_5

    .line 1360
    invoke-virtual {v0}, Lcom/living/emo/observer/VolumeChangeObserver;->unRegisterReceiver()V

    .line 1361
    iput-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mVolumeChangeObserver:Lcom/living/emo/observer/VolumeChangeObserver;

    .line 1363
    :cond_5
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

    .line 183
    invoke-virtual {p1}, Lcom/living/emo/event/MessageEvent;->getData()[B

    move-result-object p1

    .line 184
    new-instance v0, Lcom/living/emo/activity/AmusementActivity$2;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/AmusementActivity$2;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/bean/AmusementBean;->AmusementNotify([BLcom/living/emo/bean/AmusementBean$AmusementResponse;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 653
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1322
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onStop()V

    .line 1323
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz v0, :cond_0

    .line 1324
    invoke-interface {v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter1:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-interface {v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->pause()V

    .line 1326
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mLeftDish:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/living/emo/activity/AmusementActivity;->cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    if-eqz v0, :cond_1

    .line 1330
    invoke-interface {v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mPlayerControlPresenter2:Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-interface {v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->pause()V

    .line 1332
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity;->mRightAnim:Lcom/living/emo/animation/ImageButtonAnimation;

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity;->mRightDish:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/living/emo/activity/AmusementActivity;->cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/living/emo/activity/AmusementActivity;->initVolume()V

    return-void
.end method

.method public playOrPause(Lcom/living/emo/interfaces/IPlayerControlPresenter;Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V
    .locals 1

    .line 1204
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->play()V

    .line 1207
    invoke-direct {p0, p2, p3}, Lcom/living/emo/activity/AmusementActivity;->start(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1209
    :cond_0
    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->pause()V

    .line 1210
    invoke-direct {p0, p2, p3}, Lcom/living/emo/activity/AmusementActivity;->cancel(Lcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1213
    :cond_1
    invoke-virtual {p0}, Lcom/living/emo/activity/AmusementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100049

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/AmusementActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
