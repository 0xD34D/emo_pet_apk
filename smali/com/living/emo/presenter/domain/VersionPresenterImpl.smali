.class public Lcom/living/emo/presenter/domain/VersionPresenterImpl;
.super Ljava/lang/Object;
.source "VersionPresenterImpl.java"

# interfaces
.implements Lcom/living/emo/interfaces/IVersionPresenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "VersionPresenterImpl"


# instance fields
.field private mListener:Lcom/living/emo/interfaces/IVersionContrlView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->mListener:Lcom/living/emo/interfaces/IVersionContrlView;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/living/emo/presenter/domain/VersionPresenterImpl;)Lcom/living/emo/interfaces/IVersionContrlView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->mListener:Lcom/living/emo/interfaces/IVersionContrlView;

    return-object p0
.end method


# virtual methods
.method public getVersionInfo()V
    .locals 4

    .line 24
    :try_start_0
    invoke-static {}, Lcom/living/emo/util/RetrofitManager;->getInstance()Lcom/living/emo/util/RetrofitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/RetrofitManager;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    .line 25
    const-class v1, Lcom/living/emo/interfaces/Api;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/interfaces/Api;

    .line 26
    invoke-interface {v0}, Lcom/living/emo/interfaces/Api;->getVersionInfo()Lretrofit2/Call;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/living/emo/presenter/domain/VersionPresenterImpl$1;

    invoke-direct {v1, p0}, Lcom/living/emo/presenter/domain/VersionPresenterImpl$1;-><init>(Lcom/living/emo/presenter/domain/VersionPresenterImpl;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    sget-object v1, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVersionInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerControlView(Lcom/living/emo/interfaces/IVersionContrlView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->mListener:Lcom/living/emo/interfaces/IVersionContrlView;

    return-void
.end method

.method public bridge synthetic registerControlView(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/living/emo/interfaces/IVersionContrlView;

    invoke-virtual {p0, p1}, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->registerControlView(Lcom/living/emo/interfaces/IVersionContrlView;)V

    return-void
.end method

.method public unRegisterControlView()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/living/emo/presenter/domain/VersionPresenterImpl;->mListener:Lcom/living/emo/interfaces/IVersionContrlView;

    return-void
.end method
