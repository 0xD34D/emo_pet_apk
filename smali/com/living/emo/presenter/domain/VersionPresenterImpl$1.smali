.class Lcom/living/emo/presenter/domain/VersionPresenterImpl$1;
.super Ljava/lang/Object;
.source "VersionPresenterImpl.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/presenter/domain/VersionPresenterImpl;->getVersionInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/living/emo/bean/domain/Version;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/presenter/domain/VersionPresenterImpl;


# direct methods
.method constructor <init>(Lcom/living/emo/presenter/domain/VersionPresenterImpl;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/living/emo/presenter/domain/VersionPresenterImpl$1;->this$0:Lcom/living/emo/presenter/domain/VersionPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/living/emo/bean/domain/Version;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/living/emo/bean/domain/Version;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/living/emo/bean/domain/Version;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/living/emo/presenter/domain/VersionPresenterImpl$1;->this$0:Lcom/living/emo/presenter/domain/VersionPresenterImpl;

    invoke-static {p1}, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->access$100(Lcom/living/emo/presenter/domain/VersionPresenterImpl;)Lcom/living/emo/interfaces/IVersionContrlView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-static {}, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/bean/domain/Version;

    invoke-virtual {v1}, Lcom/living/emo/bean/domain/Version;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/living/emo/presenter/domain/VersionPresenterImpl$1;->this$0:Lcom/living/emo/presenter/domain/VersionPresenterImpl;

    invoke-static {p1}, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->access$100(Lcom/living/emo/presenter/domain/VersionPresenterImpl;)Lcom/living/emo/interfaces/IVersionContrlView;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/living/emo/bean/domain/Version;

    invoke-interface {p1, p2}, Lcom/living/emo/interfaces/IVersionContrlView;->getVersionInfo(Lcom/living/emo/bean/domain/Version;)V

    :cond_0
    return-void
.end method
