.class Lcom/living/emo/fragment/NotificationsFragment$2;
.super Landroid/webkit/WebViewClient;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/NotificationsFragment;->initViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/NotificationsFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment$2;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
