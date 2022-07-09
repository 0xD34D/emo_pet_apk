.class public Lcom/living/emo/fragment/RecognitionFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RecognitionFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/living/emo/fragment/RecognitionFragment;


# direct methods
.method public constructor <init>(Lcom/living/emo/fragment/RecognitionFragment;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment_ViewBinding;->target:Lcom/living/emo/fragment/RecognitionFragment;

    .line 24
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090267

    const-string v2, "field \'mRecyFaces\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/living/emo/fragment/RecognitionFragment;->mRecyFaces:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09026b

    const-string v2, "field \'mPeopleCon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/living/emo/fragment/RecognitionFragment;->mPeopleCon:Landroid/widget/LinearLayout;

    .line 26
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09026a

    const-string v2, "field \'mNameCon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/living/emo/fragment/RecognitionFragment;->mNameCon:Landroid/widget/LinearLayout;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090269

    const-string v2, "field \'mName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/living/emo/fragment/RecognitionFragment;->mName:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f090268

    const-string v2, "field \'mDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/living/emo/fragment/RecognitionFragment;->mDelete:Landroid/widget/ImageButton;

    .line 29
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f09026c

    const-string v2, "field \'mRescan\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p1, Lcom/living/emo/fragment/RecognitionFragment;->mRescan:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment_ViewBinding;->target:Lcom/living/emo/fragment/RecognitionFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment_ViewBinding;->target:Lcom/living/emo/fragment/RecognitionFragment;

    .line 39
    iput-object v1, v0, Lcom/living/emo/fragment/RecognitionFragment;->mRecyFaces:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    iput-object v1, v0, Lcom/living/emo/fragment/RecognitionFragment;->mPeopleCon:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, v0, Lcom/living/emo/fragment/RecognitionFragment;->mNameCon:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, v0, Lcom/living/emo/fragment/RecognitionFragment;->mName:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/living/emo/fragment/RecognitionFragment;->mDelete:Landroid/widget/ImageButton;

    .line 44
    iput-object v1, v0, Lcom/living/emo/fragment/RecognitionFragment;->mRescan:Landroid/widget/ImageButton;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
