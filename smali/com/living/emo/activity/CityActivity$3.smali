.class Lcom/living/emo/activity/CityActivity$3;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleTimezoneResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/CityActivity;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/CityActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/CityActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/living/emo/activity/CityActivity$3;->this$0:Lcom/living/emo/activity/CityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/living/emo/activity/CityActivity$3;->this$0:Lcom/living/emo/activity/CityActivity;

    const-class v0, Lcom/living/emo/activity/TimezoneActivity;

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/CityActivity;->goToActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->network()[B

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity$3;->this$0:Lcom/living/emo/activity/CityActivity;

    invoke-static {v0}, Lcom/living/emo/activity/CityActivity;->access$000(Lcom/living/emo/activity/CityActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/CityActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    :goto_0
    return-void
.end method
