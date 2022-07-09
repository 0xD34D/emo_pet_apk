.class Lcom/living/emo/fragment/AlertFragment$4;
.super Ljava/lang/Object;
.source "AlertFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/AlertFragment;->onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/AlertFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/AlertFragment;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$500(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/fragment/AlertFragment$State;

    move-result-object v0

    sget-object v1, Lcom/living/emo/fragment/AlertFragment$State;->Set:Lcom/living/emo/fragment/AlertFragment$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;

    move-result-object v0

    const-string v1, "Set fail "

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$500(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/fragment/AlertFragment$State;

    move-result-object v0

    sget-object v1, Lcom/living/emo/fragment/AlertFragment$State;->Update:Lcom/living/emo/fragment/AlertFragment$State;

    if-ne v0, v1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;

    move-result-object v0

    const-string v1, "Update fail "

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;

    move-result-object v0

    const-string v1, "remove fail "

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    sget-object v1, Lcom/living/emo/fragment/AlertFragment$State;->None:Lcom/living/emo/fragment/AlertFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/AlertFragment;->access$502(Lcom/living/emo/fragment/AlertFragment;Lcom/living/emo/fragment/AlertFragment$State;)Lcom/living/emo/fragment/AlertFragment$State;

    .line 337
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;

    move-result-object v0

    const-string v1, "set fail "

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 338
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/AlertFragment;->access$700(Lcom/living/emo/fragment/AlertFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->alarm()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/ToolAlertActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public success()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$500(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/fragment/AlertFragment$State;

    move-result-object v0

    sget-object v1, Lcom/living/emo/fragment/AlertFragment$State;->Set:Lcom/living/emo/fragment/AlertFragment$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;

    move-result-object v0

    const-string v1, "Set success "

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$500(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/fragment/AlertFragment$State;

    move-result-object v0

    sget-object v1, Lcom/living/emo/fragment/AlertFragment$State;->Update:Lcom/living/emo/fragment/AlertFragment$State;

    if-ne v0, v1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;

    move-result-object v0

    const-string v1, "Update success "

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0, v2}, Lcom/living/emo/fragment/AlertFragment;->access$002(Lcom/living/emo/fragment/AlertFragment;I)I

    .line 316
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;

    move-result-object v0

    const-string v1, "remove success "

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    sget-object v1, Lcom/living/emo/fragment/AlertFragment$State;->None:Lcom/living/emo/fragment/AlertFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/AlertFragment;->access$502(Lcom/living/emo/fragment/AlertFragment;Lcom/living/emo/fragment/AlertFragment$State;)Lcom/living/emo/fragment/AlertFragment$State;

    .line 320
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment$4;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/AlertFragment;->access$700(Lcom/living/emo/fragment/AlertFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->alarm()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/ToolAlertActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method
