.class Lcom/living/emo/activity/HuntActivity$3;
.super Landroid/os/CountDownTimer;
.source "HuntActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/HuntActivity;->initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/HuntActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/HuntActivity;JJ)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity$3;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 232
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/SoundIdPoolUntil;->stop()V

    .line 233
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object v0

    const-string v1, "time_out1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/util/SoundIdPoolUntil;->play(Ljava/lang/String;I)V

    .line 235
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$3;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$1000(Lcom/living/emo/activity/HuntActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->timeout()[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 236
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$3;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0, v2}, Lcom/living/emo/activity/HuntActivity;->access$102(Lcom/living/emo/activity/HuntActivity;Z)Z

    .line 237
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$3;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0, v2}, Lcom/living/emo/activity/HuntActivity;->access$202(Lcom/living/emo/activity/HuntActivity;Z)Z

    .line 238
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$3;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$State;->TIMEOUT:Lcom/living/emo/activity/HuntActivity$State;

    invoke-static {v0, v1}, Lcom/living/emo/activity/HuntActivity;->access$1100(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$State;)V

    .line 239
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$3;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object v1, Lcom/living/emo/activity/HuntActivity$Tips;->NONE:Lcom/living/emo/activity/HuntActivity$Tips;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/living/emo/activity/HuntActivity;->access$1200(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Tips;Ljava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .locals 8

    const-wide/32 v0, 0x5265c00

    .line 217
    div-long v2, p1, v0

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    const-wide/32 v0, 0x36ee80

    .line 219
    div-long v2, p1, v0

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    const-wide/32 v0, 0xea60

    .line 221
    div-long v2, p1, v0

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    .line 223
    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 225
    invoke-static {}, Lcom/living/emo/util/SoundIdPoolUntil;->getInstance()Lcom/living/emo/util/SoundIdPoolUntil;

    move-result-object v0

    const/4 v1, 0x0

    const-string v4, "last_3"

    invoke-virtual {v0, v4, v1}, Lcom/living/emo/util/SoundIdPoolUntil;->play(Ljava/lang/String;I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$3;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$900(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    const-string v7, "0"

    if-gez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    cmp-long v2, p1, v4

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
