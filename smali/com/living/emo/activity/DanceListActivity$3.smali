.class Lcom/living/emo/activity/DanceListActivity$3;
.super Ljava/lang/Object;
.source "DanceListActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleDanceListResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DanceListActivity;->onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DanceListActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DanceListActivity;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/living/emo/activity/DanceListActivity$3;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(I)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$3;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DanceListActivity;->access$500(Lcom/living/emo/activity/DanceListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/DanceListActivity$3;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DanceListActivity;->access$400(Lcom/living/emo/activity/DanceListActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    if-gtz p1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$3;->this$0:Lcom/living/emo/activity/DanceListActivity;

    const-string v1, "Failed to sync data"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/DanceListActivity;->showToast(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$3;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DanceListActivity;->access$000(Lcom/living/emo/activity/DanceListActivity;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$3;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DanceListActivity;->access$600(Lcom/living/emo/activity/DanceListActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:unlocked(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
