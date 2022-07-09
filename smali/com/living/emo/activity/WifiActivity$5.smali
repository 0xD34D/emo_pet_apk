.class Lcom/living/emo/activity/WifiActivity$5;
.super Ljava/lang/Object;
.source "WifiActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/WifiActivity;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/WifiActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/WifiActivity;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity$5;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;)V
    .locals 3

    .line 355
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/bean/EmoUpdate;->setEmoVersionName(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/living/emo/bean/EmoUpdate;->setEmoVersion(I)V

    .line 357
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emo version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  emo num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
