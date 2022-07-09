.class Lcom/living/emo/fragment/FrmareSettingFragment$1;
.super Ljava/lang/Object;
.source "FrmareSettingFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/FrmareSettingFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

.field final synthetic val$instance:Lcom/living/emo/bean/EmoUpdate;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/FrmareSettingFragment;Lcom/living/emo/bean/EmoUpdate;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    iput-object p2, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->val$instance:Lcom/living/emo/bean/EmoUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->val$instance:Lcom/living/emo/bean/EmoUpdate;

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/living/emo/bean/EmoUpdate;->setEmoVersion(I)V

    .line 125
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->val$instance:Lcom/living/emo/bean/EmoUpdate;

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/living/emo/bean/EmoUpdate;->setEmoVersionName(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/EmoUpdate;->isUpdate()Z

    move-result p1

    const-string v0, "Current Version : "

    if-eqz p1, :cond_0

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Latest Version : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->val$instance:Lcom/living/emo/bean/EmoUpdate;

    invoke-virtual {v1}, Lcom/living/emo/bean/EmoUpdate;->getServerVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object v1, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$000(Lcom/living/emo/fragment/FrmareSettingFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->val$instance:Lcom/living/emo/bean/EmoUpdate;

    invoke-virtual {v0}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$100(Lcom/living/emo/fragment/FrmareSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    sget-object v0, Lcom/living/emo/fragment/FrmareSettingFragment$State;->BTN:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    invoke-static {p1, v0}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$200(Lcom/living/emo/fragment/FrmareSettingFragment;Lcom/living/emo/fragment/FrmareSettingFragment$State;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->val$instance:Lcom/living/emo/bean/EmoUpdate;

    invoke-virtual {v0}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$300(Lcom/living/emo/fragment/FrmareSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment$1;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    sget-object v0, Lcom/living/emo/fragment/FrmareSettingFragment$State;->SHOW:Lcom/living/emo/fragment/FrmareSettingFragment$State;

    invoke-static {p1, v0}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$200(Lcom/living/emo/fragment/FrmareSettingFragment;Lcom/living/emo/fragment/FrmareSettingFragment$State;)V

    :goto_0
    return-void
.end method
