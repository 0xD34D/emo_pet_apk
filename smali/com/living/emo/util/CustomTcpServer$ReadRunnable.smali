.class public Lcom/living/emo/util/CustomTcpServer$ReadRunnable;
.super Ljava/lang/Object;
.source "CustomTcpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/util/CustomTcpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadRunnable"
.end annotation


# static fields
.field private static final FILE_END:Ljava/lang/String; = "finish"

.field private static final FILE_OK:Ljava/lang/String; = "ok"

.field private static final FILE_START:Ljava/lang/String; = "filestart"


# instance fields
.field private final ISO_ENCODE:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private mHandler:Landroid/os/Handler;

.field private os:Ljava/io/OutputStream;

.field socket:Ljava/net/Socket;

.field private task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/living/emo/util/CustomTcpServer;


# direct methods
.method public constructor <init>(Lcom/living/emo/util/CustomTcpServer;Ljava/net/Socket;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->this$0:Lcom/living/emo/util/CustomTcpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->socket:Ljava/net/Socket;

    .line 75
    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->is:Ljava/io/InputStream;

    .line 76
    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->os:Ljava/io/OutputStream;

    const-string p1, "ISO-8859-1"

    .line 78
    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->ISO_ENCODE:Ljava/lang/String;

    .line 94
    new-instance p1, Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;

    invoke-direct {p1, p0}, Lcom/living/emo/util/CustomTcpServer$ReadRunnable$1;-><init>(Lcom/living/emo/util/CustomTcpServer$ReadRunnable;)V

    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->task:Ljava/lang/Runnable;

    .line 85
    iput-object p2, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->socket:Ljava/net/Socket;

    .line 87
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->is:Ljava/io/InputStream;

    .line 88
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->os:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/util/CustomTcpServer$ReadRunnable;)Ljava/io/InputStream;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->is:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/util/CustomTcpServer$ReadRunnable;)Ljava/io/OutputStream;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->os:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic access$302(Lcom/living/emo/util/CustomTcpServer$ReadRunnable;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private bufferToString(Ljava/io/InputStream;Ljava/lang/StringBuffer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    new-array v0, p3, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_2

    add-int v3, v2, p3

    if-gt v3, p3, :cond_0

    .line 182
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_1

    :cond_0
    sub-int v3, p3, v2

    .line 184
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    add-int/2addr v2, v3

    .line 190
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, v0, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 191
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 187
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u8bfb\u53d6\u56fe\u7247\u7ed3\u675f\u5206\u9694\u7b26\uff0c\u8bfb\u53d6\u5230\u4e86-1\uff0c\u8bf4\u660eSocket\u5df2\u7ecf\u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private readToBuffer(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 224
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v0, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 229
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "socket \u5df2\u65ad\u5f00\u8fde\u63a5"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeImage(Ljava/io/InputStream;Ljava/io/FileOutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_2

    add-int/lit16 v3, v2, 0x400

    if-gt v3, p3, :cond_0

    .line 200
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_1

    :cond_0
    sub-int v3, p3, v2

    .line 202
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    add-int/2addr v2, v3

    .line 208
    invoke-virtual {p2, v0, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "run: \u670d\u52a1\u5668\u5df2\u5173\u95ed\u8fde\u63a5"

    const-string v1, "TAG"

    const/4 v2, 0x0

    .line 116
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 118
    :cond_0
    iget-object v6, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 132
    invoke-static {}, Lcom/living/emo/bean/ImageBean;->getInstance()Lcom/living/emo/bean/ImageBean;

    move-result-object v6

    .line 138
    iget-object v7, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-direct {p0, v7, v3}, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->readToBuffer(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    .line 140
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "second:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v7, 0x3e8

    .line 141
    invoke-virtual {v3, v4, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v6}, Lcom/living/emo/bean/ImageBean;->getImageRaw()[B

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/living/emo/bean/ImageBean;->getImageRaw()[B

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_1

    .line 143
    iget-object v8, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->os:Ljava/io/OutputStream;

    invoke-virtual {v6}, Lcom/living/emo/bean/ImageBean;->getImageRaw()[B

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/OutputStream;->write([B)V

    .line 144
    iget-object v6, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->os:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 145
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "\u6587\u4ef6\u4f20\u8f93\u5b8c\u6210"

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 148
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(I)V

    .line 149
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->mHandler:Landroid/os/Handler;

    .line 150
    iget-object v8, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->task:Ljava/lang/Runnable;

    const-wide/32 v9, 0xea60

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    iget-object v6, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->is:Ljava/io/InputStream;

    const/4 v8, 0x2

    invoke-direct {p0, v6, v3, v8}, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->bufferToString(Ljava/io/InputStream;Ljava/lang/StringBuffer;I)V

    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "ok"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bufferToString:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    iget-object v5, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->task:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    invoke-virtual {v3, v4, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_2
    :try_start_1
    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 167
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 168
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->os:Ljava/io/OutputStream;

    :goto_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 169
    iput-object v2, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->mHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    .line 162
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :try_start_3
    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 167
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 168
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->os:Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    :goto_1
    return-void

    .line 165
    :goto_2
    :try_start_4
    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 167
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 168
    iget-object v0, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 169
    iput-object v2, p0, Lcom/living/emo/util/CustomTcpServer$ReadRunnable;->mHandler:Landroid/os/Handler;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 173
    :catch_2
    throw v3
.end method
