.class Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;
.super Ljava/lang/Object;
.source "CustomTcpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/util/CustomTcpServer$ReadRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/util/CustomTcpServer$ReadRunnable;


# direct methods
.method constructor <init>(Lcom/living/emo/util/CustomTcpServer$ReadRunnable;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;->this$1:Lcom/living/emo/util/CustomTcpServer$ReadRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-string v0, "TAG"

    const-string v1, "run: \u670d\u52a1\u5668\u5df2\u65ad\u5f00client\u8fde\u63a5"

    .line 98
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;->this$1:Lcom/living/emo/util/CustomTcpServer$ReadRunnable;

    iget-object v0, v0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 100
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;->this$1:Lcom/living/emo/util/CustomTcpServer$ReadRunnable;

    invoke-static {v0}, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->access$000(Lcom/living/emo/util/CustomTcpServer$ReadRunnable;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 101
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;->this$1:Lcom/living/emo/util/CustomTcpServer$ReadRunnable;

    invoke-static {v0}, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->access$100(Lcom/living/emo/util/CustomTcpServer$ReadRunnable;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 102
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;->this$1:Lcom/living/emo/util/CustomTcpServer$ReadRunnable;

    iget-object v0, v0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->this$0:Lcom/living/emo/util/CustomTcpServer;

    invoke-static {v0}, Lcom/living/emo/util/CustomTcpServer;->access$200(Lcom/living/emo/util/CustomTcpServer;)Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;->this$1:Lcom/living/emo/util/CustomTcpServer$ReadRunnable;

    iget-object v0, v0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->this$0:Lcom/living/emo/util/CustomTcpServer;

    invoke-static {v0}, Lcom/living/emo/util/CustomTcpServer;->access$200(Lcom/living/emo/util/CustomTcpServer;)Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/living/emo/util/CustomTcpServer$ServerNotifyMessageListener;->onTimeOut()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;->this$1:Lcom/living/emo/util/CustomTcpServer$ReadRunnable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->access$302(Lcom/living/emo/util/CustomTcpServer$ReadRunnable;Landroid/os/Handler;)Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
