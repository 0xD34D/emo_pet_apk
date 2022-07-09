.class public Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;
.super Ljava/lang/Object;
.source "BGAAdapterViewHolder.java"


# instance fields
.field protected mConvertView:Landroid/view/View;

.field protected mViewHolderHelper:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->mConvertView:Landroid/view/View;

    .line 34
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    new-instance p2, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->mConvertView:Landroid/view/View;

    invoke-direct {p2, p1, v0}, Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p2, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->mViewHolderHelper:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    return-void
.end method

.method public static dequeueReusableAdapterViewHolder(Landroid/view/View;Landroid/view/ViewGroup;I)Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;
    .locals 0

    if-nez p0, :cond_0

    .line 48
    new-instance p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;

    invoke-direct {p0, p1, p2}, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    return-object p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;

    return-object p0
.end method


# virtual methods
.method public getConvertView()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getViewHolderHelper()Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/bingoogolapple/baseadapter/BGAAdapterViewHolder;->mViewHolderHelper:Lcn/bingoogolapple/baseadapter/BGAViewHolderHelper;

    return-object v0
.end method
