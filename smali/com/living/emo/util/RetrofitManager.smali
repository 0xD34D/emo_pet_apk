.class public Lcom/living/emo/util/RetrofitManager;
.super Ljava/lang/Object;
.source "RetrofitManager.java"


# static fields
.field static mRetrofitManager:Lcom/living/emo/util/RetrofitManager;


# instance fields
.field private mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/living/emo/util/RetrofitManager;->build()V

    return-void
.end method

.method public static getInstance()Lcom/living/emo/util/RetrofitManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/living/emo/util/RetrofitManager;->mRetrofitManager:Lcom/living/emo/util/RetrofitManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/living/emo/util/RetrofitManager;

    invoke-direct {v0}, Lcom/living/emo/util/RetrofitManager;-><init>()V

    sput-object v0, Lcom/living/emo/util/RetrofitManager;->mRetrofitManager:Lcom/living/emo/util/RetrofitManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/living/emo/util/RetrofitManager;->mRetrofitManager:Lcom/living/emo/util/RetrofitManager;

    return-object v0
.end method


# virtual methods
.method public build()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "https://app.living.ai/"

    .line 32
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 33
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/RetrofitManager;->mRetrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/living/emo/util/RetrofitManager;->mRetrofit:Lretrofit2/Retrofit;

    return-object v0
.end method
