.class public final Lcom/opensource/svgaplayer/SVGAVideoEntityKt;
.super Ljava/lang/Object;
.source "SVGAVideoEntity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "options",
        "Landroid/graphics/BitmapFactory$Options;",
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
.field private static final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->options:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method public static final synthetic access$getOptions$p()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/SVGAVideoEntityKt;->options:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method
