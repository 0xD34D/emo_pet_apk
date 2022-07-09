.class Lcom/living/emo/fragment/PhotoFragment$2;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/PhotoFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/PhotoFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/PhotoFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(Ljava/io/File;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0, p1}, Lcom/living/emo/fragment/PhotoFragment;->access$602(Lcom/living/emo/fragment/PhotoFragment;Ljava/io/File;)Ljava/io/File;

    .line 140
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/living/emo/fragment/PhotoFragment$2$1;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/fragment/PhotoFragment$2$1;-><init>(Lcom/living/emo/fragment/PhotoFragment$2;Ljava/io/File;)V

    const p1, 0x7f0c00ce

    const v2, 0x7f090238

    const v3, 0x7f090239

    invoke-static {v0, p1, v2, v3, v1}, Lcom/living/emo/view/PhotoDialogView;->showDialog(Landroid/content/Context;IIILcom/living/emo/view/PhotoDialogView$OnClickListener;)V

    return-void
.end method

.method public onDownload(Ljava/io/File;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PhotoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/living/emo/util/ImgUtil;->saveImageToGallery(Landroid/content/Context;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/PhotoFragment;->access$300(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/activity/ToolPhotoActivity;

    move-result-object p1

    const-string v0, "save success"

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/ToolPhotoActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/PhotoFragment;->access$300(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/activity/ToolPhotoActivity;

    move-result-object p1

    const-string v0, "save fail"

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/ToolPhotoActivity;->showToast(Ljava/lang/String;)V

    .line 167
    :goto_0
    iget-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$2;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/PhotoFragment;->access$800(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/view/PreviewPicturePopWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/view/PreviewPicturePopWindow;->dismiss()V

    return-void
.end method
