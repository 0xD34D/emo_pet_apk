.class Lcom/living/emo/fragment/WifiSettingFragment$4$1;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/WifiSettingFragment$4;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

.field final synthetic val$wifiList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/WifiSettingFragment$4;[Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iput-object p2, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->val$wifiList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->val$wifiList:[Ljava/lang/String;

    aget-object p1, p1, p2

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 244
    array-length p2, p2

    const/16 v0, 0x1f

    if-le p2, v0, :cond_0

    .line 245
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iget-object p1, p1, Lcom/living/emo/fragment/WifiSettingFragment$4;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-virtual {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Your input exceeds the maximum length allowed."

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 248
    :cond_0
    invoke-static {p1}, Lcom/living/emo/util/DbManager;->selectUserByssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 249
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iget-object v0, v0, Lcom/living/emo/fragment/WifiSettingFragment$4;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$800(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iget-object v0, v0, Lcom/living/emo/fragment/WifiSettingFragment$4;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$800(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 251
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iget-object p1, p1, Lcom/living/emo/fragment/WifiSettingFragment$4;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$000(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    .line 253
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iget-object p1, p1, Lcom/living/emo/fragment/WifiSettingFragment$4;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$000(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iget-object p1, p1, Lcom/living/emo/fragment/WifiSettingFragment$4;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$300(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iget-object p1, p1, Lcom/living/emo/fragment/WifiSettingFragment$4;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    iget-object p2, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iget-object p2, p2, Lcom/living/emo/fragment/WifiSettingFragment$4;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-virtual {p2}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$4$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$4;

    iget-object v0, v0, Lcom/living/emo/fragment/WifiSettingFragment$4;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$900(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$1000(Lcom/living/emo/fragment/WifiSettingFragment;Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    return-void
.end method
