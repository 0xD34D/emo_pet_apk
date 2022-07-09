.class public final Lcom/opensource/svgaplayer/SVGAParser$Companion;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/SVGAParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGAParser$Companion;",
        "",
        "()V",
        "mShareParser",
        "Lcom/opensource/svgaplayer/SVGAParser;",
        "threadPoolExecutor",
        "Ljava/util/concurrent/ExecutorService;",
        "kotlin.jvm.PlatformType",
        "getThreadPoolExecutor$library_release",
        "()Ljava/util/concurrent/ExecutorService;",
        "setThreadPoolExecutor$library_release",
        "(Ljava/util/concurrent/ExecutorService;)V",
        "setThreadPoolExecutor",
        "",
        "executor",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "shareParser",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGAParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getThreadPoolExecutor$library_release()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 87
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParser;->access$getThreadPoolExecutor$cp()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final setThreadPoolExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    move-object v0, p0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAParser$Companion;

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->setThreadPoolExecutor$library_release(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final setThreadPoolExecutor$library_release(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/opensource/svgaplayer/SVGAParser;->access$setThreadPoolExecutor$cp(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final shareParser()Lcom/opensource/svgaplayer/SVGAParser;
    .locals 1

    .line 93
    invoke-static {}, Lcom/opensource/svgaplayer/SVGAParser;->access$getMShareParser$cp()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    return-object v0
.end method
