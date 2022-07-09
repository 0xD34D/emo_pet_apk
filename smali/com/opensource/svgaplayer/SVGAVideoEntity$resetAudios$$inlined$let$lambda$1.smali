.class final Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SVGAVideoEntity.kt"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetAudios(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAVideoEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAVideoEntity.kt\ncom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$2$1\n*L\n1#1,230:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/media/SoundPool;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "<anonymous parameter 2>",
        "onLoadComplete",
        "com/opensource/svgaplayer/SVGAVideoEntity$resetAudios$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $audios:Ljava/util/List;

.field final synthetic $completionBlock$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $obj$inlined:Lcom/opensource/svgaplayer/proto/MovieEntity;

.field final synthetic $soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;->$soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;->$audios:Ljava/util/List;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;->this$0:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p4, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;->$completionBlock$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;->$obj$inlined:Lcom/opensource/svgaplayer/proto/MovieEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;->$soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 187
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;->$soundLoaded:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;->$audios:Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 188
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity$resetAudios$$inlined$let$lambda$1;->$completionBlock$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
