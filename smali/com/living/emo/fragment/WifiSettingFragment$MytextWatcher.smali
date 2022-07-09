.class Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/fragment/WifiSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MytextWatcher"
.end annotation


# instance fields
.field private len:I

.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/living/emo/fragment/WifiSettingFragment;


# direct methods
.method public constructor <init>(Lcom/living/emo/fragment/WifiSettingFragment;Landroid/content/Context;Landroid/widget/EditText;I)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p2, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->mContext:Landroid/content/Context;

    .line 396
    iput-object p3, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->mEditText:Landroid/widget/EditText;

    .line 397
    iput p4, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->len:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 414
    array-length v0, p1

    iget v1, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->len:I

    if-le v0, v1, :cond_2

    .line 415
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 416
    iget v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->len:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 417
    :goto_0
    iget v3, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->len:I

    if-ge v2, v3, :cond_0

    .line 418
    aget-byte v3, p1, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 420
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterTextChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAG"

    invoke-static {v2, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$1200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 428
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 429
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$MytextWatcher;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-virtual {p1}, Lcom/living/emo/fragment/WifiSettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Your input exceeds the maximum length allowed."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
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
