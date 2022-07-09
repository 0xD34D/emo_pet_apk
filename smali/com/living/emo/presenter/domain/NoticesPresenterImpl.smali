.class public Lcom/living/emo/presenter/domain/NoticesPresenterImpl;
.super Ljava/lang/Object;
.source "NoticesPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/presenter/domain/NoticesPresenterImpl$NoticesAPI;
    }
.end annotation


# static fields
.field static sNoticesPresenter:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;


# instance fields
.field private mIResultContrlView:Lcom/living/emo/interfaces/IResultContrlView;

.field private mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://app.living.ai/"

    .line 41
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 42
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->mRetrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)Lcom/living/emo/interfaces/IResultContrlView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->mIResultContrlView:Lcom/living/emo/interfaces/IResultContrlView;

    return-object p0
.end method

.method public static getInstance()Lcom/living/emo/presenter/domain/NoticesPresenterImpl;
    .locals 1

    .line 33
    sget-object v0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->sNoticesPresenter:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    invoke-direct {v0}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;-><init>()V

    sput-object v0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->sNoticesPresenter:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    .line 36
    :cond_0
    sget-object v0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->sNoticesPresenter:Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    return-object v0
.end method


# virtual methods
.method public NoticesInfo()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->mRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$NoticesAPI;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$NoticesAPI;

    .line 50
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/living/emo/util/NoticeSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/NoticeSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/living/emo/util/NoticeSharedPreferences;->getVersion()I

    move-result v1

    .line 51
    invoke-interface {v0, v1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$NoticesAPI;->getNotice(I)Lretrofit2/Call;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$1;

    invoke-direct {v1, p0}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$1;-><init>(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getArticle(I)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->mRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$NoticesAPI;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$NoticesAPI;

    .line 76
    invoke-interface {v0, p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$NoticesAPI;->getArticle(I)Lretrofit2/Call;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl$2;-><init>(Lcom/living/emo/presenter/domain/NoticesPresenterImpl;I)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public setOnIResultContrlView(Lcom/living/emo/interfaces/IResultContrlView;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->mIResultContrlView:Lcom/living/emo/interfaces/IResultContrlView;

    return-void
.end method
