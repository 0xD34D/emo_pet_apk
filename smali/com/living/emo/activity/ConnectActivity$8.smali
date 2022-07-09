.class Lcom/living/emo/activity/ConnectActivity$8;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/ConnectActivity;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/ConnectActivity;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity$8;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;)V
    .locals 1

    .line 453
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;->getConnected()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 454
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$8;->this$0:Lcom/living/emo/activity/ConnectActivity;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-static {p1, v0}, Lcom/living/emo/activity/ConnectActivity;->access$1900(Lcom/living/emo/activity/ConnectActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$8;->this$0:Lcom/living/emo/activity/ConnectActivity;

    const-class v0, Lcom/living/emo/activity/WifiActivity;

    invoke-static {p1, v0}, Lcom/living/emo/activity/ConnectActivity;->access$1900(Lcom/living/emo/activity/ConnectActivity;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method
