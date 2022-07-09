.class Lcom/living/emo/activity/MemoryActivity$TellNative;
.super Ljava/lang/Object;
.source "MemoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/MemoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TellNative"
.end annotation


# instance fields
.field private currRound:I

.field public currSeeds:[I

.field private mRes:[I

.field private roundBox:[I

.field final synthetic this$0:Lcom/living/emo/activity/MemoryActivity;


# direct methods
.method private constructor <init>(Lcom/living/emo/activity/MemoryActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 205
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->roundBox:[I

    const/4 p1, 0x0

    .line 208
    iput p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currRound:I

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currSeeds:[I

    return-void

    :array_0
    .array-data 4
        0x6
        0x8
        0xa
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/living/emo/activity/MemoryActivity;Lcom/living/emo/activity/MemoryActivity$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/living/emo/activity/MemoryActivity$TellNative;-><init>(Lcom/living/emo/activity/MemoryActivity;)V

    return-void
.end method


# virtual methods
.method public checkUserAction([I)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$600(Lcom/living/emo/activity/MemoryActivity;)Lcom/living/emo/presenter/PlayMusicPresenters;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/PlayMusicPresenters;->setVol(F)Lcom/living/emo/presenter/PlayMusicPresenters;

    .line 230
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$800(Lcom/living/emo/activity/MemoryActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currSeeds:[I

    invoke-static {v2}, Lcom/living/emo/util/CommandUtil;->memoryDance([I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 231
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currSeeds:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->mRes:[I

    const/4 v0, 0x0

    move v1, v0

    .line 232
    :goto_0
    iget-object v2, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currSeeds:[I

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->mRes:[I

    aget v2, v2, v1

    aget v5, p1, v1

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 237
    :goto_2
    iget-object v1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->mRes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 238
    array-length v1, v1

    sub-int/2addr v1, v4

    if-ne v1, v0, :cond_2

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->mRes:[I

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 241
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->mRes:[I

    aget p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0, p1}, Lcom/living/emo/activity/MemoryActivity;->access$902(Lcom/living/emo/activity/MemoryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    iget-object p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    new-instance v0, Lcom/living/emo/activity/MemoryActivity$TellNative$1;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/MemoryActivity$TellNative$1;-><init>(Lcom/living/emo/activity/MemoryActivity$TellNative;)V

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/MemoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public expression(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 293
    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "express"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "great"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "good"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "bad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v0, "perfect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 302
    :pswitch_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    .line 303
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$1100()[I

    move-result-object v4

    aget p1, v4, p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Lcom/living/emo/util/IntUtil;->intTOInArray(I)[I

    move-result-object p1

    .line 304
    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "good: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$800(Lcom/living/emo/activity/MemoryActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    new-array v1, v1, [I

    aget v5, p1, v3

    aput v5, v1, v3

    aget p1, p1, v2

    aput p1, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->playAnim([I)[B

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    goto/16 :goto_1

    .line 309
    :pswitch_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    .line 310
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$1200()[I

    move-result-object v4

    aget p1, v4, p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Lcom/living/emo/util/IntUtil;->intTOInArray(I)[I

    move-result-object p1

    .line 311
    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$800(Lcom/living/emo/activity/MemoryActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    new-array v1, v1, [I

    aget v5, p1, v3

    aput v5, v1, v3

    aget p1, p1, v2

    aput p1, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->playAnim([I)[B

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    goto :goto_1

    .line 296
    :pswitch_2
    iget-object p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/MemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$1000()[I

    move-result-object v0

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Lcom/living/emo/util/IntUtil;->intTOInArray(I)[I

    move-result-object p1

    .line 297
    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perfect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$800(Lcom/living/emo/activity/MemoryActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    new-array v1, v1, [I

    aget v5, p1, v3

    aput v5, v1, v3

    aget p1, p1, v2

    aput p1, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->playAnim([I)[B

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x28763ff3 -> :sswitch_3
        0x17c05 -> :sswitch_2
        0x3080bd -> :sswitch_1
        0x5e0ce8d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public gameOver()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->finish()V

    .line 323
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$TellNative$JmS__s_srNJJwLrcO2SFp5BmUUs;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$TellNative$JmS__s_srNJJwLrcO2SFp5BmUUs;-><init>(Lcom/living/emo/activity/MemoryActivity$TellNative;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/MemoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateAction()V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/living/emo/activity/MemoryActivity;->access$402(Lcom/living/emo/activity/MemoryActivity;Z)Z

    .line 216
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$600(Lcom/living/emo/activity/MemoryActivity;)Lcom/living/emo/presenter/PlayMusicPresenters;

    move-result-object v0

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v2}, Lcom/living/emo/presenter/PlayMusicPresenters;->setVol(F)Lcom/living/emo/presenter/PlayMusicPresenters;

    .line 217
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->roundBox:[I

    iget v2, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currRound:I

    aget v0, v0, v2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 219
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_0
    iput-object v2, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currSeeds:[I

    .line 222
    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currSeeds:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$800(Lcom/living/emo/activity/MemoryActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currSeeds:[I

    invoke-static {v3}, Lcom/living/emo/util/CommandUtil;->memoryDance([I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 224
    iget v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currRound:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->currRound:I

    return-void
.end method

.method public synthetic lambda$gameOver$1$MemoryActivity$TellNative()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$500(Lcom/living/emo/activity/MemoryActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$500(Lcom/living/emo/activity/MemoryActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 326
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/activity/MemoryActivity;->access$502(Lcom/living/emo/activity/MemoryActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public synthetic lambda$mood$0$MemoryActivity$TellNative()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$800(Lcom/living/emo/activity/MemoryActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_GAME_NUMBER:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-static {v2}, Lcom/living/emo/util/CommandUtil;->achiev(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public mood(I)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    if-ne p1, v2, :cond_4

    .line 278
    iget-object p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {p1}, Lcom/living/emo/activity/MemoryActivity;->access$300(Lcom/living/emo/activity/MemoryActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$TellNative$O7cpJLAoSlffvhS-WJCS2zFto_0;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$MemoryActivity$TellNative$O7cpJLAoSlffvhS-WJCS2zFto_0;-><init>(Lcom/living/emo/activity/MemoryActivity$TellNative;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    :cond_4
    invoke-static {v0}, Lcom/living/emo/util/IntUtil;->intTOInArray(I)[I

    move-result-object p1

    .line 285
    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mood: ==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$800(Lcom/living/emo/activity/MemoryActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    new-array v2, v3, [I

    const/4 v3, 0x0

    aget v5, p1, v3

    aput v5, v2, v3

    aget p1, p1, v4

    aput p1, v2, v4

    invoke-static {v2}, Lcom/living/emo/util/CommandUtil;->playAnim([I)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public playNow()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$800(Lcom/living/emo/activity/MemoryActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->startGame()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/MemoryActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 257
    invoke-static {}, Lcom/living/emo/activity/MemoryActivity;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, ": play now game"

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public soundPool(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$1300(Lcom/living/emo/activity/MemoryActivity;)Lcom/living/emo/util/SoundUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/living/emo/util/SoundUtil;->play(Ljava/lang/String;)V

    return-void
.end method
