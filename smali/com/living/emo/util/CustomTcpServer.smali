.class public Lcom/living/emo/util/CustomTcpServer;
.super Ljava/lang/Object;
.source "CustomTcpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;,
        Lcom/living/emo/util/CustomTcpServer$ReadRunnable;
    }
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private mlistener:Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;

.field private serverSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->mlistener:Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;

    .line 29
    iput-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->serverSocket:Ljava/net/ServerSocket;

    .line 31
    iput-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$200(Lcom/living/emo/util/CustomTcpServer;)Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/living/emo/util/CustomTcpServer;->mlistener:Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;

    return-object p0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->serverSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$starServer$0$CustomTcpServer()V
    .locals 3

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isclosed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/util/CustomTcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/living/emo/util/CustomTcpServer;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;

    invoke-direct {v2, p0, v0}, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;-><init>(Lcom/living/emo/util/CustomTcpServer;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$stopServer$1$CustomTcpServer()V
    .locals 4

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 239
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->executorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "awaitTermination interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 248
    :try_start_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setServerNotifyMessageListener(Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->mlistener:Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;

    if-nez v0, :cond_0

    .line 258
    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer;->mlistener:Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;

    :cond_0
    return-void
.end method

.method public starServer(I)V
    .locals 1

    .line 35
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/living/emo/util/CustomTcpServer;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    :goto_0
    iget-object p1, p0, Lcom/living/emo/util/CustomTcpServer;->serverSocket:Ljava/net/ServerSocket;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x28

    .line 42
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 43
    new-instance v0, Lcom/living/emo/util/-$$Lambda$CustomTcpServer$kTsNiEX0DV6kFAxZtaTzWzEkhQw;

    invoke-direct {v0, p0}, Lcom/living/emo/util/-$$Lambda$CustomTcpServer$kTsNiEX0DV6kFAxZtaTzWzEkhQw;-><init>(Lcom/living/emo/util/CustomTcpServer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopServer()V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/living/emo/util/-$$Lambda$CustomTcpServer$IpdKgV8xdLLToZs4D1cVH_GXnRk;

    invoke-direct {v1, p0}, Lcom/living/emo/util/-$$Lambda$CustomTcpServer$IpdKgV8xdLLToZs4D1cVH_GXnRk;-><init>(Lcom/living/emo/util/CustomTcpServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
