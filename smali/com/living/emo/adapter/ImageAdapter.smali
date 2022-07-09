.class public Lcom/living/emo/adapter/ImageAdapter;
.super Lcom/youth/banner/adapter/BannerAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/ImageAdapter$InnerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youth/banner/adapter/BannerAdapter<",
        "Lcom/living/emo/bean/DataBean;",
        "Lcom/living/emo/adapter/ImageAdapter$InnerHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/DataBean;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lcom/youth/banner/adapter/BannerAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onBindView(Lcom/living/emo/adapter/ImageAdapter$InnerHolder;Lcom/living/emo/bean/DataBean;II)V
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;->access$000(Lcom/living/emo/adapter/ImageAdapter$InnerHolder;)Landroid/widget/ImageView;

    move-result-object p3

    sget-object p4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    invoke-static {p1}, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;->access$100(Lcom/living/emo/adapter/ImageAdapter$InnerHolder;)Landroid/widget/ImageView;

    move-result-object p3

    iget-object p4, p2, Lcom/living/emo/bean/DataBean;->title:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    invoke-static {p1}, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;->access$000(Lcom/living/emo/adapter/ImageAdapter$InnerHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p2, Lcom/living/emo/bean/DataBean;->imageRes:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 23
    check-cast p1, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;

    check-cast p2, Lcom/living/emo/bean/DataBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/living/emo/adapter/ImageAdapter;->onBindView(Lcom/living/emo/adapter/ImageAdapter$InnerHolder;Lcom/living/emo/bean/DataBean;II)V

    return-void
.end method

.method public onCreateHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/ImageAdapter$InnerHolder;
    .locals 0

    const p2, 0x7f0c008b

    .line 32
    invoke-static {p1, p2}, Lcom/youth/banner/util/BannerUtils;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/ImageAdapter$InnerHolder;-><init>(Lcom/living/emo/adapter/ImageAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/ImageAdapter;->onCreateHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/ImageAdapter$InnerHolder;

    move-result-object p1

    return-object p1
.end method
