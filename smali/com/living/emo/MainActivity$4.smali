.class Lcom/living/emo/MainActivity$4;
.super Landroid/webkit/WebViewClient;
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

    .line 467
    iput-object p1, p0, Lcom/living/emo/MainActivity$4;->this$0:Lcom/living/emo/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/living/emo/MainActivity$4;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$600(Lcom/living/emo/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/living/emo/MainActivity$4;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$700(Lcom/living/emo/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 502
    iget-object v0, p0, Lcom/living/emo/MainActivity$4;->this$0:Lcom/living/emo/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/MainActivity;->access$602(Lcom/living/emo/MainActivity;Z)Z

    .line 505
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 477
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/living/emo/MainActivity$4;->this$0:Lcom/living/emo/MainActivity;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "SSL authentication failed. Do you want to continue accessing?"

    .line 478
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 479
    new-instance p3, Lcom/living/emo/MainActivity$4$1;

    invoke-direct {p3, p0, p2}, Lcom/living/emo/MainActivity$4$1;-><init>(Lcom/living/emo/MainActivity$4;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "continue"

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    new-instance p3, Lcom/living/emo/MainActivity$4$2;

    invoke-direct {p3, p0, p2}, Lcom/living/emo/MainActivity$4$2;-><init>(Lcom/living/emo/MainActivity$4;Landroid/webkit/SslErrorHandler;)V

    const-string p2, "cancel"

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 493
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 494
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
