.class Lcom/living/emo/fragment/WifiSettingFragment$1;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/WifiSettingFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/WifiSettingFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/WifiSettingFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$1;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$1;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$000(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[^0-9a-zA-Z!@#$%^&*()_+-=?., /:;\'\"]"

    .line 151
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$1;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$000(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$1;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->access$000(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
