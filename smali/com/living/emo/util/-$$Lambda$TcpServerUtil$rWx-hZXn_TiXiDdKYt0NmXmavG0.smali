.class public final synthetic Lcom/living/emo/util/-$$Lambda$TcpServerUtil$rWx-hZXn_TiXiDdKYt0NmXmavG0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/util/TcpServerUtil;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/util/TcpServerUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/util/-$$Lambda$TcpServerUtil$rWx-hZXn_TiXiDdKYt0NmXmavG0;->f$0:Lcom/living/emo/util/TcpServerUtil;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/util/-$$Lambda$TcpServerUtil$rWx-hZXn_TiXiDdKYt0NmXmavG0;->f$0:Lcom/living/emo/util/TcpServerUtil;

    invoke-virtual {v0}, Lcom/living/emo/util/TcpServerUtil;->lambda$stopServer$1$TcpServerUtil()V

    return-void
.end method
