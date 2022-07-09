.class Lcom/living/emo/fragment/NotificationsFragment$3;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/living/emo/interfaces/IResultContrlView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/NotificationsFragment;->getArticle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/living/emo/interfaces/IResultContrlView<",
        "Lcom/living/emo/bean/domain/Article;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/NotificationsFragment;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/NotificationsFragment;I)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment$3;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    iput p2, p0, Lcom/living/emo/fragment/NotificationsFragment$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 2

    .line 239
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArticle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/living/emo/bean/domain/Article;)V
    .locals 2

    .line 231
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/living/emo/bean/domain/Article;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  getArticle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/living/emo/bean/domain/Article;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment$3;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-virtual {p1}, Lcom/living/emo/bean/domain/Article;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/fragment/NotificationsFragment;->loadWebview(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment$3;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/NotificationsFragment;->access$1000(Lcom/living/emo/fragment/NotificationsFragment;)Lcom/living/emo/util/NoticeCacheContent;

    move-result-object v0

    iget v1, p0, Lcom/living/emo/fragment/NotificationsFragment$3;->val$id:I

    invoke-virtual {p1}, Lcom/living/emo/bean/domain/Article;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/util/NoticeCacheContent;->setContext(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 228
    check-cast p1, Lcom/living/emo/bean/domain/Article;

    invoke-virtual {p0, p1}, Lcom/living/emo/fragment/NotificationsFragment$3;->success(Lcom/living/emo/bean/domain/Article;)V

    return-void
.end method
