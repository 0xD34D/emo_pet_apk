.class Lcom/living/emo/activity/LudoGameActivity$3;
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

    .line 381
    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$3;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 384
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$3;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {p1}, Lcom/living/emo/activity/LudoGameActivity;->access$1500(Lcom/living/emo/activity/LudoGameActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const-string p1, "onclick:"

    const-string v0, "this is tuichu"

    .line 385
    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$3;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {p1}, Lcom/living/emo/activity/LudoGameActivity;->access$1400(Lcom/living/emo/activity/LudoGameActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$3;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {p1}, Lcom/living/emo/activity/LudoGameActivity;->access$1400(Lcom/living/emo/activity/LudoGameActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 388
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$3;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1402(Lcom/living/emo/activity/LudoGameActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$3;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/LudoGameActivity;->finish()V

    return-void
.end method
