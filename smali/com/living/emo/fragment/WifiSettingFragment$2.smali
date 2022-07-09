.class Lcom/living/emo/fragment/WifiSettingFragment$2;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/WifiSettingFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
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

    .line 178
    iput-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$2;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;)V
    .locals 2

    .line 181
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;->getConnected()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "CONNECTED TO %1$s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/living/emo/fragment/WifiSettingFragment$2;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$100(Lcom/living/emo/fragment/WifiSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$2;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    sget-object v0, Lcom/living/emo/fragment/WifiSettingFragment$State;->CONNECTED:Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-static {p1, v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$200(Lcom/living/emo/fragment/WifiSettingFragment;Lcom/living/emo/fragment/WifiSettingFragment$State;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/WifiSettingFragment$2;->this$0:Lcom/living/emo/fragment/WifiSettingFragment;

    sget-object v0, Lcom/living/emo/fragment/WifiSettingFragment$State;->DIS_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-static {p1, v0}, Lcom/living/emo/fragment/WifiSettingFragment;->access$200(Lcom/living/emo/fragment/WifiSettingFragment;Lcom/living/emo/fragment/WifiSettingFragment$State;)V

    :goto_0
    return-void
.end method
