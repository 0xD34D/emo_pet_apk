.class Lcom/living/emo/activity/CityActivity$2;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultParse$Callback;


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

    .line 146
    iput-object p1, p0, Lcom/living/emo/activity/CityActivity$2;->this$0:Lcom/living/emo/activity/CityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity$2;->this$0:Lcom/living/emo/activity/CityActivity;

    iget-object v0, v0, Lcom/living/emo/activity/CityActivity;->mCitySet:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity$2;->this$0:Lcom/living/emo/activity/CityActivity;

    const-string v1, "City setting failed, please reset"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/CityActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 3

    .line 149
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->timezone()[B

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/living/emo/activity/CityActivity$2;->this$0:Lcom/living/emo/activity/CityActivity;

    invoke-static {v1}, Lcom/living/emo/activity/CityActivity;->access$000(Lcom/living/emo/activity/CityActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/CityActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 151
    iget-object v0, p0, Lcom/living/emo/activity/CityActivity$2;->this$0:Lcom/living/emo/activity/CityActivity;

    const-string v1, "City set up successfully"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/CityActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method
