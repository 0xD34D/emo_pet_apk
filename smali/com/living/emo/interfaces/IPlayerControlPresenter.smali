.class public interface abstract Lcom/living/emo/interfaces/IPlayerControlPresenter;
.super Ljava/lang/Object;
.source "IPlayerControlPresenter.java"

# interfaces
.implements Lcom/living/emo/interfaces/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/living/emo/interfaces/IBasePresenter<",
        "Lcom/living/emo/interfaces/IPlayerControlView;",
        ">;"
    }
.end annotation


# static fields
.field public static final MEDIA_PAUSE_STATE:I = 0x2

.field public static final MEDIA_PLAY_STATE:I = 0x1

.field public static final MEDIA_STOP_STATE:I = 0x3


# virtual methods
.method public abstract getPlayingState()I
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getVolume()F
.end method

.method public abstract isData()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract notificationChange()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setData(Lcom/living/emo/bean/MusicBean$DataBean;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract speed(F)V
.end method

.method public abstract stop()V
.end method
