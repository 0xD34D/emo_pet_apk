.class public Lcom/living/emo/activity/DrumActivity$TellNative;
.super Ljava/lang/Object;
.source "DrumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/DrumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TellNative"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DrumActivity;


# direct methods
.method public constructor <init>(Lcom/living/emo/activity/DrumActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gameBehest(II)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 229
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   bpm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 254
    :pswitch_0
    iget-object p1, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DrumActivity;->access$200(Lcom/living/emo/activity/DrumActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object p2

    sget-object v0, Lcom/living/emo/util/CommandUtil;->CMD_GAME_NUMBER:[I

    aget v0, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->achiev(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    goto/16 :goto_0

    .line 248
    :pswitch_1
    iget-object p1, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/DrumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 249
    invoke-static {p1}, Lcom/living/emo/util/IntUtil;->intTOInArray(I)[I

    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {p2}, Lcom/living/emo/activity/DrumActivity;->access$200(Lcom/living/emo/activity/DrumActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v3

    new-array v0, v0, [I

    aget v4, p1, v1

    aput v4, v0, v1

    aget p1, p1, v2

    aput p1, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->playAnim([I)[B

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 251
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "execCmd:miss "

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object p1, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DrumActivity;->access$200(Lcom/living/emo/activity/DrumActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object p2

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->stay()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 245
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "execCmd:stay "

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_3
    iget-object p1, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DrumActivity;->access$200(Lcom/living/emo/activity/DrumActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v3

    new-array v0, v0, [I

    aput v2, v0, v1

    aput p2, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->dance([I)[B

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 241
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "execCmd:dance "

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :pswitch_4
    iget-object p1, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DrumActivity;->access$200(Lcom/living/emo/activity/DrumActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v3

    new-array v0, v0, [I

    aput v2, v0, v1

    aput p2, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->legShaking([I)[B

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 237
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "execCmd:leg "

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :pswitch_5
    iget-object p1, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DrumActivity;->access$200(Lcom/living/emo/activity/DrumActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v3

    new-array v0, v0, [I

    aput v2, v0, v1

    aput p2, v0, v2

    invoke-static {v0}, Lcom/living/emo/util/CommandUtil;->dazzling([I)[B

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 233
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "execCmd:eyes "

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public gameOver()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$100(Lcom/living/emo/activity/DrumActivity;)V

    .line 179
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameOver:gameOver "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gameResult(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getresult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-array p1, v2, [I

    .line 215
    fill-array-data p1, :array_0

    .line 219
    iget-object v1, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-virtual {v1}, Lcom/living/emo/activity/DrumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    new-array v1, p1, [I

    .line 205
    fill-array-data v1, :array_1

    .line 212
    iget-object v2, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-virtual {v2}, Lcom/living/emo/activity/DrumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    aget p1, v1, p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    .line 198
    fill-array-data p1, :array_2

    .line 202
    iget-object v1, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-virtual {v1}, Lcom/living/emo/activity/DrumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    new-array v1, p1, [I

    .line 189
    fill-array-data v1, :array_3

    .line 195
    iget-object v2, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-virtual {v2}, Lcom/living/emo/activity/DrumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    aget p1, v1, p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 222
    :goto_0
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gameResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$200(Lcom/living/emo/activity/DrumActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {p1}, Lcom/living/emo/util/IntUtil;->intTOInArray(I)[I

    move-result-object p1

    invoke-static {p1}, Lcom/living/emo/util/CommandUtil;->playAnim([I)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0024
        0x7f0a0023
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0039
        0x7f0a003a
        0x7f0a003b
        0x7f0a003c
        0x7f0a003d
    .end array-data

    :array_2
    .array-data 4
        0x7f0a0035
        0x7f0a0036
    .end array-data

    :array_3
    .array-data 4
        0x7f0a0025
        0x7f0a0029
        0x7f0a0022
        0x7f0a0028
    .end array-data
.end method

.method public startGame()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$TellNative;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$200(Lcom/living/emo/activity/DrumActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->startGame()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/DrumActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 170
    invoke-static {}, Lcom/living/emo/activity/DrumActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startGame:startGame "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
