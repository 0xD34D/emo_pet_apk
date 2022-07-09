.class Lcom/living/emo/fragment/LightFragment$4;
.super Ljava/lang/Object;
.source "LightFragment.java"

# interfaces
.implements Lcom/living/emo/view/LightRename$onDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/LightFragment;->askForName(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/LightFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/LightFragment;I)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    iput p2, p0, Lcom/living/emo/fragment/LightFragment$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0

    .line 176
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onOkClick(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    sget-object v1, Lcom/living/emo/fragment/LightFragment$State;->RENAME:Lcom/living/emo/fragment/LightFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/LightFragment;->access$402(Lcom/living/emo/fragment/LightFragment;Lcom/living/emo/fragment/LightFragment$State;)Lcom/living/emo/fragment/LightFragment$State;

    .line 183
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$000(Lcom/living/emo/fragment/LightFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 184
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$600(Lcom/living/emo/fragment/LightFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$500(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/living/emo/fragment/LightFragment$4;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    .line 186
    invoke-virtual {v0}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getId()I

    move-result v2

    invoke-static {v2, p2}, Lcom/living/emo/blebean/util/BleJsonUtil;->lightRename(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v0, p2}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->setName(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/LightFragment;->access$200(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/activity/ToolLightActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$100(Lcom/living/emo/fragment/LightFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/living/emo/activity/ToolLightActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 190
    iget-object p2, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    const-string v0, "rename"

    invoke-static {p2, v0}, Lcom/living/emo/fragment/LightFragment;->access$702(Lcom/living/emo/fragment/LightFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    iget-object p2, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    iget v0, p0, Lcom/living/emo/fragment/LightFragment$4;->val$position:I

    invoke-static {p2, v0}, Lcom/living/emo/fragment/LightFragment;->access$802(Lcom/living/emo/fragment/LightFragment;I)I

    .line 192
    iget-object p2, p0, Lcom/living/emo/fragment/LightFragment$4;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {p2, v1}, Lcom/living/emo/fragment/LightFragment;->access$1102(Lcom/living/emo/fragment/LightFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
