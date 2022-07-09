.class Lcom/living/emo/activity/LudoGameActivity$1;
.super Ljava/lang/Object;
.source "LudoGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/LudoGameActivity;
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

    .line 82
    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$1;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$1;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$1;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$1;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/LudoGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/LudoGameActivity;->showToast(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$1;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/LudoGameActivity;->finish()V

    return-void
.end method
