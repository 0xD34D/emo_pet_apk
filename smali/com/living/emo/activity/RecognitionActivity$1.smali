.class Lcom/living/emo/activity/RecognitionActivity$1;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/RecognitionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/RecognitionActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/RecognitionActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/living/emo/activity/RecognitionActivity$1;->this$0:Lcom/living/emo/activity/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 64
    iget-object v0, p0, Lcom/living/emo/activity/RecognitionActivity$1;->this$0:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/RecognitionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/living/emo/activity/RecognitionActivity$1;->this$0:Lcom/living/emo/activity/RecognitionActivity;

    const-class v1, Lcom/living/emo/activity/InteractActivity;

    invoke-static {v0, v1}, Lcom/living/emo/activity/RecognitionActivity;->access$000(Lcom/living/emo/activity/RecognitionActivity;Ljava/lang/Class;)V

    return-void
.end method
