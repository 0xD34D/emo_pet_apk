.class Lcom/living/emo/fragment/RecognitionFragment$1;
.super Ljava/lang/Object;
.source "RecognitionFragment.java"

# interfaces
.implements Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/RecognitionFragment;->lambda$initEvent$0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/RecognitionFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/RecognitionFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$1;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;)V
    .locals 1

    .line 71
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 72
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onOk(Landroid/app/Dialog;)V
    .locals 3

    .line 77
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    sget-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    if-eq v0, v1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$1;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/RecognitionFragment;->currRecog:Lcom/living/emo/bean/RecognitionBean;

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->DEL:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    const/4 v0, 0x2

    .line 83
    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment$1;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    iget-object v1, v1, Lcom/living/emo/fragment/RecognitionFragment;->currRecog:Lcom/living/emo/bean/RecognitionBean;

    invoke-virtual {v1}, Lcom/living/emo/bean/RecognitionBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Recognition(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment$1;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/fragment/RecognitionFragment$1;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {v2}, Lcom/living/emo/fragment/RecognitionFragment;->access$200(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/RecognitionActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 87
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$1;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-virtual {p1}, Lcom/living/emo/fragment/RecognitionFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "processing"

    invoke-static {p1, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
