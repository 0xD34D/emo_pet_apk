.class Lcom/living/emo/fragment/PhotoFragment$3;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Lcom/living/emo/view/PhotoDialogView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/PhotoFragment;->lambda$initEvent$1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/PhotoFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/PhotoFragment;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onOk(Landroid/app/Dialog;)V
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$900(Lcom/living/emo/fragment/PhotoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PhotoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Please make sure that your mobile device and EMO have been connected to the same network."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$1000(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/util/TcpServerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/TcpServerUtil;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$1000(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/util/TcpServerUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PhotoFragment;->access$200(Lcom/living/emo/fragment/PhotoFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/living/emo/util/TcpServerUtil;->starServer(I)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$300(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/activity/ToolPhotoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PhotoFragment;->access$000(Lcom/living/emo/fragment/PhotoFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v2}, Lcom/living/emo/fragment/PhotoFragment;->access$100(Lcom/living/emo/fragment/PhotoFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v3}, Lcom/living/emo/fragment/PhotoFragment;->access$200(Lcom/living/emo/fragment/PhotoFragment;)I

    move-result v3

    const-string v4, "syn"

    invoke-static {v4, v2, v3}, Lcom/living/emo/blebean/util/BleJsonUtil;->Photo(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/ToolPhotoActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    sget-object v1, Lcom/living/emo/fragment/PhotoFragment$State;->UPLOAD:Lcom/living/emo/fragment/PhotoFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/PhotoFragment;->access$702(Lcom/living/emo/fragment/PhotoFragment;Lcom/living/emo/fragment/PhotoFragment$State;)Lcom/living/emo/fragment/PhotoFragment$State;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PhotoFragment;->access$100(Lcom/living/emo/fragment/PhotoFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PhotoFragment;->access$200(Lcom/living/emo/fragment/PhotoFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 212
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$3;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {p1}, Lcom/living/emo/fragment/PhotoFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "processing"

    invoke-static {p1, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
