.class Lcom/living/emo/fragment/RecognitionFragment$3$1;
.super Ljava/lang/Object;
.source "RecognitionFragment.java"

# interfaces
.implements Lcom/living/emo/view/RecognitionNameView$onDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/RecognitionFragment$3;->addClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/fragment/RecognitionFragment$3;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/RecognitionFragment$3;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$3$1;->this$1:Lcom/living/emo/fragment/RecognitionFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 2

    .line 192
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCancelClick:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 194
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    return-void
.end method

.method public onOkClick(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2

    .line 199
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onOkClick:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->ADD:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 201
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$3$1;->this$1:Lcom/living/emo/fragment/RecognitionFragment$3;

    iget-object p1, p1, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object p1

    const-string p2, "The name cannot exceed 20 bytes"

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "^[a-zA-Z ]+$"

    .line 207
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$3$1;->this$1:Lcom/living/emo/fragment/RecognitionFragment$3;

    iget-object p1, p1, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object p1

    const-string p2, "names can only be letters and spaces"

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$3$1;->this$1:Lcom/living/emo/fragment/RecognitionFragment$3;

    iget-object v0, v0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {v0, p2}, Lcom/living/emo/fragment/RecognitionFragment;->access$100(Lcom/living/emo/fragment/RecognitionFragment;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$3$1;->this$1:Lcom/living/emo/fragment/RecognitionFragment$3;

    iget-object p1, p1, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object p1

    const-string p2, "Sorry, you cannot enter such a name."

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 216
    :cond_2
    invoke-static {p2}, Lcom/living/emo/blebean/util/BleJsonUtil;->Recognition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 217
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$3$1;->this$1:Lcom/living/emo/fragment/RecognitionFragment$3;

    iget-object v0, v0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment$3$1;->this$1:Lcom/living/emo/fragment/RecognitionFragment$3;

    iget-object v1, v1, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/RecognitionFragment;->access$200(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {p2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/living/emo/activity/RecognitionActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 218
    iget-object p2, p0, Lcom/living/emo/fragment/RecognitionFragment$3$1;->this$1:Lcom/living/emo/fragment/RecognitionFragment$3;

    iget-object p2, p2, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-virtual {p2}, Lcom/living/emo/fragment/RecognitionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/living/emo/view/WaitScanView;->show(Landroid/app/Activity;)V

    .line 219
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
