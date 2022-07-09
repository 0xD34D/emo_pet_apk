.class Lcom/living/emo/activity/DrumActivity$1;
.super Ljava/lang/Object;
.source "DrumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/DrumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DrumActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DrumActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/living/emo/activity/DrumActivity$1;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$1;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$000(Lcom/living/emo/activity/DrumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$1;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$000(Lcom/living/emo/activity/DrumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$1;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/DrumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/DrumActivity;->showToast(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/living/emo/activity/DrumActivity$1;->this$0:Lcom/living/emo/activity/DrumActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DrumActivity;->access$100(Lcom/living/emo/activity/DrumActivity;)V

    return-void
.end method
