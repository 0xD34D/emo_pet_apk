.class Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/observer/VolumeChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/observer/VolumeChangeObserver;


# direct methods
.method private constructor <init>(Lcom/living/emo/observer/VolumeChangeObserver;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;->this$0:Lcom/living/emo/observer/VolumeChangeObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/observer/VolumeChangeObserver;Lcom/living/emo/observer/VolumeChangeObserver$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;-><init>(Lcom/living/emo/observer/VolumeChangeObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 122
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 124
    iget-object p1, p0, Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;->this$0:Lcom/living/emo/observer/VolumeChangeObserver;

    invoke-virtual {p1}, Lcom/living/emo/observer/VolumeChangeObserver;->getCurrentVolume()I

    move-result p1

    .line 126
    iget-object p2, p0, Lcom/living/emo/observer/VolumeChangeObserver$VolumeReceiver;->this$0:Lcom/living/emo/observer/VolumeChangeObserver;

    invoke-virtual {p2}, Lcom/living/emo/observer/VolumeChangeObserver;->getVolumeChangeListener()Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 128
    invoke-interface {p2, p1}, Lcom/living/emo/observer/VolumeChangeObserver$VolumeChangeListener;->onVolumeChanged(I)V

    :cond_0
    return-void
.end method
