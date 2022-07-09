.class Lcom/living/emo/activity/ConnectActivity$5;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;


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

    .line 414
    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity$5;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;)V
    .locals 2

    .line 417
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/living/emo/bean/EmoUpdate;->setEmoVersion(I)V

    .line 418
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/living/emo/bean/EmoUpdate;->setEmoVersionName(Ljava/lang/String;)V

    return-void
.end method
