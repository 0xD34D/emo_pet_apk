.class Lcom/living/emo/fragment/PhotoFragment$4;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Lcom/living/emo/view/PhotoDialogView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/PhotoFragment;->lambda$initEvent$2(Landroid/view/View;)V
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

    .line 220
    iput-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$4;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onOk(Landroid/app/Dialog;)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$4;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$300(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/activity/ToolPhotoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment$4;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PhotoFragment;->access$000(Lcom/living/emo/fragment/PhotoFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const-string v2, "play"

    invoke-static {v2}, Lcom/living/emo/blebean/util/BleJsonUtil;->Photo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/ToolPhotoActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 230
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 231
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$4;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {p1}, Lcom/living/emo/fragment/PhotoFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "processing"

    invoke-static {p1, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
