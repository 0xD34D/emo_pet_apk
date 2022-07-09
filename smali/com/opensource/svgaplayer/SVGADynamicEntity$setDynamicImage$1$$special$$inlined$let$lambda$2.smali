.class final Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SVGADynamicEntity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1;->run()V
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
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$1$1$1$1",
        "com/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$1",
        "com/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$use$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $it:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$2;->$it:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1;

    iget-object v0, v0, Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1;->this$0:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$2;->$it:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$2;->this$0:Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1;

    iget-object v2, v2, Lcom/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1;->$forKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->setDynamicImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
