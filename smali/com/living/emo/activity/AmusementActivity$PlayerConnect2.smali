.class Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;
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
    name = "PlayerConnect2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/AmusementActivity;


# direct methods
.method private constructor <init>(Lcom/living/emo/activity/AmusementActivity;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/activity/AmusementActivity$1;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;-><init>(Lcom/living/emo/activity/AmusementActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 309
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "----------mPlayerControlPresenter2-------------"

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    if-nez p1, :cond_1

    .line 311
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    check-cast p2, Lcom/living/emo/interfaces/IPlayerControlPresenter;

    invoke-static {p1, p2}, Lcom/living/emo/activity/AmusementActivity;->access$1902(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    .line 312
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2}, Lcom/living/emo/activity/AmusementActivity;->access$2000(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlView;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->registerControlView(Ljava/lang/Object;)V

    .line 313
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->notificationChange()V

    .line 314
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2100(Lcom/living/emo/activity/AmusementActivity;)Lcom/jaygoo/widget/VerticalRangeSeekBar;

    move-result-object p1

    iget-object p2, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p2}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p2

    invoke-interface {p2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getSpeed()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jaygoo/widget/VerticalRangeSeekBar;->setProgress(F)V

    .line 315
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p2

    invoke-interface {p2}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->getSpeed()F

    move-result p2

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$2200(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v1}, Lcom/living/emo/activity/AmusementActivity;->access$2300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/living/emo/activity/AmusementActivity;->access$1800(Lcom/living/emo/activity/AmusementActivity;FLandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 316
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->isData()Z

    move-result p1

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2500(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2500(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 328
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->unRegisterControlView()V

    .line 330
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$PlayerConnect2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/living/emo/activity/AmusementActivity;->access$1902(Lcom/living/emo/activity/AmusementActivity;Lcom/living/emo/interfaces/IPlayerControlPresenter;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    :cond_0
    return-void
.end method
