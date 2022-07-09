.class Lcom/living/emo/activity/WifiActivity$7;
.super Ljava/lang/Object;
.source "WifiActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleWifiRequestParse$Callback;


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

    .line 385
    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 0

    .line 436
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 389
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "emo result 1"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 392
    :cond_0
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 393
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WifiActivity;->access$100(Lcom/living/emo/activity/WifiActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    iget-object v1, v1, Lcom/living/emo/activity/WifiActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 395
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 396
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;

    invoke-virtual {v2}, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;->getSsid()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 399
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;

    invoke-virtual {v2}, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;->getSsid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 403
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity$7;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Choose a Wifi"

    .line 405
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 407
    new-instance v1, Lcom/living/emo/activity/WifiActivity$7$1;

    invoke-direct {v1, p0, v0}, Lcom/living/emo/activity/WifiActivity$7$1;-><init>(Lcom/living/emo/activity/WifiActivity$7;[Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    return-void
.end method
