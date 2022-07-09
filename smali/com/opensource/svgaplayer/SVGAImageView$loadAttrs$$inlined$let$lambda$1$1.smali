.class public final Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;
.super Ljava/lang/Object;
.source "SVGAImageView.kt"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/opensource/svgaplayer/SVGAImageView$loadAttrs$2$1$callback$1",
        "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
        "onComplete",
        "",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "onError",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    new-instance v1, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;-><init>(Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
