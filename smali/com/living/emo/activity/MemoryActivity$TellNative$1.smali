.class Lcom/living/emo/activity/MemoryActivity$TellNative$1;
.super Ljava/lang/Object;
.source "MemoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/MemoryActivity$TellNative;->checkUserAction([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/activity/MemoryActivity$TellNative;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/MemoryActivity$TellNative;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/living/emo/activity/MemoryActivity$TellNative$1;->this$1:Lcom/living/emo/activity/MemoryActivity$TellNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$TellNative$1;->this$1:Lcom/living/emo/activity/MemoryActivity$TellNative;

    iget-object v0, v0, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$500(Lcom/living/emo/activity/MemoryActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:checkUserAction(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/activity/MemoryActivity$TellNative$1;->this$1:Lcom/living/emo/activity/MemoryActivity$TellNative;

    iget-object v2, v2, Lcom/living/emo/activity/MemoryActivity$TellNative;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v2}, Lcom/living/emo/activity/MemoryActivity;->access$900(Lcom/living/emo/activity/MemoryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
