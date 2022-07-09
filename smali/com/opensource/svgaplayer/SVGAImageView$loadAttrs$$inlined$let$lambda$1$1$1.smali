.class final Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;
.super Ljava/lang/Object;
.source "SVGAImageView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;->onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/opensource/svgaplayer/SVGAImageView$loadAttrs$2$1$callback$1$onComplete$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;

    iget-object v1, v1, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;

    iget-boolean v1, v1, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;->$antiAlias$inlined:Z

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setAntiAlias(Z)V

    .line 108
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 109
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/opensource/svgaplayer/SVGADrawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;

    iget-object v1, v1, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;

    iget-object v1, v1, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    const-string v2, "scaleType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGADrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;

    iget-boolean v0, v0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;->$autoPlay$inlined:Z

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGAImageView$loadAttrs$$inlined$let$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_2
    return-void
.end method
