.class Lcom/living/emo/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/MainActivity$4;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/MainActivity$4;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/living/emo/MainActivity$4;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/living/emo/MainActivity$4$1;->this$1:Lcom/living/emo/MainActivity$4;

    iput-object p2, p0, Lcom/living/emo/MainActivity$4$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 482
    iget-object p1, p0, Lcom/living/emo/MainActivity$4$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
