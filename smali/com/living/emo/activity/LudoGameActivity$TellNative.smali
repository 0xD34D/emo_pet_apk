.class Lcom/living/emo/activity/LudoGameActivity$TellNative;
.super Ljava/lang/Object;
.source "LudoGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/LudoGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TellNative"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/living/emo/activity/LudoGameActivity;


# direct methods
.method private constructor <init>(Lcom/living/emo/activity/LudoGameActivity;)V
    .locals 1

    .line 133
    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "zxl"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/living/emo/activity/LudoGameActivity$TellNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/activity/LudoGameActivity;Lcom/living/emo/activity/LudoGameActivity$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/living/emo/activity/LudoGameActivity$TellNative;-><init>(Lcom/living/emo/activity/LudoGameActivity;)V

    return-void
.end method

.method private accomplished()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 211
    fill-array-data v0, :array_0

    .line 216
    invoke-direct {p0, v0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->sendConfig([I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0039
        0x7f0a003a
        0x7f0a003b
    .end array-data
.end method

.method private attack()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 193
    fill-array-data v0, :array_0

    .line 197
    invoke-direct {p0, v0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->sendConfig([I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a003b
        0x7f0a0024
    .end array-data
.end method

.method private attacked()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 184
    fill-array-data v0, :array_0

    .line 188
    invoke-direct {p0, v0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->sendConfig([I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0038
        0x7f0a0035
    .end array-data
.end method

.method private cantmove()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 229
    fill-array-data v0, :array_0

    .line 234
    invoke-direct {p0, v0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->sendConfig([I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0036
        0x7f0a0037
        0x7f0a0038
    .end array-data
.end method

.method private cross()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 201
    fill-array-data v0, :array_0

    .line 205
    invoke-direct {p0, v0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->sendConfig([I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a003a
        0x7f0a003d
    .end array-data
.end method

.method private emoloses()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 281
    fill-array-data v0, :array_0

    .line 287
    invoke-direct {p0, v0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->sendConfig([I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0025
        0x7f0a0029
        0x7f0a0022
        0x7f0a0028
    .end array-data
.end method

.method private emowins()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1100(Lcom/living/emo/activity/LudoGameActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_GAME_NUMBER:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Lcom/living/emo/util/CommandUtil;->achiev(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/LudoGameActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 292
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$LudoGameActivity$TellNative$oL4cU3XYvI2_RCXsMt_dToLphcs;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$LudoGameActivity$TellNative$oL4cU3XYvI2_RCXsMt_dToLphcs;-><init>(Lcom/living/emo/activity/LudoGameActivity$TellNative;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private jump()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 221
    fill-array-data v0, :array_0

    .line 225
    invoke-direct {p0, v0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->sendConfig([I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a003c
        0x7f0a003b
    .end array-data
.end method

.method private rolladice()V
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 238
    fill-array-data v1, :array_0

    .line 241
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 242
    iget-object v2, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/living/emo/activity/LudoGameActivity;->access$202(Lcom/living/emo/activity/LudoGameActivity;I)I

    .line 244
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$200(Lcom/living/emo/activity/LudoGameActivity;)I

    move-result v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 261
    :pswitch_0
    invoke-static {}, Lcom/living/emo/activity/LudoGameActivity;->access$800()[I

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v0, v0, v1

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-static {}, Lcom/living/emo/activity/LudoGameActivity;->access$700()[I

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v0, v0, v1

    goto :goto_0

    .line 255
    :pswitch_2
    invoke-static {}, Lcom/living/emo/activity/LudoGameActivity;->access$600()[I

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v0, v0, v1

    goto :goto_0

    .line 252
    :pswitch_3
    invoke-static {}, Lcom/living/emo/activity/LudoGameActivity;->access$500()[I

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v0, v0, v1

    goto :goto_0

    .line 249
    :pswitch_4
    invoke-static {}, Lcom/living/emo/activity/LudoGameActivity;->access$400()[I

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v0, v0, v1

    goto :goto_0

    .line 246
    :pswitch_5
    invoke-static {}, Lcom/living/emo/activity/LudoGameActivity;->access$300()[I

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v0, v0, v1

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v1}, Lcom/living/emo/activity/LudoGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v1}, Lcom/living/emo/activity/LudoGameActivity;->access$900(Lcom/living/emo/activity/LudoGameActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-static {v0}, Lcom/living/emo/util/IntUtil;->intTOInArray(I)[I

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v1}, Lcom/living/emo/activity/LudoGameActivity;->access$1000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/living/emo/activity/-$$Lambda$LudoGameActivity$TellNative$5Q2lDSb4XIxgvMmHarCeGPv_xWQ;

    invoke-direct {v2, p0, v0}, Lcom/living/emo/activity/-$$Lambda$LudoGameActivity$TellNative$5Q2lDSb4XIxgvMmHarCeGPv_xWQ;-><init>(Lcom/living/emo/activity/LudoGameActivity$TellNative;[I)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/living/emo/activity/LudoGameActivity;->access$902(Lcom/living/emo/activity/LudoGameActivity;Z)Z

    :cond_0
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

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private sbaccomplished()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 174
    fill-array-data v0, :array_0

    .line 179
    invoke-direct {p0, v0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->sendConfig([I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0034
        0x7f0a0036
        0x7f0a0037
    .end array-data
.end method

.method private sendConfig([I)V
    .locals 3

    .line 276
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v1}, Lcom/living/emo/activity/LudoGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 278
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1100(Lcom/living/emo/activity/LudoGameActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {p1}, Lcom/living/emo/util/IntUtil;->intTOInArray(I)[I

    move-result-object p1

    invoke-static {p1}, Lcom/living/emo/util/CommandUtil;->playAnimNoReply([I)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/LudoGameActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method


# virtual methods
.method public gameOverCMD()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1000(Lcom/living/emo/activity/LudoGameActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    new-instance v2, Lcom/living/emo/activity/-$$Lambda$dgC-YjdrZiJHmO8g7ldxnl5TI7Q;

    invoke-direct {v2, v1}, Lcom/living/emo/activity/-$$Lambda$dgC-YjdrZiJHmO8g7ldxnl5TI7Q;-><init>(Lcom/living/emo/activity/LudoGameActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$emowins$1$LudoGameActivity$TellNative()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1100(Lcom/living/emo/activity/LudoGameActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-virtual {v2}, Lcom/living/emo/activity/LudoGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/living/emo/util/IntUtil;->intTOInArray(I)[I

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/CommandUtil;->playAnim([I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/LudoGameActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public synthetic lambda$rolladice$0$LudoGameActivity$TellNative([I)V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1100(Lcom/living/emo/activity/LudoGameActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aget v4, p1, v3

    aput v4, v2, v3

    const/4 v3, 0x1

    aget p1, p1, v3

    aput p1, v2, v3

    invoke-static {v2}, Lcom/living/emo/util/CommandUtil;->playAnim([I)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/LudoGameActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1200(Lcom/living/emo/activity/LudoGameActivity;)Lcom/living/emo/util/LudoSoundPoolUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/living/emo/util/LudoSoundPoolUtil;->play(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startGameCMD()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->TAG:Ljava/lang/String;

    const-string v1, "startGameCMD"

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/living/emo/activity/LudoGameActivity$TellNative;->this$0:Lcom/living/emo/activity/LudoGameActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LudoGameActivity;->access$1100(Lcom/living/emo/activity/LudoGameActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->startGame()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/LudoGameActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public tellEMO(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "tellEMO"

    .line 138
    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "accomplished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "emoloses"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "sbaccomplished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "attacked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "rolladice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "cross"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "jump"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "cantmove"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "attack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "emowins"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 144
    :pswitch_0
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->accomplished()V

    goto :goto_1

    .line 165
    :pswitch_1
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->emoloses()V

    goto :goto_1

    .line 147
    :pswitch_2
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->sbaccomplished()V

    goto :goto_1

    .line 153
    :pswitch_3
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->attacked()V

    goto :goto_1

    .line 168
    :pswitch_4
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->rolladice()V

    goto :goto_1

    .line 156
    :pswitch_5
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->cross()V

    goto :goto_1

    .line 159
    :pswitch_6
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->jump()V

    goto :goto_1

    .line 141
    :pswitch_7
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->cantmove()V

    goto :goto_1

    .line 150
    :pswitch_8
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->attack()V

    goto :goto_1

    .line 162
    :pswitch_9
    invoke-direct {p0}, Lcom/living/emo/activity/LudoGameActivity$TellNative;->emowins()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60d682a2 -> :sswitch_9
        -0x53e111b8 -> :sswitch_8
        -0x6643b8b -> :sswitch_7
        0x31f42e -> :sswitch_6
        0x5a89840 -> :sswitch_5
        0x200e392b -> :sswitch_4
        0x201c88e7 -> :sswitch_3
        0x2380a1f1 -> :sswitch_2
        0x456df797 -> :sswitch_1
        0x5eb69222 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
