.class public Lcom/living/emo/util/SoundUtil;
.super Ljava/lang/Object;
.source "SoundUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/living/emo/util/SoundUtil;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mMaxStreams:I

.field protected mSoundPool:Landroid/media/SoundPool;

.field private mSounds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/util/SoundUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/util/SoundUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/living/emo/util/SoundUtil;->mInstance:Lcom/living/emo/util/SoundUtil;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    const/16 v0, 0xa

    .line 30
    iput v0, p0, Lcom/living/emo/util/SoundUtil;->mMaxStreams:I

    .line 34
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/SoundUtil;->mContext:Landroid/content/Context;

    .line 35
    iput p1, p0, Lcom/living/emo/util/SoundUtil;->mMaxStreams:I

    .line 36
    invoke-direct {p0}, Lcom/living/emo/util/SoundUtil;->initSoundPool()V

    return-void
.end method

.method public static getInstance()Lcom/living/emo/util/SoundUtil;
    .locals 2

    .line 64
    sget-object v0, Lcom/living/emo/util/SoundUtil;->mInstance:Lcom/living/emo/util/SoundUtil;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/living/emo/util/SoundUtil;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/living/emo/util/SoundUtil;-><init>(I)V

    sput-object v0, Lcom/living/emo/util/SoundUtil;->mInstance:Lcom/living/emo/util/SoundUtil;

    .line 67
    :cond_0
    sget-object v0, Lcom/living/emo/util/SoundUtil;->mInstance:Lcom/living/emo/util/SoundUtil;

    return-object v0
.end method

.method private initSoundPool()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 44
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 45
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 46
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    iget v2, p0, Lcom/living/emo/util/SoundUtil;->mMaxStreams:I

    .line 49
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    .line 52
    sget-object v0, Lcom/living/emo/util/SoundUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------initSoundPool----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    iget v1, p0, Lcom/living/emo/util/SoundUtil;->mMaxStreams:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    .line 55
    sget-object v0, Lcom/living/emo/util/SoundUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------SoundPool----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/living/emo/util/SoundUtil;->initLoads()V

    return-void
.end method

.method private loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 3

    .line 72
    :try_start_0
    sget-object v0, Lcom/living/emo/util/SoundUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadfd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/util/SoundUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected initLoads()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    .line 83
    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/bad.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bad"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/caption1.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "caption1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/caption2.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "caption2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/error1.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/error2.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/error3.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/error4.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/error5.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/great.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "great"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/perfect.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "perfect"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/select.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "select"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/yes1.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "yes1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "memorySounds/yes2.mp3"

    invoke-direct {p0, v2}, Lcom/living/emo/util/SoundUtil;->loadFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "yes2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSounds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/living/emo/util/SoundUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method
