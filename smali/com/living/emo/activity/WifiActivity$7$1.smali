.class Lcom/living/emo/activity/WifiActivity$7$1;
.super Ljava/lang/Object;
.source "WifiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/WifiActivity$7;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/activity/WifiActivity$7;

.field final synthetic val$wifiList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/WifiActivity$7;[Ljava/lang/String;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iput-object p2, p0, Lcom/living/emo/activity/WifiActivity$7$1;->val$wifiList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$7$1;->val$wifiList:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 411
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 412
    array-length v0, v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iget-object p1, p1, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    const-string p2, "Your input exceeds the maximum length allowed."

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/WifiActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 416
    :cond_0
    invoke-static {p2}, Lcom/living/emo/util/DbManager;->selectUserByssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iget-object v1, v1, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v1}, Lcom/living/emo/activity/WifiActivity;->access$200(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iget-object v1, v1, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v1}, Lcom/living/emo/activity/WifiActivity;->access$200(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 419
    iget-object p2, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iget-object p2, p2, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {p2}, Lcom/living/emo/activity/WifiActivity;->access$300(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    .line 421
    iget-object p2, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iget-object p2, p2, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {p2}, Lcom/living/emo/activity/WifiActivity;->access$300(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object p2, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iget-object p2, p2, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {p2}, Lcom/living/emo/activity/WifiActivity;->access$400(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 424
    iget-object p2, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iget-object p2, p2, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iget-object v0, v0, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity$7$1;->this$1:Lcom/living/emo/activity/WifiActivity$7;

    iget-object v1, v1, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    const v2, 0x7f090371

    invoke-virtual {v1, v2}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/living/emo/activity/WifiActivity;->access$500(Lcom/living/emo/activity/WifiActivity;Landroid/content/Context;Landroid/view/View;)V

    .line 426
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
