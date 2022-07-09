.class Lcom/living/emo/activity/DanceListActivity$4;
.super Ljava/lang/Object;
.source "DanceListActivity.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleResultNumParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DanceListActivity;->onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DanceListActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DanceListActivity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/living/emo/activity/DanceListActivity$4;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(I)V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hello"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/DanceListActivity$4;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DanceListActivity;->access$000(Lcom/living/emo/activity/DanceListActivity;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/living/emo/activity/DanceListActivity$4;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DanceListActivity;->access$600(Lcom/living/emo/activity/DanceListActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const-string v0, "javascript:complete()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
