.class Lcom/living/emo/fragment/LightFragment$6;
.super Ljava/lang/Object;
.source "LightFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/LightFragment;->onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/LightFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/LightFragment;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$400(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/fragment/LightFragment$State;

    move-result-object v0

    sget-object v1, Lcom/living/emo/fragment/LightFragment$State;->UNBIND:Lcom/living/emo/fragment/LightFragment$State;

    if-eq v0, v1, :cond_2

    .line 241
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$700(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$700(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$800(Lcom/living/emo/fragment/LightFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$1100(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$700(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$700(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$800(Lcom/living/emo/fragment/LightFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$900(Lcom/living/emo/fragment/LightFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->setOn(I)V

    .line 246
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/fragment/LightFragment;->access$702(Lcom/living/emo/fragment/LightFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/living/emo/fragment/LightFragment;->access$802(Lcom/living/emo/fragment/LightFragment;I)I

    .line 248
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/LightFragment;->access$1102(Lcom/living/emo/fragment/LightFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0, v2}, Lcom/living/emo/fragment/LightFragment;->access$902(Lcom/living/emo/fragment/LightFragment;I)I

    .line 250
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$000(Lcom/living/emo/fragment/LightFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 251
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$600(Lcom/living/emo/fragment/LightFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$500(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->light()[B

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$200(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/activity/ToolLightActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v3}, Lcom/living/emo/fragment/LightFragment;->access$100(Lcom/living/emo/fragment/LightFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/living/emo/activity/ToolLightActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 254
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$300(Lcom/living/emo/fragment/LightFragment;)V

    .line 255
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$200(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/activity/ToolLightActivity;

    move-result-object v0

    const-string v1, "operation failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public success()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$400(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/fragment/LightFragment$State;

    move-result-object v0

    sget-object v1, Lcom/living/emo/fragment/LightFragment$State;->UNBIND:Lcom/living/emo/fragment/LightFragment$State;

    if-eq v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/fragment/LightFragment;->access$702(Lcom/living/emo/fragment/LightFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/living/emo/fragment/LightFragment;->access$802(Lcom/living/emo/fragment/LightFragment;I)I

    .line 224
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/LightFragment;->access$1102(Lcom/living/emo/fragment/LightFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0, v2}, Lcom/living/emo/fragment/LightFragment;->access$902(Lcom/living/emo/fragment/LightFragment;I)I

    .line 226
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$1300(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/adapter/LightListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    iget-object v1, v1, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/LightListAdapter;->setLightData(Ljava/util/ArrayList;)V

    .line 227
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$000(Lcom/living/emo/fragment/LightFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 228
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$600(Lcom/living/emo/fragment/LightFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$500(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 229
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$200(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/activity/ToolLightActivity;

    move-result-object v0

    const-string v1, "Operation successful"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->light()[B

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$200(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/activity/ToolLightActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v2}, Lcom/living/emo/fragment/LightFragment;->access$100(Lcom/living/emo/fragment/LightFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/ToolLightActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 233
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$6;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$300(Lcom/living/emo/fragment/LightFragment;)V

    :goto_0
    return-void
.end method
