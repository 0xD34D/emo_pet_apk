.class Lcom/living/emo/activity/WifiActivity$1;
.super Ljava/lang/Object;
.source "WifiActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/WifiActivity;->initEvents()V
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

    .line 105
    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_2

    .line 111
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersion()I

    move-result p1

    const/16 p2, 0x12

    if-lt p1, p2, :cond_0

    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/EmoUpdate;->getEmoVersionName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1.2.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    const-string p2, "Obtaining available Wi-Fi from EMO\u2026"

    invoke-static {p1, p2}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {p1}, Lcom/living/emo/activity/WifiActivity;->access$000(Lcom/living/emo/activity/WifiActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object p2

    const-string v0, "start"

    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->wifiRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/living/emo/activity/WifiActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 114
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-static {p1}, Lcom/living/emo/activity/WifiActivity;->access$100(Lcom/living/emo/activity/WifiActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    iget-object p2, p2, Lcom/living/emo/activity/WifiActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 116
    :cond_0
    invoke-static {}, Lcom/living/emo/util/DbManager;->getListUserHashMap()Ljava/util/Map;

    move-result-object p1

    .line 117
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 121
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity$1;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Choose a Wifi"

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 128
    new-instance v1, Lcom/living/emo/activity/WifiActivity$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/living/emo/activity/WifiActivity$1$1;-><init>(Lcom/living/emo/activity/WifiActivity$1;[Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_1
    return-void
.end method
