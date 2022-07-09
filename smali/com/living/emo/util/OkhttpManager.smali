.class public Lcom/living/emo/util/OkhttpManager;
.super Ljava/lang/Object;
.source "OkhttpManager.java"


# static fields
.field private static mOkhttpManager:Lcom/living/emo/util/OkhttpManager;


# instance fields
.field private mTrustrCertificate:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/living/emo/util/OkhttpManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/living/emo/util/OkhttpManager;->mOkhttpManager:Lcom/living/emo/util/OkhttpManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/living/emo/util/OkhttpManager;

    invoke-direct {v0}, Lcom/living/emo/util/OkhttpManager;-><init>()V

    sput-object v0, Lcom/living/emo/util/OkhttpManager;->mOkhttpManager:Lcom/living/emo/util/OkhttpManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/living/emo/util/OkhttpManager;->mOkhttpManager:Lcom/living/emo/util/OkhttpManager;

    return-object v0
.end method

.method private getTrustManager()[Ljavax/net/ssl/TrustManager;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 49
    new-instance v1, Lcom/living/emo/util/OkhttpManager$1;

    invoke-direct {v1, p0}, Lcom/living/emo/util/OkhttpManager$1;-><init>(Lcom/living/emo/util/OkhttpManager;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public build()Lokhttp3/OkHttpClient;
    .locals 2

    .line 80
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/living/emo/util/OkhttpManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/living/emo/util/OkhttpManager;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 67
    new-instance v0, Lcom/living/emo/util/OkhttpManager$2;

    invoke-direct {v0, p0}, Lcom/living/emo/util/OkhttpManager$2;-><init>(Lcom/living/emo/util/OkhttpManager;)V

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    :try_start_0
    const-string v0, "SSL"

    .line 39
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/living/emo/util/OkhttpManager;->getTrustManager()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 41
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
