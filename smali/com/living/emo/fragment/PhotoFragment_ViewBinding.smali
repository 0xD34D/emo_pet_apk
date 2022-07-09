.class public Lcom/living/emo/fragment/PhotoFragment_ViewBinding;
.super Ljava/lang/Object;
.source "PhotoFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/living/emo/fragment/PhotoFragment;


# direct methods
.method public constructor <init>(Lcom/living/emo/fragment/PhotoFragment;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/living/emo/fragment/PhotoFragment_ViewBinding;->target:Lcom/living/emo/fragment/PhotoFragment;

    .line 23
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09023a

    const-string v2, "field \'mPhotoRecyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f09023f

    const-string v2, "field \'mSync\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/living/emo/fragment/PhotoFragment;->mSync:Landroid/widget/ImageButton;

    .line 25
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f09023c

    const-string v2, "field \'mSlideShow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/living/emo/fragment/PhotoFragment;->mSlideShow:Landroid/widget/ImageButton;

    .line 26
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f090237

    const-string v2, "field \'mClear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/living/emo/fragment/PhotoFragment;->mClear:Landroid/widget/ImageButton;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090241

    const-string v2, "field \'mTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment_ViewBinding;->target:Lcom/living/emo/fragment/PhotoFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/living/emo/fragment/PhotoFragment_ViewBinding;->target:Lcom/living/emo/fragment/PhotoFragment;

    .line 37
    iput-object v1, v0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iput-object v1, v0, Lcom/living/emo/fragment/PhotoFragment;->mSync:Landroid/widget/ImageButton;

    .line 39
    iput-object v1, v0, Lcom/living/emo/fragment/PhotoFragment;->mSlideShow:Landroid/widget/ImageButton;

    .line 40
    iput-object v1, v0, Lcom/living/emo/fragment/PhotoFragment;->mClear:Landroid/widget/ImageButton;

    .line 41
    iput-object v1, v0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
