.class Lcom/living/emo/activity/CustomizationActivity$TellNative;
.super Ljava/lang/Object;
.source "CustomizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/CustomizationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TellNative"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/CustomizationActivity;


# direct methods
.method private constructor <init>(Lcom/living/emo/activity/CustomizationActivity;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/living/emo/activity/CustomizationActivity;Lcom/living/emo/activity/CustomizationActivity$1;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lcom/living/emo/activity/CustomizationActivity$TellNative;-><init>(Lcom/living/emo/activity/CustomizationActivity;)V

    return-void
.end method


# virtual methods
.method public generatedImage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-static {v0}, Lcom/living/emo/activity/CustomizationActivity;->access$100(Lcom/living/emo/activity/CustomizationActivity;)Lcom/living/emo/activity/CustomizationActivity$State;

    move-result-object v0

    sget-object v1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    sget-object v1, Lcom/living/emo/activity/CustomizationActivity$State;->SET_EYES:Lcom/living/emo/activity/CustomizationActivity$State;

    invoke-static {v0, v1}, Lcom/living/emo/activity/CustomizationActivity;->access$102(Lcom/living/emo/activity/CustomizationActivity;Lcom/living/emo/activity/CustomizationActivity$State;)Lcom/living/emo/activity/CustomizationActivity$State;

    .line 390
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    const-string v1, "processing"

    invoke-static {v0, v1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ","

    .line 391
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dsf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 393
    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 395
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "sticker.png"

    .line 398
    invoke-static {}, Lcom/living/emo/bean/ImageBean;->getInstance()Lcom/living/emo/bean/ImageBean;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/living/emo/bean/ImageBean;->setName(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/living/emo/bean/ImageBean;->getInstance()Lcom/living/emo/bean/ImageBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/living/emo/bean/ImageBean;->setImageRaw([B)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bs4:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dddd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",color:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object p3, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    const-string v0, "#4b00ff"

    invoke-virtual {p3, v0}, Lcom/living/emo/activity/CustomizationActivity;->hex2RGB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 404
    iget-object p3, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-static {p3}, Lcom/living/emo/activity/CustomizationActivity;->access$200(Lcom/living/emo/activity/CustomizationActivity;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2382

    array-length v7, p1

    move v3, p2

    invoke-static/range {v2 .. v7}, Lcom/living/emo/blebean/util/BleJsonUtil;->customize(Ljava/util/List;ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 406
    iget-object p2, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-static {p2}, Lcom/living/emo/activity/CustomizationActivity;->access$300(Lcom/living/emo/activity/CustomizationActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object p3

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/living/emo/activity/CustomizationActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public resetImage()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-static {v0}, Lcom/living/emo/activity/CustomizationActivity;->access$100(Lcom/living/emo/activity/CustomizationActivity;)Lcom/living/emo/activity/CustomizationActivity$State;

    move-result-object v0

    sget-object v1, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    sget-object v1, Lcom/living/emo/activity/CustomizationActivity$State;->CLEAR_EYE:Lcom/living/emo/activity/CustomizationActivity$State;

    invoke-static {v0, v1}, Lcom/living/emo/activity/CustomizationActivity;->access$102(Lcom/living/emo/activity/CustomizationActivity;Lcom/living/emo/activity/CustomizationActivity$State;)Lcom/living/emo/activity/CustomizationActivity$State;

    .line 414
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    const-string v1, "processing"

    invoke-static {v0, v1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$TellNative;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-static {v0}, Lcom/living/emo/activity/CustomizationActivity;->access$300(Lcom/living/emo/activity/CustomizationActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const-string v2, "clear_eye"

    invoke-static {v2}, Lcom/living/emo/blebean/util/BleJsonUtil;->customize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/CustomizationActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method
