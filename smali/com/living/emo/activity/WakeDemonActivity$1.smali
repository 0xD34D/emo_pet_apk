.class Lcom/living/emo/activity/WakeDemonActivity$1;
.super Ljava/lang/Object;
.source "WakeDemonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/WakeDemonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/WakeDemonActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/WakeDemonActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity$1;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$1;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$000(Lcom/living/emo/activity/WakeDemonActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/WakeDemonActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 56
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$1;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/WakeDemonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/WakeDemonActivity;->showToast(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$1;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$100(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$1;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {v0}, Lcom/living/emo/activity/WakeDemonActivity;->access$100(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/WakeDemonActivity$1;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/WakeDemonActivity;->finish()V

    return-void
.end method
