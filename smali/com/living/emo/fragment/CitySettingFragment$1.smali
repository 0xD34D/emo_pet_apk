.class Lcom/living/emo/fragment/CitySettingFragment$1;
.super Ljava/lang/Object;
.source "CitySettingFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/CitySettingFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/CitySettingFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/CitySettingFragment;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment$1;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment$1;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/CitySettingFragment;->mCityName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[^a-zA-Z ]"

    .line 155
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 156
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const-string p3, ""

    .line 157
    invoke-virtual {p2, p3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 158
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "str::"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment$1;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    invoke-virtual {p1}, Lcom/living/emo/fragment/CitySettingFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/living/emo/fragment/CitySettingFragment$1;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    const p4, 0x7f100062

    invoke-virtual {p3, p4}, Lcom/living/emo/fragment/CitySettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p1, p3, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 161
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment$1;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/CitySettingFragment;->mCityName:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/living/emo/fragment/CitySettingFragment$1;->this$0:Lcom/living/emo/fragment/CitySettingFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/CitySettingFragment;->mCityName:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
