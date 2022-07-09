.class Lcom/living/emo/activity/BaseActivity$1;
.super Lcom/clj/fastble/callback/BleNotifyCallback;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/BaseActivity;->initNotify(Lcom/clj/fastble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/BaseActivity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleNotifyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged([B)V
    .locals 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/living/emo/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " emo=> app ble data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-virtual {v1, p1}, Lcom/living/emo/activity/BaseActivity;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 133
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    const/16 v3, -0x23

    if-ne v1, v3, :cond_0

    aget-byte v1, p1, v2

    const/16 v3, -0x34

    if-ne v1, v3, :cond_0

    .line 135
    new-instance v0, Lcom/living/emo/event/MessageEvent;

    invoke-direct {v0, p1}, Lcom/living/emo/event/MessageEvent;-><init>([B)V

    .line 136
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 139
    :cond_0
    aget-byte v1, p1, v0

    const/16 v3, -0x45

    if-ne v1, v3, :cond_1

    aget-byte v1, p1, v2

    const/16 v2, -0x56

    if-ne v1, v2, :cond_1

    .line 140
    iget-object v1, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    new-array v0, v0, [B

    invoke-static {v1, v0}, Lcom/living/emo/activity/BaseActivity;->access$102(Lcom/living/emo/activity/BaseActivity;[B)[B

    .line 141
    iget-object v0, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Lcom/living/emo/util/ByteUtil;->byteTotal(BB)I

    move-result v1

    invoke-static {v0, v1}, Lcom/living/emo/activity/BaseActivity;->access$202(Lcom/living/emo/activity/BaseActivity;I)I

    .line 142
    iget-object v0, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-static {v0}, Lcom/living/emo/activity/BaseActivity;->access$100(Lcom/living/emo/activity/BaseActivity;)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, p1, v2}, Lcom/living/emo/util/ByteUtil;->byteMerger([B[BI)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/living/emo/activity/BaseActivity;->access$102(Lcom/living/emo/activity/BaseActivity;[B)[B

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-static {v1}, Lcom/living/emo/activity/BaseActivity;->access$100(Lcom/living/emo/activity/BaseActivity;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-static {v1}, Lcom/living/emo/activity/BaseActivity;->access$100(Lcom/living/emo/activity/BaseActivity;)[B

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/living/emo/util/ByteUtil;->byteMerger([B[BI)[B

    move-result-object p1

    invoke-static {v1, p1}, Lcom/living/emo/activity/BaseActivity;->access$102(Lcom/living/emo/activity/BaseActivity;[B)[B

    .line 148
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-static {p1}, Lcom/living/emo/activity/BaseActivity;->access$100(Lcom/living/emo/activity/BaseActivity;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-static {p1}, Lcom/living/emo/activity/BaseActivity;->access$100(Lcom/living/emo/activity/BaseActivity;)[B

    move-result-object p1

    array-length p1, p1

    iget-object v0, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-static {v0}, Lcom/living/emo/activity/BaseActivity;->access$200(Lcom/living/emo/activity/BaseActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 149
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/living/emo/activity/BaseActivity$1;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-static {v0}, Lcom/living/emo/activity/BaseActivity;->access$100(Lcom/living/emo/activity/BaseActivity;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 150
    invoke-static {}, Lcom/living/emo/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/living/emo/event/JsonEvent;

    invoke-direct {v0, p1}, Lcom/living/emo/event/JsonEvent;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onNotifyFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------------>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tag"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNotifySuccess()V
    .locals 0

    return-void
.end method
