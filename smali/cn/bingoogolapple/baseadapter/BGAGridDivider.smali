.class public Lcn/bingoogolapple/baseadapter/BGAGridDivider;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BGAGridDivider.java"


# instance fields
.field private mSpace:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 33
    iput p1, p0, Lcn/bingoogolapple/baseadapter/BGAGridDivider;->mSpace:I

    return-void
.end method

.method public static newInstanceWithSpaceDp(I)Lcn/bingoogolapple/baseadapter/BGAGridDivider;
    .locals 1

    .line 53
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGAGridDivider;

    int-to-float p0, p0

    invoke-static {p0}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->dp2px(F)I

    move-result p0

    invoke-direct {v0, p0}, Lcn/bingoogolapple/baseadapter/BGAGridDivider;-><init>(I)V

    return-object v0
.end method

.method public static newInstanceWithSpacePx(I)Lcn/bingoogolapple/baseadapter/BGAGridDivider;
    .locals 1

    .line 63
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGAGridDivider;

    invoke-direct {v0, p0}, Lcn/bingoogolapple/baseadapter/BGAGridDivider;-><init>(I)V

    return-object v0
.end method

.method public static newInstanceWithSpaceRes(I)Lcn/bingoogolapple/baseadapter/BGAGridDivider;
    .locals 1

    .line 43
    new-instance v0, Lcn/bingoogolapple/baseadapter/BGAGridDivider;

    invoke-static {p0}, Lcn/bingoogolapple/baseadapter/BGABaseAdapterUtil;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-direct {v0, p0}, Lcn/bingoogolapple/baseadapter/BGAGridDivider;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 68
    iget p2, p0, Lcn/bingoogolapple/baseadapter/BGAGridDivider;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 69
    iget p2, p0, Lcn/bingoogolapple/baseadapter/BGAGridDivider;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 70
    iget p2, p0, Lcn/bingoogolapple/baseadapter/BGAGridDivider;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 71
    iget p2, p0, Lcn/bingoogolapple/baseadapter/BGAGridDivider;->mSpace:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
