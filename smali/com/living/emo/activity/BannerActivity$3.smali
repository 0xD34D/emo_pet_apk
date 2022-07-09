.class Lcom/living/emo/activity/BannerActivity$3;
.super Ljava/lang/Object;
.source "BannerActivity.java"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/BannerActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/BannerActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/BannerActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBannerClick(Ljava/lang/Object;I)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-static {v0}, Lcom/living/emo/activity/BannerActivity;->access$000(Lcom/living/emo/activity/BannerActivity;)Lcom/youth/banner/Banner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setEnabled(Z)V

    .line 91
    check-cast p1, Lcom/living/emo/bean/DataBean;

    .line 92
    invoke-static {}, Lcom/living/emo/activity/BannerActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position->>:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "list<dataBean>---->:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/living/emo/bean/DataBean;->viewType:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget p2, p1, Lcom/living/emo/bean/DataBean;->viewType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 94
    iget-object p2, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {p2}, Lcom/living/emo/activity/BannerActivity;->playMusic()V

    .line 95
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    const-class v2, Lcom/living/emo/activity/LudoGameActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {v1, p2}, Lcom/living/emo/activity/BannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    :cond_0
    iget p2, p1, Lcom/living/emo/bean/DataBean;->viewType:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 99
    iget-object p2, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {p2}, Lcom/living/emo/activity/BannerActivity;->playMusic()V

    .line 100
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p2

    const v1, 0x7f0f0009

    invoke-virtual {p2, v1}, Lcom/living/emo/util/SoundIdPoolUntil;->play(I)V

    .line 101
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    const-class v2, Lcom/living/emo/activity/WakeDemonActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {v1, p2}, Lcom/living/emo/activity/BannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    :cond_1
    iget p2, p1, Lcom/living/emo/bean/DataBean;->viewType:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 105
    iget-object p2, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {p2}, Lcom/living/emo/activity/BannerActivity;->playMusic()V

    .line 106
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object p2

    const v1, 0x7f0f0008

    invoke-virtual {p2, v1}, Lcom/living/emo/util/SoundIdPoolUntil;->play(I)V

    .line 107
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    const-class v2, Lcom/living/emo/activity/MemoryActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {v1, p2}, Lcom/living/emo/activity/BannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    :cond_2
    iget p2, p1, Lcom/living/emo/bean/DataBean;->viewType:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 111
    iget-object p2, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {p2}, Lcom/living/emo/activity/BannerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/living/emo/activity/BannerActivity;->showToast(Ljava/lang/String;)V

    .line 113
    :cond_3
    iget p2, p1, Lcom/living/emo/bean/DataBean;->viewType:I

    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    .line 114
    iget-object p2, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {p2}, Lcom/living/emo/activity/BannerActivity;->playMusic()V

    .line 115
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    const-class v2, Lcom/living/emo/activity/DrumActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {v1, p2}, Lcom/living/emo/activity/BannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    :cond_4
    iget p1, p1, Lcom/living/emo/bean/DataBean;->viewType:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    .line 120
    iget-object p1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/BannerActivity;->playMusic()V

    .line 121
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    const-class v1, Lcom/living/emo/activity/HuntActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    iget-object p2, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {p2, p1}, Lcom/living/emo/activity/BannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    :cond_5
    iget-object p1, p0, Lcom/living/emo/activity/BannerActivity$3;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-static {p1}, Lcom/living/emo/activity/BannerActivity;->access$000(Lcom/living/emo/activity/BannerActivity;)Lcom/youth/banner/Banner;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->setEnabled(Z)V

    return-void
.end method
