.class Lcom/living/emo/fragment/RecognitionFragment$3;
.super Ljava/lang/Object;
.source "RecognitionFragment.java"

# interfaces
.implements Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/RecognitionFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/RecognitionFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/RecognitionFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ViewClick(Lcom/living/emo/bean/RecognitionBean;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/RecognitionFragment;->mPeopleCon:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    iput-object p1, v0, Lcom/living/emo/fragment/RecognitionFragment;->currRecog:Lcom/living/emo/bean/RecognitionBean;

    .line 231
    invoke-virtual {p1}, Lcom/living/emo/bean/RecognitionBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/RecognitionFragment;->mName:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/RecognitionFragment;->mName:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/RecognitionFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/living/emo/bean/RecognitionBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public addClick(I)V
    .locals 3

    .line 180
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    sget-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 185
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/RecognitionFragment;->access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;

    move-result-object p1

    const-string v0, "EMO can only remember 16 faces now."

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_1
    new-instance p1, Lcom/living/emo/view/RecognitionNameView;

    invoke-direct {p1}, Lcom/living/emo/view/RecognitionNameView;-><init>()V

    .line 189
    new-instance v0, Lcom/living/emo/fragment/RecognitionFragment$3$1;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/RecognitionFragment$3$1;-><init>(Lcom/living/emo/fragment/RecognitionFragment$3;)V

    invoke-virtual {p1, v0}, Lcom/living/emo/view/RecognitionNameView;->setDialogClickListener(Lcom/living/emo/view/RecognitionNameView$onDialogClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment$3;->this$0:Lcom/living/emo/fragment/RecognitionFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/RecognitionFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v0, v1}, Lcom/living/emo/view/RecognitionNameView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
