.class Lcom/living/emo/fragment/WifiSettingFragment$6$1;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/WifiSettingFragment$6;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

.field final synthetic val$listUserHashMap:Ljava/util/Map;

.field final synthetic val$wifiList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/WifiSettingFragment$6;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

    iput-object p2, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->val$wifiList:[Ljava/lang/String;

    iput-object p3, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->val$listUserHashMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->val$wifiList:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 328
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEvent: mSsidBytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mSsidBytes"

    invoke-static {v2, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    array-length v0, v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

    iget-object p1, p1, Lcom/living/emo/fragment/WifiSettingFragment$6;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-virtual {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Your input exceeds the maximum length allowed."

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->val$listUserHashMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

    iget-object v1, v1, Lcom/living/emo/fragment/WifiSettingFragment$6;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$800(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object p2, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

    iget-object p2, p2, Lcom/living/emo/fragment/WifiSettingFragment$6;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/WifiSettingFragment;->access$000(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 338
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

    iget-object p1, p1, Lcom/living/emo/fragment/WifiSettingFragment$6;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$800(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 339
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

    iget-object p1, p1, Lcom/living/emo/fragment/WifiSettingFragment$6;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$300(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 340
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

    iget-object p1, p1, Lcom/living/emo/fragment/WifiSettingFragment$6;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    iget-object p2, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

    iget-object p2, p2, Lcom/living/emo/fragment/WifiSettingFragment$6;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-virtual {p2}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$6$1;->this$1:Lcom/living/emo/fragment/WifiSettingFragment$6;

    iget-object v0, v0, Lcom/living/emo/fragment/WifiSettingFragment$6;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$800(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$1000(Lcom/living/emo/fragment/WifiSettingFragment;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
