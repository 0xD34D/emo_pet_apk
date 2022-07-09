.class public Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UtilitiesActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/living/emo/activity/UtilitiesActivity;

.field private view7f090348:Landroid/view/View;

.field private view7f090349:Landroid/view/View;

.field private view7f09034b:Landroid/view/View;

.field private view7f09034c:Landroid/view/View;

.field private view7f09034d:Landroid/view/View;

.field private view7f09034e:Landroid/view/View;

.field private view7f09034f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/living/emo/activity/UtilitiesActivity;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/living/emo/activity/UtilitiesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;-><init>(Lcom/living/emo/activity/UtilitiesActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/living/emo/activity/UtilitiesActivity;Landroid/view/View;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->target:Lcom/living/emo/activity/UtilitiesActivity;

    .line 42
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090330

    const-string v2, "field \'mTopTxtIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/living/emo/activity/UtilitiesActivity;->mTopTxtIv:Landroid/widget/ImageView;

    .line 43
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090159

    const-string v2, "field \'mMusicIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/living/emo/activity/UtilitiesActivity;->mMusicIv:Landroid/widget/ImageView;

    .line 44
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09015b

    const-string v2, "field \'mHomeSet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/living/emo/activity/UtilitiesActivity;->mHomeSet:Landroid/widget/ImageView;

    const v0, 0x7f09034d

    const-string v1, "method \'goMusic\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034d:Landroid/view/View;

    .line 47
    new-instance v1, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$1;-><init>(Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;Lcom/living/emo/activity/UtilitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090348

    const-string v1, "method \'goAlert\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f090348:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$2;-><init>(Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;Lcom/living/emo/activity/UtilitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09034e

    const-string v1, "method \'goPhoto\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034e:Landroid/view/View;

    .line 63
    new-instance v1, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$3;-><init>(Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;Lcom/living/emo/activity/UtilitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09034f

    const-string v1, "method \'goWeather\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034f:Landroid/view/View;

    .line 71
    new-instance v1, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$4;-><init>(Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;Lcom/living/emo/activity/UtilitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09034b

    const-string v1, "method \'goLight\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034b:Landroid/view/View;

    .line 79
    new-instance v1, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$5;-><init>(Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;Lcom/living/emo/activity/UtilitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09034c

    const-string v1, "method \'goMore\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034c:Landroid/view/View;

    .line 87
    new-instance v1, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$6;-><init>(Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;Lcom/living/emo/activity/UtilitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090349

    const-string v1, "method \'goBack\'"

    .line 93
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 94
    iput-object p2, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f090349:Landroid/view/View;

    .line 95
    new-instance v0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding$7;-><init>(Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;Lcom/living/emo/activity/UtilitiesActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->target:Lcom/living/emo/activity/UtilitiesActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->target:Lcom/living/emo/activity/UtilitiesActivity;

    .line 110
    iput-object v1, v0, Lcom/living/emo/activity/UtilitiesActivity;->mTopTxtIv:Landroid/widget/ImageView;

    .line 111
    iput-object v1, v0, Lcom/living/emo/activity/UtilitiesActivity;->mMusicIv:Landroid/widget/ImageView;

    .line 112
    iput-object v1, v0, Lcom/living/emo/activity/UtilitiesActivity;->mHomeSet:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034d:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f090348:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f090348:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034e:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034f:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034b:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f09034c:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f090349:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcom/living/emo/activity/UtilitiesActivity_ViewBinding;->view7f090349:Landroid/view/View;

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
