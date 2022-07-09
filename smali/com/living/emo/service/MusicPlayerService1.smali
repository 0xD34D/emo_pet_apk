.class public Lcom/living/emo/service/MusicPlayerService1;
.super Landroid/app/Service;
.source "MusicPlayerService1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.living.emo.service.MusicPlayerService1"


# instance fields
.field private mPlayerControlPresenter1:Lcom/living/emo/presenter/PlayerControlPresenter1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/living/emo/service/MusicPlayerService1;->mPlayerControlPresenter1:Lcom/living/emo/presenter/PlayerControlPresenter1;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 33
    sget-object p1, Lcom/living/emo/service/MusicPlayerService1;->TAG:Ljava/lang/String;

    const-string v0, "----------onBind-------------"

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/living/emo/service/MusicPlayerService1;->mPlayerControlPresenter1:Lcom/living/emo/presenter/PlayerControlPresenter1;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    iget-object v0, p0, Lcom/living/emo/service/MusicPlayerService1;->mPlayerControlPresenter1:Lcom/living/emo/presenter/PlayerControlPresenter1;

    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lcom/living/emo/service/MusicPlayerService1;->TAG:Ljava/lang/String;

    const-string v1, "----------onCreate-------------"

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/living/emo/presenter/PlayerControlPresenter1;

    invoke-direct {v0}, Lcom/living/emo/presenter/PlayerControlPresenter1;-><init>()V

    iput-object v0, p0, Lcom/living/emo/service/MusicPlayerService1;->mPlayerControlPresenter1:Lcom/living/emo/presenter/PlayerControlPresenter1;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
