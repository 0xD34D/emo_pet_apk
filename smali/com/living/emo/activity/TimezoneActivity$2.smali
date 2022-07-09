.class Lcom/living/emo/activity/TimezoneActivity$2;
.super Ljava/lang/Object;
.source "TimezoneActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/TimezoneActivity;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/TimezoneActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/TimezoneActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/living/emo/activity/TimezoneActivity$2;->this$0:Lcom/living/emo/activity/TimezoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;)V
    .locals 1

    .line 111
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;->getConnected()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/living/emo/activity/TimezoneActivity$2;->this$0:Lcom/living/emo/activity/TimezoneActivity;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/TimezoneActivity;->goToActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/TimezoneActivity$2;->this$0:Lcom/living/emo/activity/TimezoneActivity;

    const-class v0, Lcom/living/emo/activity/WifiActivity;

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/TimezoneActivity;->goToActivity(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method
