.class Lcom/living/emo/activity/WifiActivity$1$1;
.super Ljava/lang/Object;
.source "WifiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/WifiActivity$1;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/activity/WifiActivity$1;

.field final synthetic val$listUserHashMap:Ljava/util/Map;

.field final synthetic val$wifiList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/WifiActivity$1;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity$1$1;->this$1:Lcom/living/emo/activity/WifiActivity$1;

    iput-object p2, p0, Lcom/living/emo/activity/WifiActivity$1$1;->val$wifiList:[Ljava/lang/String;

    iput-object p3, p0, Lcom/living/emo/activity/WifiActivity$1$1;->val$listUserHashMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$1$1;->val$wifiList:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity$1$1;->this$1:Lcom/living/emo/activity/WifiActivity$1;

    iget-object p1, p1, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    const-string p2, "Your input exceeds the maximum length allowed."

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/WifiActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$1$1;->val$listUserHashMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity$1$1;->this$1:Lcom/living/emo/activity/WifiActivity$1;

    iget-object v1, v1, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v1}, Lcom/living/emo/activity/WifiActivity;->access$200(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p2, p0, Lcom/living/emo/activity/WifiActivity$1$1;->this$1:Lcom/living/emo/activity/WifiActivity$1;

    iget-object p2, p2, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {p2}, Lcom/living/emo/activity/WifiActivity;->access$300(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p2, p0, Lcom/living/emo/activity/WifiActivity$1$1;->this$1:Lcom/living/emo/activity/WifiActivity$1;

    iget-object p2, p2, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {p2}, Lcom/living/emo/activity/WifiActivity;->access$400(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity$1$1;->this$1:Lcom/living/emo/activity/WifiActivity$1;

    iget-object p1, p1, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {p1}, Lcom/living/emo/activity/WifiActivity;->access$200(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 142
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity$1$1;->this$1:Lcom/living/emo/activity/WifiActivity$1;

    iget-object p1, p1, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    iget-object p2, p0, Lcom/living/emo/activity/WifiActivity$1$1;->this$1:Lcom/living/emo/activity/WifiActivity$1;

    iget-object p2, p2, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$1$1;->this$1:Lcom/living/emo/activity/WifiActivity$1;

    iget-object v0, v0, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WifiActivity;->access$200(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/living/emo/activity/WifiActivity;->access$500(Lcom/living/emo/activity/WifiActivity;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
