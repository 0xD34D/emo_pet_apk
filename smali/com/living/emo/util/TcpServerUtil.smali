.class public Lcom/living/emo/util/TcpServerUtil;
.super Ljava/lang/Object;
.source "TcpServerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;,
        Lcom/living/emo/util/TcpServerUtil$ReadRunnable;
    }
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private mlistener:Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->mlistener:Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

    .line 18
    iput-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->serverSocket:Ljava/net/ServerSocket;

    .line 20
    iput-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/util/TcpServerUtil;)Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/living/emo/util/TcpServerUtil;->mlistener:Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

    return-object p0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->serverSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$starServer$0$TcpServerUtil()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->mlistener:Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;->onServerStart()V

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isclosed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/util/TcpServerUtil;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/living/emo/util/TcpServerUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;

    invoke-direct {v2, p0, v0}, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;-><init>(Lcom/living/emo/util/TcpServerUtil;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$stopServer$1$TcpServerUtil()V
    .locals 4

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 228
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "awaitTermination interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 237
    :try_start_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setServerNotifyMessageListener(Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->mlistener:Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

    if-nez v0, :cond_0

    .line 247
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil;->mlistener:Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

    :cond_0
    return-void
.end method

.method public starServer(I)V
    .locals 1

    .line 24
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/living/emo/util/TcpServerUtil;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :goto_0
    iget-object p1, p0, Lcom/living/emo/util/TcpServerUtil;->serverSocket:Ljava/net/ServerSocket;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x28

    .line 31
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 32
    new-instance v0, Lcom/living/emo/util/-$$Lambda$TcpServerUtil$ce9Ga4KRrVVvV8ISiaJXCAgIDRc;

    invoke-direct {v0, p0}, Lcom/living/emo/util/-$$Lambda$TcpServerUtil$ce9Ga4KRrVVvV8ISiaJXCAgIDRc;-><init>(Lcom/living/emo/util/TcpServerUtil;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopServer()V
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/living/emo/util/-$$Lambda$TcpServerUtil$rWx-hZXn_TiXiDdKYt0NmXmavG0;

    invoke-direct {v1, p0}, Lcom/living/emo/util/-$$Lambda$TcpServerUtil$rWx-hZXn_TiXiDdKYt0NmXmavG0;-><init>(Lcom/living/emo/util/TcpServerUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
