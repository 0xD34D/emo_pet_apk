.class public Lcom/living/emo/adapter/PhotoListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PhotoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;,
        Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflate:Landroid/view/View;

.field private mListener:Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;

.field mdata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mdata:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mListener:Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mdata:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$PhotoListAdapter(Ljava/io/File;Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object p2, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mListener:Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;

    if-eqz p2, :cond_0

    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file name:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "tag"

    invoke-static {v0, p2}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mListener:Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;

    invoke-interface {p2, p1}, Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;->onClickItem(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/PhotoListAdapter;->onBindViewHolder(Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;I)V
    .locals 4

    const-string v0, "dd/MM/yyyy"

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1}, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;->setIsRecyclable(Z)V

    .line 51
    iget-object v2, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mdata:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 52
    iget-object v2, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mInflate:Landroid/view/View;

    new-instance v3, Lcom/living/emo/adapter/-$$Lambda$PhotoListAdapter$rA-rdbcenopvHq98ocaYh9UMSjY;

    invoke-direct {v3, p0, p2}, Lcom/living/emo/adapter/-$$Lambda$PhotoListAdapter$rA-rdbcenopvHq98ocaYh9UMSjY;-><init>(Lcom/living/emo/adapter/PhotoListAdapter;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 59
    iget-object v3, p1, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "."

    .line 61
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 62
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 67
    iget-object v1, p1, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "tag"

    const-string v1, "\u4f7f\u7528\u5f53\u524d\u65f6\u95f4"

    .line 70
    invoke-static {p2, v1}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 73
    iget-object p1, p1, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/living/emo/adapter/PhotoListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;
    .locals 2

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00e1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mInflate:Landroid/view/View;

    .line 35
    new-instance p2, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;

    invoke-direct {p2, p0, p1}, Lcom/living/emo/adapter/PhotoListAdapter$InnerHolder;-><init>(Lcom/living/emo/adapter/PhotoListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mdata:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mdata:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mdata:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0}, Lcom/living/emo/adapter/PhotoListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnClickItemListener(Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mListener:Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;

    if-nez v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/living/emo/adapter/PhotoListAdapter;->mListener:Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;

    :cond_0
    return-void
.end method
