.class Lcom/living/emo/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/MainActivity;->onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/MainActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/MainActivity;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/living/emo/MainActivity$6;->this$0:Lcom/living/emo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$response$0(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 622
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$response$1$MainActivity$6(Landroid/widget/ImageButton;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x0

    .line 625
    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const/16 p3, 0x10

    .line 626
    invoke-static {p3}, Lcom/living/emo/blebean/util/BleJsonUtil;->ota(I)Ljava/lang/String;

    move-result-object p3

    .line 627
    invoke-static {p3}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    .line 628
    iget-object v0, p0, Lcom/living/emo/MainActivity$6;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$200(Lcom/living/emo/MainActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 629
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    const/4 p2, 0x1

    .line 630
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$response$2$MainActivity$6()V
    .locals 4

    .line 638
    iget-object v0, p0, Lcom/living/emo/MainActivity$6;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$200(Lcom/living/emo/MainActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    sget-object v2, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Lcom/living/emo/util/CommandUtil;->syncAOnOff(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public response(Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;)V
    .locals 4

    .line 614
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/bean/EmoUpdate;->setEmoVersionName(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/living/emo/bean/EmoUpdate;->setEmoVersion(I)V

    .line 616
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/VersionResponse$DataBean$VersionBean;->getNumber()I

    move-result p1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    .line 617
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/living/emo/MainActivity$6;->this$0:Lcom/living/emo/MainActivity;

    const v1, 0x7f1100ef

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 618
    iget-object v0, p0, Lcom/living/emo/MainActivity$6;->this$0:Lcom/living/emo/MainActivity;

    const v1, 0x7f0c005e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900da

    .line 619
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f0900ea

    .line 620
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 621
    new-instance v3, Lcom/living/emo/-$$Lambda$MainActivity$6$57EpJ2ZRAl-CtKQ1pMZ36EaFsuI;

    invoke-direct {v3, p1}, Lcom/living/emo/-$$Lambda$MainActivity$6$57EpJ2ZRAl-CtKQ1pMZ36EaFsuI;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    new-instance v1, Lcom/living/emo/-$$Lambda$MainActivity$6$kjXBCiRCyD0HEUAwEKDKTO8bZcY;

    invoke-direct {v1, p0, v2, p1}, Lcom/living/emo/-$$Lambda$MainActivity$6$kjXBCiRCyD0HEUAwEKDKTO8bZcY;-><init>(Lcom/living/emo/MainActivity$6;Landroid/widget/ImageButton;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 633
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 634
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/living/emo/MainActivity$6;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$200(Lcom/living/emo/MainActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    sget-object v1, Lcom/living/emo/util/CommandUtil;->CMD_ORDER_DATA:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->statusOnOff(I)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/living/emo/MainActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 637
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/living/emo/-$$Lambda$MainActivity$6$8Zpp4gCJqutpmrpdidwk22gn9_A;

    invoke-direct {v0, p0}, Lcom/living/emo/-$$Lambda$MainActivity$6$8Zpp4gCJqutpmrpdidwk22gn9_A;-><init>(Lcom/living/emo/MainActivity$6;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
