.class Lcom/living/emo/adapter/MusicRightListAdapter$1;
.super Ljava/lang/Object;
.source "MusicRightListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/adapter/MusicRightListAdapter;->onBindViewHolder(Lcom/living/emo/adapter/MusicRightListAdapter$InnerHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/adapter/MusicRightListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/living/emo/adapter/MusicRightListAdapter;I)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/living/emo/adapter/MusicRightListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicRightListAdapter;

    iput p2, p0, Lcom/living/emo/adapter/MusicRightListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/living/emo/adapter/MusicRightListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicRightListAdapter;

    invoke-static {p1}, Lcom/living/emo/adapter/MusicRightListAdapter;->access$000(Lcom/living/emo/adapter/MusicRightListAdapter;)Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/living/emo/adapter/MusicRightListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicRightListAdapter;

    invoke-static {p1}, Lcom/living/emo/adapter/MusicRightListAdapter;->access$000(Lcom/living/emo/adapter/MusicRightListAdapter;)Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/adapter/MusicRightListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicRightListAdapter;

    invoke-static {v0}, Lcom/living/emo/adapter/MusicRightListAdapter;->access$100(Lcom/living/emo/adapter/MusicRightListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/living/emo/adapter/MusicRightListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/MusicBean$DataBean;

    invoke-interface {p1, v0}, Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;->playerItemClick(Lcom/living/emo/bean/MusicBean$DataBean;)V

    .line 45
    iget-object p1, p0, Lcom/living/emo/adapter/MusicRightListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicRightListAdapter;

    iget v0, p0, Lcom/living/emo/adapter/MusicRightListAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcom/living/emo/adapter/MusicRightListAdapter;->access$202(Lcom/living/emo/adapter/MusicRightListAdapter;I)I

    .line 46
    iget-object p1, p0, Lcom/living/emo/adapter/MusicRightListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicRightListAdapter;

    invoke-virtual {p1}, Lcom/living/emo/adapter/MusicRightListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
