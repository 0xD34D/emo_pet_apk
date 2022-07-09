.class Lcom/living/emo/activity/ToolPhotoActivity$1;
.super Ljava/lang/Object;
.source "ToolPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/ToolPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/ToolPhotoActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/ToolPhotoActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/living/emo/activity/ToolPhotoActivity$1;->this$0:Lcom/living/emo/activity/ToolPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 74
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 75
    iget-object v0, p0, Lcom/living/emo/activity/ToolPhotoActivity$1;->this$0:Lcom/living/emo/activity/ToolPhotoActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/ToolPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/ToolPhotoActivity;->showToast(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/living/emo/activity/ToolPhotoActivity$1;->this$0:Lcom/living/emo/activity/ToolPhotoActivity;

    const-class v1, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-static {v0, v1}, Lcom/living/emo/activity/ToolPhotoActivity;->access$000(Lcom/living/emo/activity/ToolPhotoActivity;Ljava/lang/Class;)V

    return-void
.end method
