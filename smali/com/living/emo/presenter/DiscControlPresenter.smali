.class public Lcom/living/emo/presenter/DiscControlPresenter;
.super Ljava/lang/Object;
.source "DiscControlPresenter.java"

# interfaces
.implements Lcom/living/emo/interfaces/IPlayerControlPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/presenter/DiscControlPresenter$MyTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currState:I

.field private listener:Lcom/living/emo/interfaces/IPlayerControlView;

.field private final mContext:Landroid/content/Context;

.field private mData:Lcom/living/emo/bean/MusicBean$DataBean;

.field private mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMyTask:Lcom/living/emo/presenter/DiscControlPresenter$MyTask;

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private speed:F

.field private vol:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/presenter/DiscControlPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/presenter/DiscControlPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->listener:Lcom/living/emo/interfaces/IPlayerControlView;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->speed:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 33
    iput v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->vol:F

    const/4 v0, 0x1

    .line 35
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    iput-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->initMediaPlayer()V

    return-void
.end method

.method static synthetic access$002(Lcom/living/emo/presenter/DiscControlPresenter;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    return p1
.end method

.method static synthetic access$100(Lcom/living/emo/presenter/DiscControlPresenter;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->loadResources()V

    return-void
.end method

.method static synthetic access$300(Lcom/living/emo/presenter/DiscControlPresenter;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->getStayTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/presenter/DiscControlPresenter;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->getCurrPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/living/emo/presenter/DiscControlPresenter;)Lcom/living/emo/interfaces/IPlayerControlView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->listener:Lcom/living/emo/interfaces/IPlayerControlView;

    return-object p0
.end method

.method private getCurrPosition()I
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    .line 279
    iget-object v2, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

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

.method private getStayTime()Ljava/lang/String;
    .locals 6

    .line 230
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v1, "00:00"

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    return-object v1

    .line 235
    :cond_0
    invoke-static {v2, v3}, Lcom/living/emo/util/DateUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private initMediaPlayer()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private loadResources()V
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mData:Lcom/living/emo/bean/MusicBean$DataBean;

    invoke-virtual {v1}, Lcom/living/emo/bean/MusicBean$DataBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 167
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 168
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 169
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 166
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 171
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 172
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/living/emo/presenter/DiscControlPresenter$1;

    invoke-direct {v1, p0}, Lcom/living/emo/presenter/DiscControlPresenter$1;-><init>(Lcom/living/emo/presenter/DiscControlPresenter;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    sget-object v1, Lcom/living/emo/presenter/DiscControlPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadResources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private threadStart()V
    .locals 8

    .line 288
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMyTask:Lcom/living/emo/presenter/DiscControlPresenter$MyTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 289
    new-instance v2, Lcom/living/emo/presenter/DiscControlPresenter$MyTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/living/emo/presenter/DiscControlPresenter$MyTask;-><init>(Lcom/living/emo/presenter/DiscControlPresenter;Lcom/living/emo/presenter/DiscControlPresenter$1;)V

    iput-object v2, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMyTask:Lcom/living/emo/presenter/DiscControlPresenter$MyTask;

    .line 290
    iget-object v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x190

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private threadStop()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMyTask:Lcom/living/emo/presenter/DiscControlPresenter$MyTask;

    .line 300
    iput-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPlayingState()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->speed:F

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 216
    iget v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->vol:F

    return v0
.end method

.method public isData()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mData:Lcom/living/emo/bean/MusicBean$DataBean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notificationChange()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->listener:Lcom/living/emo/interfaces/IPlayerControlView;

    iget v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    invoke-interface {v0, v1}, Lcom/living/emo/interfaces/IPlayerControlView;->playOnChangeSate(I)V

    return-void
.end method

.method public pause()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 72
    iget v2, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 73
    iput v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    .line 74
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 75
    invoke-virtual {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->notificationChange()V

    .line 76
    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->threadStop()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 55
    iget v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    .line 57
    iget v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->vol:F

    invoke-virtual {p0, v0}, Lcom/living/emo/presenter/DiscControlPresenter;->setVolume(F)V

    .line 58
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 59
    invoke-virtual {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->notificationChange()V

    .line 60
    iget v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->speed:F

    invoke-virtual {p0, v0}, Lcom/living/emo/presenter/DiscControlPresenter;->speed(F)V

    .line 61
    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->threadStart()V

    :cond_1
    return-void
.end method

.method public registerControlView(Lcom/living/emo/interfaces/IPlayerControlView;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->listener:Lcom/living/emo/interfaces/IPlayerControlView;

    return-void
.end method

.method public bridge synthetic registerControlView(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/living/emo/interfaces/IPlayerControlView;

    invoke-virtual {p0, p1}, Lcom/living/emo/presenter/DiscControlPresenter;->registerControlView(Lcom/living/emo/interfaces/IPlayerControlView;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 140
    iget v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    if-eq v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->stop()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 144
    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->threadStop()V

    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 249
    iget-object v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 250
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->listener:Lcom/living/emo/interfaces/IPlayerControlView;

    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->getStayTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/living/emo/interfaces/IPlayerControlView;->onChangeSeekBar(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setData(Lcom/living/emo/bean/MusicBean$DataBean;)V
    .locals 3

    .line 155
    iput-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mData:Lcom/living/emo/bean/MusicBean$DataBean;

    .line 156
    invoke-virtual {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->reset()V

    .line 157
    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->loadResources()V

    .line 158
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->listener:Lcom/living/emo/interfaces/IPlayerControlView;

    new-instance v1, Lcom/living/emo/bean/MusicInfo;

    invoke-virtual {p1}, Lcom/living/emo/bean/MusicBean$DataBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->getStayTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/living/emo/bean/MusicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/living/emo/interfaces/IPlayerControlView;->musicInfo(Lcom/living/emo/bean/MusicInfo;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 203
    iput p1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->vol:F

    .line 204
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public speed(F)V
    .locals 2

    .line 111
    iput p1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->speed:F

    .line 112
    iget p1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->speed:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 87
    iget v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    const/4 v2, 0x3

    if-eq v2, v1, :cond_0

    .line 88
    iput v2, p0, Lcom/living/emo/presenter/DiscControlPresenter;->currState:I

    .line 89
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 90
    invoke-virtual {p0}, Lcom/living/emo/presenter/DiscControlPresenter;->notificationChange()V

    :cond_0
    return-void
.end method

.method public unRegisterControlView()V
    .locals 2

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->listener:Lcom/living/emo/interfaces/IPlayerControlView;

    .line 270
    iget-object v1, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 272
    iput-object v0, p0, Lcom/living/emo/presenter/DiscControlPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
