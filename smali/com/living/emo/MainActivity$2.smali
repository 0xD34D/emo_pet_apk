.class Lcom/living/emo/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/living/emo/view/RecognitionNameView$onDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/MainActivity;->askName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/MainActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/MainActivity;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 2

    .line 282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onCancelClick:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 284
    iget-object p1, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    const v0, 0x7f1000df

    invoke-virtual {p1, v0}, Lcom/living/emo/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$200(Lcom/living/emo/MainActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    const-string v1, "out"

    invoke-static {v1}, Lcom/living/emo/blebean/util/BleJsonUtil;->EditInfoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 286
    iget-object p1, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    sget-object v0, Lcom/living/emo/MainActivity$State;->OUT:Lcom/living/emo/MainActivity$State;

    invoke-static {p1, v0}, Lcom/living/emo/MainActivity;->access$302(Lcom/living/emo/MainActivity;Lcom/living/emo/MainActivity$State;)Lcom/living/emo/MainActivity$State;

    return-void
.end method

.method public onOkClick(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2

    .line 291
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onOkClick:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->ADD:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 293
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    const-string p2, "The name cannot exceed 20 bytes"

    invoke-virtual {p1, p2}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "^[a-zA-Z ]+$"

    .line 299
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object p1, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    const-string p2, "names can only be letters and spaces"

    invoke-virtual {p1, p2}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0, p2}, Lcom/living/emo/MainActivity;->access$400(Lcom/living/emo/MainActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object p1, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    const-string p2, "Sorry, you cannot enter such a name."

    invoke-virtual {p1, p2}, Lcom/living/emo/MainActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0, p2}, Lcom/living/emo/MainActivity;->access$502(Lcom/living/emo/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    const-string v1, "Waiting for EMO..."

    invoke-static {v0, v1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    invoke-static {p2}, Lcom/living/emo/blebean/util/BleJsonUtil;->EditInfoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 312
    iget-object v0, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$200(Lcom/living/emo/MainActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {p2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 313
    iget-object p2, p0, Lcom/living/emo/MainActivity$2;->this$0:Lcom/living/emo/MainActivity;

    sget-object v0, Lcom/living/emo/MainActivity$State;->UPDATE:Lcom/living/emo/MainActivity$State;

    invoke-static {p2, v0}, Lcom/living/emo/MainActivity;->access$302(Lcom/living/emo/MainActivity;Lcom/living/emo/MainActivity$State;)Lcom/living/emo/MainActivity$State;

    .line 314
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
