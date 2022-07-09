.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;
.super Ljava/lang/Object;
.source "SVGAVideoShapeEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "sharedPath",
        "Landroid/graphics/Path;",
        "getSharedPath",
        "()Landroid/graphics/Path;",
        "library_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final sharedPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->sharedPath:Landroid/graphics/Path;

    return-void
.end method

.method public static final getSharedPath()Landroid/graphics/Path;
    .locals 1

    .line 15
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->sharedPath:Landroid/graphics/Path;

    return-object v0
.end method
