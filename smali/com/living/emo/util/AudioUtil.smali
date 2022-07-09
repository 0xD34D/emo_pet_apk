.class public final enum Lcom/living/emo/util/AudioUtil;
.super Ljava/lang/Enum;
.source "AudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/util/AudioUtil$OnAudioPlayingState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/util/AudioUtil;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/util/AudioUtil;

.field public static final AUDIO_PAUSE_STATE:I = 0x2

.field public static final AUDIO_PLAY_STATE:I = 0x1

.field public static final AUDIO_STOP_STATE:I = 0x3

.field public static final enum INSTANCE:Lcom/living/emo/util/AudioUtil;


# instance fields
.field private audioPlayState:Lcom/living/emo/util/AudioUtil$OnAudioPlayingState;

.field private currState:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lcom/living/emo/util/AudioUtil;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/util/AudioUtil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/util/AudioUtil;->INSTANCE:Lcom/living/emo/util/AudioUtil;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/living/emo/util/AudioUtil;

    aput-object v0, v1, v2

    .line 12
    sput-object v1, Lcom/living/emo/util/AudioUtil;->$VALUES:[Lcom/living/emo/util/AudioUtil;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 20
    iput p1, p0, Lcom/living/emo/util/AudioUtil;->currState:I

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/living/emo/util/AudioUtil;->audioPlayState:Lcom/living/emo/util/AudioUtil$OnAudioPlayingState;

    return-void
.end method

.method private notifyChange()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/living/emo/util/AudioUtil;->audioPlayState:Lcom/living/emo/util/AudioUtil$OnAudioPlayingState;

    if-eqz v0, :cond_0

    .line 51
    iget v1, p0, Lcom/living/emo/util/AudioUtil;->currState:I

    invoke-interface {v0, v1}, Lcom/living/emo/util/AudioUtil$OnAudioPlayingState;->audioState(I)V

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/util/AudioUtil;
    .locals 1

    .line 12
    const-class v0, Lcom/living/emo/util/AudioUtil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/util/AudioUtil;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/util/AudioUtil;
    .locals 1

    .line 12
    sget-object v0, Lcom/living/emo/util/AudioUtil;->$VALUES:[Lcom/living/emo/util/AudioUtil;

    invoke-virtual {v0}, [Lcom/living/emo/util/AudioUtil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/util/AudioUtil;

    return-object v0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/living/emo/util/AudioUtil;->currState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 62
    iput v1, p0, Lcom/living/emo/util/AudioUtil;->currState:I

    .line 63
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 64
    invoke-direct {p0}, Lcom/living/emo/util/AudioUtil;->notifyChange()V

    :cond_0
    return-void
.end method

.method public play(Landroid/content/Context;I)V
    .locals 0

    .line 22
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 24
    iget p1, p0, Lcom/living/emo/util/AudioUtil;->currState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 25
    iput p1, p0, Lcom/living/emo/util/AudioUtil;->currState:I

    .line 26
    invoke-direct {p0}, Lcom/living/emo/util/AudioUtil;->notifyChange()V

    .line 27
    iget-object p2, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 28
    iget-object p1, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method public setAudioPlayState(Lcom/living/emo/util/AudioUtil$OnAudioPlayingState;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/living/emo/util/AudioUtil;->audioPlayState:Lcom/living/emo/util/AudioUtil$OnAudioPlayingState;

    if-nez v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/living/emo/util/AudioUtil;->audioPlayState:Lcom/living/emo/util/AudioUtil$OnAudioPlayingState;

    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/living/emo/util/AudioUtil;->currState:I

    .line 36
    invoke-direct {p0}, Lcom/living/emo/util/AudioUtil;->notifyChange()V

    .line 37
    iget-object v0, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 38
    iget-object v0, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/living/emo/util/AudioUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method
