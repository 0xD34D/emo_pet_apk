.class Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/AmusementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerConnect1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/AmusementActivity;


# direct methods
.method private constructor <init>(Lcom/living/emo/activity/AmusementActivity;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/activity/AmusementActivity$1;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 265
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "----------mPlayerControlPresenter1-------------"

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    if-nez p1, :cond_2

    .line 267
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    check-cast p2, Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-static {p1, p2}, Lcom/living/emo/activity/AmusementActivity;->access$202(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    .line 268
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2}, Lcom/living/emo/activity/AmusementActivity;->access$1300(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlView;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->registerControlView(Ljava/lang/Object;)V

    .line 269
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->notificationChange()V

    .line 270
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPlayerControlPresenter1.getVolume()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getVolume()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getVolume()F

    move-result p1

    const/high16 p2, 0x42480000    # 50.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1400(Lcom/living/emo/activity/AmusementActivity;)Lcom/jaygoo/widget/VerticalRangeSeekBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setProgress(F)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1400(Lcom/living/emo/activity/AmusementActivity;)Lcom/jaygoo/widget/VerticalRangeSeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p2

    invoke-interface {p2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getVolume()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setProgress(F)V

    .line 276
    :goto_0
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1500(Lcom/living/emo/activity/AmusementActivity;)Lcom/jaygoo/widget/VerticalRangeSeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p2

    invoke-interface {p2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getSpeed()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setProgress(F)V

    .line 277
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p2

    invoke-interface {p2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getSpeed()F

    move-result p2

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v1}, Lcom/living/emo/activity/AmusementActivity;->access$1700(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/living/emo/activity/AmusementActivity;->access$1800(Lcom/living/emo/activity/AmusementActivity;FLandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 278
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isData()Z

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 290
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->unRegisterControlView()V

    .line 292
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/living/emo/activity/AmusementActivity;->access$202(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    :cond_0
    return-void
.end method
