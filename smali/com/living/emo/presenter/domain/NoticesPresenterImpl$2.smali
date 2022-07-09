.class Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;
.super Ljava/lang/Object;
.source "NoticesPresenterImpl.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->getArticle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/living/emo/bean/domain/Article;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;I)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    iput p2, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/living/emo/bean/domain/Article;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    invoke-static {p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->access$000(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)Lcom/living/emo/interfaces/IResultContrlView;

    move-result-object p1

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IResultContrlView;->failed(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/living/emo/bean/domain/Article;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/living/emo/bean/domain/Article;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResponse: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/domain/Article;

    invoke-virtual {v0}, Lcom/living/emo/bean/domain/Article;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const-string v0, "\u51fa\u9519\u4e86"

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 82
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/domain/Article;

    invoke-virtual {p1}, Lcom/living/emo/bean/domain/Article;->getErrcode()I

    move-result p1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    invoke-static {p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->access$000(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)Lcom/living/emo/interfaces/IResultContrlView;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IResultContrlView;->failed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/domain/Article;

    iget v0, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;->val$id:I

    invoke-virtual {p1, v0}, Lcom/living/emo/bean/domain/Article;->setId(I)V

    .line 86
    iget-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    invoke-static {p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->access$000(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)Lcom/living/emo/interfaces/IResultContrlView;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IResultContrlView;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    invoke-static {p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->access$000(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)Lcom/living/emo/interfaces/IResultContrlView;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IResultContrlView;->failed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
