.class Lcom/living/emo/fragment/RecognitionFragment$2;
.super Ljava/lang/Object;
.source "RecognitionFragment.java"

# interfaces
.implements Lcom/living/emo/view/RecognitionNameView$onDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/RecognitionFragment;->lambda$initEvent$1(Landroid/view/View;)V
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

    .line 100
    iput-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$2;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 2

    .line 103
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCancelClick:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 105
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onOkClick(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 4

    .line 111
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->RENAME:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 112
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onOkClick:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$2;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object p1

    const-string p2, "Name cannot be empty"

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$2;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object p1

    const-string p2, "The name cannot exceed 20 bytes"

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "^[a-zA-Z ]+$"

    .line 123
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$2;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object p1

    const-string p2, "names can only be letters and spaces"

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$2;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/RecognitionFragment;->currRecog:Lcom/living/emo/bean/RecognitionBean;

    invoke-virtual {v0}, Lcom/living/emo/bean/RecognitionBean;->getId()Ljava/lang/String;

    move-result-object v0

    .line 129
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment$2;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {v1, p2}, Lcom/living/emo/fragment/RecognitionFragment;->access$100(Lcom/living/emo/fragment/RecognitionFragment;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$2;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object p1

    const-string p2, "Sorry, you cannot enter such a name."

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 134
    :cond_3
    invoke-static {v0, p2}, Lcom/living/emo/blebean/util/BleJsonUtil;->Recognition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 135
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$2;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment$2;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/RecognitionFragment;->access$200(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {p2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/living/emo/activity/RecognitionActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 136
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
