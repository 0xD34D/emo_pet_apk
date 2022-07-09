.class Lcom/living/emo/activity/ConnectActivity$6;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleCityResponseParse$Callback;


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

    .line 422
    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity$6;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;)V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$6;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$500(Lcom/living/emo/activity/ConnectActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/ConnectActivity$6;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v1}, Lcom/living/emo/activity/ConnectActivity;->access$000(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$6;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$500(Lcom/living/emo/activity/ConnectActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$6;->this$0:Lcom/living/emo/activity/ConnectActivity;

    const-string v1, "Bluetooth connection is successful"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/ConnectActivity;->showToast(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$6;->this$0:Lcom/living/emo/activity/ConnectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/living/emo/activity/ConnectActivity;->access$1202(Lcom/living/emo/activity/ConnectActivity;Z)Z

    .line 429
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/CityResponse$DataBean$CityBean;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$6;->this$0:Lcom/living/emo/activity/ConnectActivity;

    const-class v0, Lcom/living/emo/activity/CityActivity;

    invoke-static {p1, v0}, Lcom/living/emo/activity/ConnectActivity;->access$1900(Lcom/living/emo/activity/ConnectActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->timezone()[B

    move-result-object p1

    .line 433
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$6;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$000(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/ConnectActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    :goto_0
    return-void
.end method
