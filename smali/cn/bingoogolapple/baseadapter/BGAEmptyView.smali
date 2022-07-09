.class public Lcn/bingoogolapple/baseadapter/BGAEmptyView;
.super Landroid/widget/FrameLayout;
.source "BGAEmptyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/baseadapter/BGAEmptyView$SimpleDelegate;,
        Lcn/bingoogolapple/baseadapter/BGAEmptyView$Delegate;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDelegate:Lcn/bingoogolapple/baseadapter/BGAEmptyView$Delegate;

.field private mEmptyView:Landroid/view/View;

.field private mIconIv:Landroid/widget/ImageView;

.field private mMsgTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcn/bingoogolapple/baseadapter/BGAEmptyView;)Lcn/bingoogolapple/baseadapter/BGAEmptyView$Delegate;
    .locals 0

    .line 34
    iget-object p0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mDelegate:Lcn/bingoogolapple/baseadapter/BGAEmptyView$Delegate;

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 59
    invoke-virtual {p0, v1}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mContentView:Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/bingoogolapple/baseadapter/R$layout;->bga_baseadapter_empty_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    sget v0, Lcn/bingoogolapple/baseadapter/R$id;->ll_bga_adapter_empty_view_root:I

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mEmptyView:Landroid/view/View;

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, v1}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mEmptyView:Landroid/view/View;

    .line 64
    invoke-virtual {p0, v2}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mContentView:Landroid/view/View;

    .line 67
    :goto_0
    sget v0, Lcn/bingoogolapple/baseadapter/R$id;->tv_bga_adapter_empty_view_msg:I

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mMsgTv:Landroid/widget/TextView;

    .line 68
    sget v0, Lcn/bingoogolapple/baseadapter/R$id;->iv_bga_adapter_empty_view_icon:I

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mIconIv:Landroid/widget/ImageView;

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mEmptyView:Landroid/view/View;

    new-instance v1, Lcn/bingoogolapple/baseadapter/BGAEmptyView$1;

    invoke-direct {v1, p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView$1;-><init>(Lcn/bingoogolapple/baseadapter/BGAEmptyView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mIconIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/bingoogolapple/baseadapter/BGAEmptyView$2;

    invoke-direct {v1, p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView$2;-><init>(Lcn/bingoogolapple/baseadapter/BGAEmptyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mMsgTv:Landroid/widget/TextView;

    new-instance v1, Lcn/bingoogolapple/baseadapter/BGAEmptyView$3;

    invoke-direct {v1, p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView$3;-><init>(Lcn/bingoogolapple/baseadapter/BGAEmptyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showEmptyView()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mContentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VT:",
            "Landroid/view/View;",
            ">(I)TVT;"
        }
    .end annotation

    .line 217
    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 48
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getChildCount()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->initView()V

    .line 52
    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->setListener()V

    .line 54
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->showContentView()V

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcn/bingoogolapple/baseadapter/BGAEmptyView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u53ea\u80fd\u6709\u4e00\u4e2a\u6216\u4e24\u4e2a\u5b50\u63a7\u4ef6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelegate(Lcn/bingoogolapple/baseadapter/BGAEmptyView$Delegate;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mDelegate:Lcn/bingoogolapple/baseadapter/BGAEmptyView$Delegate;

    return-void
.end method

.method public showContentView()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showEmptyView(II)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->showEmptyView(Ljava/lang/String;I)V

    return-void
.end method

.method public showEmptyView(Ljava/lang/String;I)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mIconIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mMsgTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object p2, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mMsgTv:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->showEmptyView()V

    return-void
.end method

.method public showIconEmptyView(I)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mIconIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mMsgTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->showEmptyView()V

    return-void
.end method

.method public showTextEmptyView(I)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->showTextEmptyView(Ljava/lang/String;)V

    return-void
.end method

.method public showTextEmptyView(Ljava/lang/String;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mIconIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mMsgTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->mMsgTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0}, Lcn/bingoogolapple/baseadapter/BGAEmptyView;->showEmptyView()V

    return-void
.end method
