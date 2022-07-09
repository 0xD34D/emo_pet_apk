.class Lcom/living/emo/adapter/MusicLeftListAdapter$1;
.super Ljava/lang/Object;
.source "MusicLeftListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/adapter/MusicLeftListAdapter;->onBindViewHolder(Lcom/living/emo/adapter/MusicLeftListAdapter$InnerHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/adapter/MusicLeftListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/living/emo/adapter/MusicLeftListAdapter;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/living/emo/adapter/MusicLeftListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicLeftListAdapter;

    iput p2, p0, Lcom/living/emo/adapter/MusicLeftListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/living/emo/adapter/MusicLeftListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicLeftListAdapter;

    invoke-static {p1}, Lcom/living/emo/adapter/MusicLeftListAdapter;->access$000(Lcom/living/emo/adapter/MusicLeftListAdapter;)Lcom/living/emo/view/LeftPopupWindow$PlayerItemListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/living/emo/adapter/MusicLeftListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicLeftListAdapter;

    invoke-static {p1}, Lcom/living/emo/adapter/MusicLeftListAdapter;->access$000(Lcom/living/emo/adapter/MusicLeftListAdapter;)Lcom/living/emo/view/LeftPopupWindow$PlayerItemListener;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/adapter/MusicLeftListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicLeftListAdapter;

    invoke-static {v0}, Lcom/living/emo/adapter/MusicLeftListAdapter;->access$100(Lcom/living/emo/adapter/MusicLeftListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/living/emo/adapter/MusicLeftListAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/MusicBean$DataBean;

    invoke-interface {p1, v0}, Lcom/living/emo/view/LeftPopupWindow$PlayerItemListener;->onPlayerItem(Lcom/living/emo/bean/MusicBean$DataBean;)V

    .line 47
    iget-object p1, p0, Lcom/living/emo/adapter/MusicLeftListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicLeftListAdapter;

    iget v0, p0, Lcom/living/emo/adapter/MusicLeftListAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcom/living/emo/adapter/MusicLeftListAdapter;->access$202(Lcom/living/emo/adapter/MusicLeftListAdapter;I)I

    .line 48
    iget-object p1, p0, Lcom/living/emo/adapter/MusicLeftListAdapter$1;->this$0:Lcom/living/emo/adapter/MusicLeftListAdapter;

    invoke-virtual {p1}, Lcom/living/emo/adapter/MusicLeftListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
