.class Lcom/living/emo/activity/WifiActivity$2;
.super Ljava/lang/Object;
.source "WifiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/WifiActivity;->initEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/WifiActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/WifiActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity$2;->this$0:Lcom/living/emo/activity/WifiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity$2;->this$0:Lcom/living/emo/activity/WifiActivity;

    const-string v1, "input_method"

    .line 157
    invoke-virtual {v0, v1}, Lcom/living/emo/activity/WifiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
