.class public Lcom/living/emo/util/TcpServerUtil$ReadRunnable;
.super Ljava/lang/Object;
.source "TcpServerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/util/TcpServerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadRunnable"
.end annotation


# instance fields
.field private final DEFAULT_ENCODE:Ljava/lang/String;

.field private final DELIMITED_END:Ljava/lang/String;

.field private final FILE_END:Ljava/lang/String;

.field private final ISO_ENCODE:Ljava/lang/String;

.field private final MESSAGE_END:Ljava/lang/String;

.field public fileInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private is:Ljava/io/InputStream;

.field private os:Ljava/io/OutputStream;

.field socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/living/emo/util/TcpServerUtil;


# direct methods
.method public constructor <init>(Lcom/living/emo/util/TcpServerUtil;Ljava/net/Socket;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->this$0:Lcom/living/emo/util/TcpServerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->socket:Ljava/net/Socket;

    .line 67
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->is:Ljava/io/InputStream;

    .line 68
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->os:Ljava/io/OutputStream;

    const-string p1, "------"

    .line 71
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->DELIMITED_END:Ljava/lang/String;

    const-string p1, "#"

    .line 73
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->MESSAGE_END:Ljava/lang/String;

    const-string p1, "finish"

    .line 75
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->FILE_END:Ljava/lang/String;

    const-string p1, "UTF-8"

    .line 77
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->DEFAULT_ENCODE:Ljava/lang/String;

    const-string p1, "ISO-8859-1"

    .line 79
    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->ISO_ENCODE:Ljava/lang/String;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->fileInfo:Ljava/util/HashMap;

    .line 84
    iput-object p2, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->socket:Ljava/net/Socket;

    .line 86
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->is:Ljava/io/InputStream;

    .line 87
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->os:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private bufferToString(Ljava/io/InputStream;Ljava/lang/StringBuffer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    new-array v0, p3, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_2

    add-int v3, v2, p3

    if-gt v3, p3, :cond_0

    .line 171
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_1

    :cond_0
    sub-int v3, p3, v2

    .line 173
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    add-int/2addr v2, v3

    .line 179
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, v0, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 180
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 176
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u8bfb\u53d6\u56fe\u7247\u7ed3\u675f\u5206\u9694\u7b26\uff0c\u8bfb\u53d6\u5230\u4e86-1\uff0c\u8bf4\u660eSocket\u5df2\u7ecf\u7ed3\u675f"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private parseText(Ljava/lang/String;)V
    .locals 6

    const-string v0, ";"

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 204
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 205
    aget-object v2, p1, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->fileInfo:Ljava/util/HashMap;

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    .line 213
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v0, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 218
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 215
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

    .line 189
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_1

    :cond_0
    sub-int v3, p3, v2

    .line 191
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    add-int/2addr v2, v3

    .line 197
    invoke-virtual {p2, v0, v1, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "------"

    const-string v1, "finish"

    const-string v2, "ISO-8859-1"

    .line 96
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    :goto_0
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 98
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    invoke-direct {p0, v4, v3, v5}, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->bufferToString(Ljava/io/InputStream;Ljava/lang/StringBuffer;I)V

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "tag"

    if-eqz v4, :cond_1

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->this$0:Lcom/living/emo/util/TcpServerUtil;

    invoke-static {v0}, Lcom/living/emo/util/TcpServerUtil;->access$000(Lcom/living/emo/util/TcpServerUtil;)Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->this$0:Lcom/living/emo/util/TcpServerUtil;

    invoke-static {v0}, Lcom/living/emo/util/TcpServerUtil;->access$000(Lcom/living/emo/util/TcpServerUtil;)Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;->onFinish()V

    :cond_0
    const-string v0, "\u6587\u4ef6\u4f20\u8f93\u5b8c\u6210"

    .line 103
    invoke-static {v5, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    :goto_1
    const-string v4, "#"

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    .line 108
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-direct {p0, v4, v3}, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->readToBuffer(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 110
    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-static {v5, v7}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    .line 112
    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 113
    invoke-direct {p0, v7}, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->parseText(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->fileInfo:Ljava/util/HashMap;

    const-string v7, "name"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    iget-object v7, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->fileInfo:Ljava/util/HashMap;

    const-string v8, "filesize"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 116
    iget-object v8, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->fileInfo:Ljava/util/HashMap;

    const-string v9, "delimited"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 117
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 118
    invoke-static {}, Lcom/living/emo/MyApplication;->getInstance()Lcom/living/emo/MyApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/living/emo/MyApplication;->getRootDir()Ljava/io/File;

    move-result-object v9

    .line 119
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 120
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 125
    array-length v10, v9

    if-le v7, v10, :cond_4

    .line 126
    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 127
    iget-object v10, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->is:Ljava/io/InputStream;

    array-length v9, v9

    sub-int/2addr v7, v9

    invoke-direct {p0, v10, v4, v7}, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->writeImage(Ljava/io/InputStream;Ljava/io/FileOutputStream;I)V

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 130
    :cond_4
    invoke-virtual {v4, v9, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 131
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 134
    :goto_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    const-string v4, "\u6587\u4ef6\u4ee5\u4fdd\u5b58"

    .line 135
    invoke-static {v5, v4}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->this$0:Lcom/living/emo/util/TcpServerUtil;

    invoke-static {v4}, Lcom/living/emo/util/TcpServerUtil;->access$000(Lcom/living/emo/util/TcpServerUtil;)Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 137
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->this$0:Lcom/living/emo/util/TcpServerUtil;

    invoke-static {v4}, Lcom/living/emo/util/TcpServerUtil;->access$000(Lcom/living/emo/util/TcpServerUtil;)Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;->onSingleImage()V

    .line 139
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    iget-object v5, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    invoke-direct {p0, v5, v3, v7}, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->bufferToString(Ljava/io/InputStream;Ljava/lang/StringBuffer;I)V

    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 142
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 143
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->os:Ljava/io/OutputStream;

    const-string v5, "ok"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 144
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->os:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    .line 146
    :cond_6
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->os:Ljava/io/OutputStream;

    const-string v5, "error"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 147
    iget-object v4, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->os:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 156
    :cond_7
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 157
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 158
    :goto_4
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 153
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    :try_start_4
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 157
    iget-object v0, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    :goto_5
    return-void

    .line 156
    :goto_6
    :try_start_5
    iget-object v1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 157
    iget-object v1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 158
    iget-object v1, p0, Lcom/living/emo/util/TcpServerUtil$ReadRunnable;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 162
    :catch_2
    throw v0
.end method
