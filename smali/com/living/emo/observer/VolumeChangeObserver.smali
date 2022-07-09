.class public Lcom/living/emo/observer/VolumeChangeObserver;
.super Ljava/lang/Object;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;,
        Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;
    }
.end annotation


# static fields
.field private static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static final TAG:Ljava/lang/String; = "com.living.emo.observer.VolumeChangeObserver"

.field private static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field private flag:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mVolumeChangeListener:Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;

.field private mVolumeReceiver:Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->flag:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeChangeListener:Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;

    .line 41
    iget-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentVolume()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getDecimalVolume()F
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/living/emo/observer/VolumeChangeObserver;->getMaxVolume()I

    move-result v0

    invoke-virtual {p0}, Lcom/living/emo/observer/VolumeChangeObserver;->getCurrentVolume()I

    move-result v1

    invoke-static {v0, v1}, Lcom/living/emo/util/MathUtil;->division(II)F

    move-result v0

    invoke-static {v0}, Lcom/living/emo/util/MathUtil;->twoDecimal(F)F

    move-result v0

    return v0
.end method

.method public getMaxVolume()I
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeReceiver:Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getVolumeChangeListener()Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeChangeListener:Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public registerReceiver()V
    .locals 3

    .line 90
    iget-boolean v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->flag:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeReceiver:Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;-><init>(Lcom/living/emo/observer/VolumeChangeObserver;Lcom/living/emo/observer/VolumeChangeObserver$1;)V

    iput-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeReceiver:Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;

    .line 94
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeReceiver:Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->flag:Z

    :cond_1
    return-void
.end method

.method public setVolumeChangeListener(Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeChangeListener:Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->flag:Z

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeReceiver:Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeReceiver:Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;

    .line 108
    iput-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    iput-object v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->mVolumeChangeListener:Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/living/emo/observer/VolumeChangeObserver;->flag:Z

    :cond_0
    return-void
.end method
