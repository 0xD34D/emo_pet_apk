.class Lcom/living/emo/util/OkhttpManager$2;
.super Ljava/lang/Object;
.source "OkhttpManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/util/OkhttpManager;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/util/OkhttpManager;


# direct methods
.method constructor <init>(Lcom/living/emo/util/OkhttpManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/living/emo/util/OkhttpManager$2;->this$0:Lcom/living/emo/util/OkhttpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
