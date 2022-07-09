.class public Lcom/living/emo/MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MyWebChromeClient.java"


# instance fields
.field private mOpenFileChooserCallBack:Lcom/living/emo/interfaces/OpenFileChooserCallBack;


# direct methods
.method public constructor <init>(Lcom/living/emo/interfaces/OpenFileChooserCallBack;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/living/emo/MyWebChromeClient;->mOpenFileChooserCallBack:Lcom/living/emo/interfaces/OpenFileChooserCallBack;

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string v0, "hagan"

    const-string v1, "onShowFileChooser"

    .line 24
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/living/emo/MyWebChromeClient;->mOpenFileChooserCallBack:Lcom/living/emo/interfaces/OpenFileChooserCallBack;

    invoke-interface {v0, p1, p2, p3}, Lcom/living/emo/interfaces/OpenFileChooserCallBack;->openFileChooser5CallBack(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/living/emo/MyWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/living/emo/MyWebChromeClient;->mOpenFileChooserCallBack:Lcom/living/emo/interfaces/OpenFileChooserCallBack;

    invoke-interface {v0, p1, p2}, Lcom/living/emo/interfaces/OpenFileChooserCallBack;->openFileChooserCallBack(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/MyWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
