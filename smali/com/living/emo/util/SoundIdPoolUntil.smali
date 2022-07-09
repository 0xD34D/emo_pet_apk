.class public Lcom/living/emo/util/SoundIdPoolUntil;
.super Ljava/lang/Object;
.source "SoundIdPoolUntil.java"


# static fields
.field private static mInstance:Lcom/living/emo/util/SoundIdPoolUntil;


# instance fields
.field private currSound:I

.field private huntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private huntMusic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isPlay:Z

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
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSounds:Ljava/util/HashMap;

    const/16 v0, 0xa

    .line 21
    iput v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mMaxStreams:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMusic:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->currSound:I

    .line 88
    iput-boolean v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->isPlay:Z

    .line 25
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    .line 26
    iput p1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mMaxStreams:I

    .line 27
    invoke-direct {p0}, Lcom/living/emo/util/SoundIdPoolUntil;->initSoundPool()V

    return-void
.end method

.method public static getInstance()Lcom/living/emo/util/SoundIdPoolUntil;
    .locals 2

    .line 51
    sget-object v0, Lcom/living/emo/util/SoundIdPoolUntil;->mInstance:Lcom/living/emo/util/SoundIdPoolUntil;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/living/emo/util/SoundIdPoolUntil;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/living/emo/util/SoundIdPoolUntil;-><init>(I)V

    sput-object v0, Lcom/living/emo/util/SoundIdPoolUntil;->mInstance:Lcom/living/emo/util/SoundIdPoolUntil;

    .line 54
    :cond_0
    sget-object v0, Lcom/living/emo/util/SoundIdPoolUntil;->mInstance:Lcom/living/emo/util/SoundIdPoolUntil;

    return-object v0
.end method

.method private initSoundPool()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x3

    if-le v0, v1, :cond_0

    .line 36
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 37
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 38
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 40
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    iget v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mMaxStreams:I

    .line 41
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    iget v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mMaxStreams:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public isPlay()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->isPlay:Z

    return v0
.end method

.method public load()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f000c

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "effect_1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f000d

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "effect_2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f000e

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "effect_3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0003

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hunt_effect"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0004

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hunt_android"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0005

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "last_3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0001

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "no_reward"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    const v3, 0x7f0f000a

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "time_out1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public play(I)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    .line 59
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/living/emo/util/SoundIdPoolUntil$1;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/util/SoundIdPoolUntil$1;-><init>(Lcom/living/emo/util/SoundIdPoolUntil;I)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method public play(Ljava/lang/String;I)V
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p2

    iput p2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->currSound:I

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "last_3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "time_out1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMusic:Ljava/util/HashMap;

    iget p2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->currSound:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->currSound:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/living/emo/util/SoundIdPoolUntil;->isPlay:Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .line 108
    iget v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->currSound:I

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMusic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 110
    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMusic:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->huntMusic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/living/emo/util/SoundIdPoolUntil;->isPlay:Z

    :cond_2
    return-void
.end method
