.class public final synthetic Lcom/living/emo/util/-$$Lambda$CustomTcpServer$IpdKgV8xdLLToZs4D1cVH_GXnRk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/util/CustomTcpServer;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/util/CustomTcpServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/util/-$$Lambda$CustomTcpServer$IpdKgV8xdLLToZs4D1cVH_GXnRk;->f$0:Lcom/living/emo/util/CustomTcpServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/util/-$$Lambda$CustomTcpServer$IpdKgV8xdLLToZs4D1cVH_GXnRk;->f$0:Lcom/living/emo/util/CustomTcpServer;

    invoke-virtual {v0}, Lcom/living/emo/util/CustomTcpServer;->lambda$stopServer$1$CustomTcpServer()V

    return-void
.end method
