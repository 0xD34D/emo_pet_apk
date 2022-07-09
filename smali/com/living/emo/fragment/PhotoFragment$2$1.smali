.class Lcom/living/emo/fragment/PhotoFragment$2$1;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Lcom/living/emo/view/PhotoDialogView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/PhotoFragment$2;->onDelete(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/fragment/PhotoFragment$2;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/PhotoFragment$2;Ljava/io/File;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$2$1;->this$1:Lcom/living/emo/fragment/PhotoFragment$2;

    iput-object p2, p0, Lcom/living/emo/fragment/PhotoFragment$2$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onOk(Landroid/app/Dialog;)V
    .locals 4

    const-string v0, "tag"

    const-string v1, "this is delete"

    .line 149
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$2$1;->this$1:Lcom/living/emo/fragment/PhotoFragment$2;

    iget-object v0, v0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$300(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/activity/ToolPhotoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment$2$1;->this$1:Lcom/living/emo/fragment/PhotoFragment$2;

    iget-object v1, v1, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PhotoFragment;->access$000(Lcom/living/emo/fragment/PhotoFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/fragment/PhotoFragment$2$1;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "del"

    invoke-static {v3, v2}, Lcom/living/emo/blebean/util/BleJsonUtil;->Photo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/ToolPhotoActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 151
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$2$1;->this$1:Lcom/living/emo/fragment/PhotoFragment$2;

    iget-object v0, v0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    sget-object v1, Lcom/living/emo/fragment/PhotoFragment$State;->DELETE:Lcom/living/emo/fragment/PhotoFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/PhotoFragment;->access$702(Lcom/living/emo/fragment/PhotoFragment;Lcom/living/emo/fragment/PhotoFragment$State;)Lcom/living/emo/fragment/PhotoFragment$State;

    .line 152
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$2$1;->this$1:Lcom/living/emo/fragment/PhotoFragment$2;

    iget-object v0, v0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PhotoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "processing"

    invoke-static {v0, v1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
