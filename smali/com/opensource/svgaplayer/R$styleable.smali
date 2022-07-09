.class public final Lcom/opensource/svgaplayer/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SVGAImageView:[I

.field public static final SVGAImageView_antiAlias:I = 0x0

.field public static final SVGAImageView_autoPlay:I = 0x1

.field public static final SVGAImageView_clearsAfterStop:I = 0x2

.field public static final SVGAImageView_fillMode:I = 0x3

.field public static final SVGAImageView_loopCount:I = 0x4

.field public static final SVGAImageView_source:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/opensource/svgaplayer/R$styleable;->SVGAImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04002e
        0x7f040036
        0x7f0400b0
        0x7f040165
        0x7f040240
        0x7f040328
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
