.class public Lcom/living/emo/presenter/SoundsPresenter;
.super Ljava/lang/Object;
.source "SoundsPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.living.emo.presenter.SoundsPresenter"

.field private static instance:Lcom/living/emo/presenter/SoundsPresenter;


# instance fields
.field private l:F

.field private final mContext:Landroid/content/Context;

.field private mLoadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSounds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mLoadMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mPlayMap:Ljava/util/HashMap;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 28
    iput v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->l:F

    const-string v1, "sounds/VDUB2 Short FX004.wav"

    const-string v2, "sounds/VDUB2 Short FX008.wav"

    const-string v3, "sounds/VDUB2 Short FX020.wav"

    const-string v4, "sounds/VDUB2 Short FX021.wav"

    const-string v5, "sounds/VDUB2 Short FX022.wav"

    const-string v6, "sounds/VDUB2 Short FX035.wav"

    const-string v7, "sounds/VDUB2 Short FX059.wav"

    const-string v8, "sounds/VDUB2 Short FX068.wav"

    const-string v9, "sounds/VDUB2 Short FX115.wav"

    const-string v10, "sounds/VDUB2 Short FX119.wav"

    const-string v11, "sounds/VDUB2 Short FX127.wav"

    const-string v12, "sounds/VDUB2 Short FX136.wav"

    .line 42
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSounds:[Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/living/emo/presenter/SoundsPresenter;->initSoundPool()V

    return-void
.end method

.method public static getInstance()Lcom/living/emo/presenter/SoundsPresenter;
    .locals 1

    .line 36
    sget-object v0, Lcom/living/emo/presenter/SoundsPresenter;->instance:Lcom/living/emo/presenter/SoundsPresenter;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/living/emo/presenter/SoundsPresenter;

    invoke-direct {v0}, Lcom/living/emo/presenter/SoundsPresenter;-><init>()V

    sput-object v0, Lcom/living/emo/presenter/SoundsPresenter;->instance:Lcom/living/emo/presenter/SoundsPresenter;

    .line 39
    :cond_0
    sget-object v0, Lcom/living/emo/presenter/SoundsPresenter;->instance:Lcom/living/emo/presenter/SoundsPresenter;

    return-object v0
.end method

.method private initLoads()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mLoadMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSounds:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSounds:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/living/emo/presenter/SoundsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSounds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/living/emo/presenter/SoundsPresenter;->mLoadMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/living/emo/presenter/SoundsPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----initLoads-----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/living/emo/presenter/SoundsPresenter;->mLoadMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 96
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initSoundPool()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v2, 0x10

    if-le v0, v1, :cond_0

    .line 65
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 66
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 67
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 70
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    .line 73
    sget-object v0, Lcom/living/emo/presenter/SoundsPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------initSoundPool----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    .line 76
    sget-object v0, Lcom/living/emo/presenter/SoundsPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------SoundPool----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/living/emo/presenter/SoundsPresenter;->initLoads()V

    return-void
.end method


# virtual methods
.method public play(I)V
    .locals 10

    .line 108
    iget-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/living/emo/presenter/SoundsPresenter;->mLoadMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 110
    iget-object v1, p0, Lcom/living/emo/presenter/SoundsPresenter;->mPlayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/living/emo/presenter/SoundsPresenter;->mPlayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/living/emo/presenter/SoundsPresenter;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v6, p0, Lcom/living/emo/presenter/SoundsPresenter;->l:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v5, v6

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/living/emo/presenter/SoundsPresenter;->mPlayMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/living/emo/presenter/SoundsPresenter;->l:F

    return-void
.end method
