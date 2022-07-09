.class Lcom/living/emo/presenter/domain/NoticesPresenterImpl$1;
.super Ljava/lang/Object;
.source "NoticesPresenterImpl.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->NoticesInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/living/emo/bean/Notice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;


# direct methods
.method constructor <init>(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$1;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/living/emo/bean/Notice;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 69
    iget-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$1;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

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
            "Lcom/living/emo/bean/Notice;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/living/emo/bean/Notice;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResponse: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const-string v0, "\u51fa\u9519\u4e86"

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 57
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getErrcode()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$1;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    invoke-static {p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->access$000(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)Lcom/living/emo/interfaces/IResultContrlView;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IResultContrlView;->failed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$1;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    invoke-static {p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->access$000(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)Lcom/living/emo/interfaces/IResultContrlView;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IResultContrlView;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$1;->this$0:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    invoke-static {p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->access$000(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)Lcom/living/emo/interfaces/IResultContrlView;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IResultContrlView;->failed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
