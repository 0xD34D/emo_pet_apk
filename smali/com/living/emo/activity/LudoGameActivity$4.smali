.class Lcom/living/emo/activity/LudoGameActivity$4;
.super Ljava/lang/Object;
.source "LudoGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/LudoGameActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/LudoGameActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/LudoGameActivity;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$4;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 396
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$4;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {p1}, Lcom/living/emo/activity/LudoGameActivity;->access$1600(Lcom/living/emo/activity/LudoGameActivity;)Lcom/living/emo/util/AudioUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/AudioUtil;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 397
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$4;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {p1}, Lcom/living/emo/activity/LudoGameActivity;->access$1600(Lcom/living/emo/activity/LudoGameActivity;)Lcom/living/emo/util/AudioUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$4;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    const v1, 0x7f0f0007

    invoke-virtual {p1, v0, v1}, Lcom/living/emo/util/AudioUtil;->play(Landroid/content/Context;I)V

    .line 398
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$4;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {p1}, Lcom/living/emo/activity/LudoGameActivity;->access$1700(Lcom/living/emo/activity/LudoGameActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08011c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$4;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {p1}, Lcom/living/emo/activity/LudoGameActivity;->access$1600(Lcom/living/emo/activity/LudoGameActivity;)Lcom/living/emo/util/AudioUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/AudioUtil;->stopPlay()V

    .line 401
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$4;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {p1}, Lcom/living/emo/activity/LudoGameActivity;->access$1700(Lcom/living/emo/activity/LudoGameActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08011b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
