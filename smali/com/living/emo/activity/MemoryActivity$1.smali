.class Lcom/living/emo/activity/MemoryActivity$1;
.super Ljava/lang/Object;
.source "MemoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/MemoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/MemoryActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/MemoryActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/living/emo/activity/MemoryActivity$1;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$1;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$000(Lcom/living/emo/activity/MemoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$1;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-static {v0}, Lcom/living/emo/activity/MemoryActivity;->access$000(Lcom/living/emo/activity/MemoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$1;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/MemoryActivity;->showToast(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/living/emo/activity/MemoryActivity$1;->this$0:Lcom/living/emo/activity/MemoryActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/MemoryActivity;->finish()V

    return-void
.end method
