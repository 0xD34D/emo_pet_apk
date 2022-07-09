.class Lcom/living/emo/adapter/DiscMusicAdapter$1;
.super Ljava/lang/Object;
.source "DiscMusicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/adapter/DiscMusicAdapter;->onBindViewHolder(Lcom/living/emo/adapter/DiscMusicAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/adapter/DiscMusicAdapter;

.field final synthetic val$dataBean:Lcom/living/emo/bean/MusicBean$DataBean;


# direct methods
.method constructor <init>(Lcom/living/emo/adapter/DiscMusicAdapter;Lcom/living/emo/bean/MusicBean$DataBean;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/living/emo/adapter/DiscMusicAdapter$1;->this$0:Lcom/living/emo/adapter/DiscMusicAdapter;

    iput-object p2, p0, Lcom/living/emo/adapter/DiscMusicAdapter$1;->val$dataBean:Lcom/living/emo/bean/MusicBean$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/living/emo/adapter/DiscMusicAdapter$1;->this$0:Lcom/living/emo/adapter/DiscMusicAdapter;

    invoke-static {p1}, Lcom/living/emo/adapter/DiscMusicAdapter;->access$000(Lcom/living/emo/adapter/DiscMusicAdapter;)Lcom/living/emo/view/DiscWindow$PlayerItemListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/living/emo/adapter/DiscMusicAdapter$1;->this$0:Lcom/living/emo/adapter/DiscMusicAdapter;

    invoke-static {p1}, Lcom/living/emo/adapter/DiscMusicAdapter;->access$000(Lcom/living/emo/adapter/DiscMusicAdapter;)Lcom/living/emo/view/DiscWindow$PlayerItemListener;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/adapter/DiscMusicAdapter$1;->val$dataBean:Lcom/living/emo/bean/MusicBean$DataBean;

    invoke-interface {p1, v0}, Lcom/living/emo/view/DiscWindow$PlayerItemListener;->onPlayerItem(Lcom/living/emo/bean/MusicBean$DataBean;)V

    :cond_0
    return-void
.end method
