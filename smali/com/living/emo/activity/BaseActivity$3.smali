.class Lcom/living/emo/activity/BaseActivity$3;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/BaseActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V
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

    .line 215
    iput-object p1, p0, Lcom/living/emo/activity/BaseActivity$3;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 0

    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 1

    .line 219
    invoke-static {}, Lcom/living/emo/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "app=>emo : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/living/emo/activity/BaseActivity$3;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-virtual {v0, p3}, Lcom/living/emo/activity/BaseActivity;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
