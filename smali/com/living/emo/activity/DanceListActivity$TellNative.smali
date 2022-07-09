.class Lcom/living/emo/activity/DanceListActivity$TellNative;
.super Ljava/lang/Object;
.source "DanceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/DanceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TellNative"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DanceListActivity;


# direct methods
.method private constructor <init>(Lcom/living/emo/activity/DanceListActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/living/emo/activity/DanceListActivity$TellNative;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/activity/DanceListActivity;Lcom/living/emo/activity/DanceListActivity$1;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/living/emo/activity/DanceListActivity$TellNative;-><init>(Lcom/living/emo/activity/DanceListActivity;)V

    return-void
.end method


# virtual methods
.method public later()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$TellNative;->this$0:Lcom/living/emo/activity/DanceListActivity;

    const v1, 0x7f100083

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/DanceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/DanceListActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public play(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/activity/DanceListActivity$TellNative;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DanceListActivity;->access$200(Lcom/living/emo/activity/DanceListActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hello"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$TellNative;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DanceListActivity;->access$200(Lcom/living/emo/activity/DanceListActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    .line 157
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$TellNative;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DanceListActivity;->access$300(Lcom/living/emo/activity/DanceListActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const-string v2, "play"

    invoke-static {v2, p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->animRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/DanceListActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stop(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/activity/DanceListActivity$TellNative;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DanceListActivity;->access$200(Lcom/living/emo/activity/DanceListActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hello"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$TellNative;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DanceListActivity;->access$200(Lcom/living/emo/activity/DanceListActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    .line 168
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$TellNative;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DanceListActivity;->access$300(Lcom/living/emo/activity/DanceListActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const-string v2, "stop"

    invoke-static {v2, p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->animRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/DanceListActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
