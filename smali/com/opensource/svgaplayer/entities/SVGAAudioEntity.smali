.class public final Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;
.super Ljava/lang/Object;
.source "SVGAAudioEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011R\u0011\u0010\u0016\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000cR\u0011\u0010\u0018\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000cR\u0011\u0010\u001a\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u000c\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
        "",
        "audioItem",
        "Lcom/opensource/svgaplayer/proto/AudioEntity;",
        "(Lcom/opensource/svgaplayer/proto/AudioEntity;)V",
        "audioKey",
        "",
        "getAudioKey",
        "()Ljava/lang/String;",
        "endFrame",
        "",
        "getEndFrame",
        "()I",
        "playID",
        "getPlayID",
        "()Ljava/lang/Integer;",
        "setPlayID",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "soundID",
        "getSoundID",
        "setSoundID",
        "startFrame",
        "getStartFrame",
        "startTime",
        "getStartTime",
        "totalTime",
        "getTotalTime",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final audioKey:Ljava/lang/String;

.field private final endFrame:I

.field private playID:Ljava/lang/Integer;

.field private soundID:Ljava/lang/Integer;

.field private final startFrame:I

.field private final startTime:I

.field private final totalTime:I


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/AudioEntity;)V
    .locals 2

    const-string v0, "audioItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->audioKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->audioKey:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->startFrame:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startFrame:I

    .line 19
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->endFrame:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->endFrame:I

    .line 20
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->startTime:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startTime:I

    .line 21
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/AudioEntity;->totalTime:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    iput v1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->totalTime:I

    return-void
.end method


# virtual methods
.method public final getAudioKey()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->audioKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndFrame()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->endFrame:I

    return v0
.end method

.method public final getPlayID()Ljava/lang/Integer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->playID:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSoundID()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->soundID:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStartFrame()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startFrame:I

    return v0
.end method

.method public final getStartTime()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->startTime:I

    return v0
.end method

.method public final getTotalTime()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->totalTime:I

    return v0
.end method

.method public final setPlayID(Ljava/lang/Integer;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->playID:Ljava/lang/Integer;

    return-void
.end method

.method public final setSoundID(Ljava/lang/Integer;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->soundID:Ljava/lang/Integer;

    return-void
.end method
