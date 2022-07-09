.class public Lcom/living/emo/presenter/PlayMusicPresenters;
.super Ljava/lang/Object;
.source "PlayMusicPresenters.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLoop:Z

.field private final mContext:Landroid/content/Context;

.field private mData:Lcom/living/emo/bean/MemoryMusicBean;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private vol:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/presenter/PlayMusicPresenters;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/presenter/PlayMusicPresenters;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->isLoop:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 22
    iput v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->vol:F

    .line 49
    iput-object p1, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayMusicPresenters;->initMediaPlayer()V

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/presenter/PlayMusicPresenters;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->isLoop:Z

    return p0
.end method

.method private loadResources()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mData:Lcom/living/emo/bean/MemoryMusicBean;

    invoke-virtual {v1}, Lcom/living/emo/bean/MemoryMusicBean;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 70
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 71
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 72
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 69
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 74
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 75
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/living/emo/presenter/PlayMusicPresenters$1;

    invoke-direct {v1, p0}, Lcom/living/emo/presenter/PlayMusicPresenters$1;-><init>(Lcom/living/emo/presenter/PlayMusicPresenters;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    sget-object v1, Lcom/living/emo/presenter/PlayMusicPresenters;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadResources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getVol()F
    .locals 1

    .line 36
    iget v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->vol:F

    return v0
.end method

.method protected initMediaPlayer()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public isLoop()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->isLoop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/living/emo/presenter/PlayMusicPresenters;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 95
    iget v1, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->vol:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 96
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public setLoop(Z)Lcom/living/emo/presenter/PlayMusicPresenters;
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->isLoop:Z

    return-object p0
.end method

.method public setResources(Lcom/living/emo/bean/MemoryMusicBean;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mData:Lcom/living/emo/bean/MemoryMusicBean;

    .line 61
    invoke-direct {p0}, Lcom/living/emo/presenter/PlayMusicPresenters;->loadResources()V

    return-void
.end method

.method public setVol(F)Lcom/living/emo/presenter/PlayMusicPresenters;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 43
    :cond_0
    iput p1, p0, Lcom/living/emo/presenter/PlayMusicPresenters;->vol:F

    :goto_0
    return-object p0
.end method
