.class Lcom/living/emo/activity/HuntActivity$1;
.super Ljava/lang/Object;
.source "HuntActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/HuntActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/HuntActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/HuntActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity$1;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$1;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$000(Lcom/living/emo/activity/HuntActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$1;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/HuntActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/HuntActivity;->showToast(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$1;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/HuntActivity;->finish()V

    return-void
.end method
