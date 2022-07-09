.class Lcom/living/emo/MainActivity$5;
.super Landroid/webkit/WebChromeClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/MainActivity;->initViews()V
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

    .line 509
    iput-object p1, p0, Lcom/living/emo/MainActivity$5;->this$0:Lcom/living/emo/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 512
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/living/emo/MainActivity$5;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$800(Lcom/living/emo/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/living/emo/MainActivity$5;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$800(Lcom/living/emo/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 517
    iget-object p1, p0, Lcom/living/emo/MainActivity$5;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$800(Lcom/living/emo/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method
