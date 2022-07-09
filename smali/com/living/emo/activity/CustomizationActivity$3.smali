.class Lcom/living/emo/activity/CustomizationActivity$3;
.super Ljava/lang/Object;
.source "CustomizationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/CustomizationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/CustomizationActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/CustomizationActivity;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity$3;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 165
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 166
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$3;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/CustomizationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/CustomizationActivity;->showToast(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$3;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/living/emo/activity/CustomizationActivity$3;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    const-class v3, Lcom/living/emo/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/CustomizationActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$3;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/CustomizationActivity;->finish()V

    return-void
.end method
