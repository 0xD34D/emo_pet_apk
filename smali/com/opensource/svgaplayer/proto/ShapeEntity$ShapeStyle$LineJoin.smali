.class public final enum Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;
.super Ljava/lang/Enum;
.source "ShapeEntity.java"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineJoin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LineJoin_BEVEL:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

.field public static final enum LineJoin_MITER:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

.field public static final enum LineJoin_ROUND:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1318
    new-instance v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    const-string v1, "LineJoin_MITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->LineJoin_MITER:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    .line 1320
    new-instance v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    const-string v3, "LineJoin_ROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->LineJoin_ROUND:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    .line 1322
    new-instance v3, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    const-string v5, "LineJoin_BEVEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->LineJoin_BEVEL:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1317
    sput-object v5, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->$VALUES:[Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    .line 1324
    const-class v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    invoke-static {v0}, Lcom/squareup/wire/ProtoAdapter;->newEnumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/RuntimeEnumAdapter;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1329
    iput p3, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1339
    :cond_0
    sget-object p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->LineJoin_BEVEL:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    return-object p0

    .line 1338
    :cond_1
    sget-object p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->LineJoin_ROUND:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    return-object p0

    .line 1337
    :cond_2
    sget-object p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->LineJoin_MITER:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;
    .locals 1

    .line 1317
    const-class v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    return-object p0
.end method

.method public static values()[Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;
    .locals 1

    .line 1317
    sget-object v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->$VALUES:[Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    invoke-virtual {v0}, [Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1346
    iget v0, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;->value:I

    return v0
.end method
