.class public Lcom/living/emo/presenter/PlayerControlPresenter1;
.super Landroid/os/Binder;
.source "PlayerControlPresenter1.java"

# interfaces
.implements Lcom/living/emo/interfaces/IPlayerControlPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.living.emo.presenter.PlayerControlPresenter1"


# instance fields
.field private flag:Z

.field private mCallback:Lcom/living/emo/interfaces/IPlayerControlView;

.field private mCurrentState:I

.field private mData:Lcom/living/emo/bean/MusicBean$DataBean;

.field private mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicInfo:Lcom/living/emo/bean/MusicInfo;

.field private mMyTask:Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mSpeed:F

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x3

    .line 31
    iput v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 33
    iput-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mData:Lcom/living/emo/bean/MusicBean$DataBean;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->flag:Z

    const/high16 v1, 0x42480000    # 50.0f

    .line 35
    iput v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    iput v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mSpeed:F

    .line 38
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/living/emo/presenter/PlayerControlPresenter1;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/living/emo/presenter/PlayerControlPresenter1;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    return p1
.end method

.method static synthetic access$200(Lcom/living/emo/presenter/PlayerControlPresenter1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->threadStop()V

    return-void
.end method

.method static synthetic access$300(Lcom/living/emo/presenter/PlayerControlPresenter1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->initMediaPlayer()V

    return-void
.end method

.method static synthetic access$500(Lcom/living/emo/presenter/PlayerControlPresenter1;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->getStayTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/presenter/PlayerControlPresenter1;)I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->getCurrPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/living/emo/presenter/PlayerControlPresenter1;)Lcom/living/emo/interfaces/IPlayerControlView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCallback:Lcom/living/emo/interfaces/IPlayerControlView;

    return-object p0
.end method

.method private getCurrPosition()I
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    .line 293
    iget-object v2, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDuration()Ljava/lang/String;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/living/emo/util/DateUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "00:00"

    return-object v0
.end method

.method private getStayTime()Ljava/lang/String;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 232
    invoke-static {v0, v1}, Lcom/living/emo/util/DateUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "00:00"

    return-object v0
.end method

.method private initMediaPlayer()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 72
    :cond_0
    iget v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 76
    :try_start_0
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mData:Lcom/living/emo/bean/MusicBean$DataBean;

    invoke-virtual {v1}, Lcom/living/emo/bean/MusicBean$DataBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 79
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 81
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 78
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 83
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 84
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/living/emo/presenter/PlayerControlPresenter1$1;

    invoke-direct {v1, p0}, Lcom/living/emo/presenter/PlayerControlPresenter1$1;-><init>(Lcom/living/emo/presenter/PlayerControlPresenter1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private threadStart()V
    .locals 8

    .line 211
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMyTask:Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 212
    new-instance v2, Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;-><init>(Lcom/living/emo/presenter/PlayerControlPresenter1;Lcom/living/emo/presenter/PlayerControlPresenter1$1;)V

    iput-object v2, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMyTask:Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;

    .line 213
    iget-object v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x190

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private threadStop()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMyTask:Lcom/living/emo/presenter/PlayerControlPresenter1$MyTask;

    .line 223
    iput-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPlayingState()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mSpeed:F

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 262
    iget v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mVolume:F

    return v0
.end method

.method public isData()Z
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mData:Lcom/living/emo/bean/MusicBean$DataBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notificationChange()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCallback:Lcom/living/emo/interfaces/IPlayerControlView;

    iget v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    invoke-interface {v0, v1}, Lcom/living/emo/interfaces/IPlayerControlView;->playOnChangeSate(I)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 109
    iput v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    .line 110
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 111
    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->notificationChange()V

    .line 112
    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->threadStop()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 48
    iget v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    .line 51
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 52
    iget-boolean v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->flag:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->flag:Z

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lcom/living/emo/util/MathUtil;->format2Decimal(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->speed(F)V

    .line 57
    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->notificationChange()V

    .line 58
    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->threadStart()V

    :cond_2
    return-void
.end method

.method public registerControlView(Lcom/living/emo/interfaces/IPlayerControlView;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCallback:Lcom/living/emo/interfaces/IPlayerControlView;

    return-void
.end method

.method public bridge synthetic registerControlView(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/living/emo/interfaces/IPlayerControlView;

    invoke-virtual {p0, p1}, Lcom/living/emo/presenter/PlayerControlPresenter1;->registerControlView(Lcom/living/emo/interfaces/IPlayerControlView;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 179
    iget v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->stop()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 275
    iget-object v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 276
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCallback:Lcom/living/emo/interfaces/IPlayerControlView;

    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->getStayTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/living/emo/interfaces/IPlayerControlView;->onChangeSeekBar(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setData(Lcom/living/emo/bean/MusicBean$DataBean;)V
    .locals 2

    .line 193
    iput-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mData:Lcom/living/emo/bean/MusicBean$DataBean;

    .line 194
    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->initMediaPlayer()V

    .line 195
    iget-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMusicInfo:Lcom/living/emo/bean/MusicInfo;

    .line 197
    new-instance p1, Lcom/living/emo/bean/MusicInfo;

    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mData:Lcom/living/emo/bean/MusicBean$DataBean;

    invoke-virtual {v0}, Lcom/living/emo/bean/MusicBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/living/emo/bean/MusicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMusicInfo:Lcom/living/emo/bean/MusicInfo;

    .line 198
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCallback:Lcom/living/emo/interfaces/IPlayerControlView;

    invoke-interface {v0, p1}, Lcom/living/emo/interfaces/IPlayerControlView;->musicInfo(Lcom/living/emo/bean/MusicInfo;)V

    .line 199
    iget-object p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCallback:Lcom/living/emo/interfaces/IPlayerControlView;

    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->getDuration()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/living/emo/interfaces/IPlayerControlView;->onChangeSeekBar(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 255
    iput p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mVolume:F

    .line 256
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public speed(F)V
    .locals 3

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 147
    iput p1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mSpeed:F

    .line 148
    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p1}, Lcom/living/emo/util/MathUtil;->format2Decimal(F)F

    move-result p1

    .line 150
    sget-object v0, Lcom/living/emo/presenter/PlayerControlPresenter1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\uff1adecimal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 123
    iput v1, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCurrentState:I

    .line 124
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 125
    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->notificationChange()V

    .line 126
    invoke-direct {p0}, Lcom/living/emo/presenter/PlayerControlPresenter1;->threadStop()V

    :cond_0
    return-void
.end method

.method public unRegisterControlView()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCallback:Lcom/living/emo/interfaces/IPlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mCallback:Lcom/living/emo/interfaces/IPlayerControlView;

    .line 309
    iput-object v0, p0, Lcom/living/emo/presenter/PlayerControlPresenter1;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
