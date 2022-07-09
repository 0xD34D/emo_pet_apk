.class public final enum Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;
.super Ljava/lang/Enum;
.source "ShapeEntity.java"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/proto/ShapeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ELLIPSE:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

.field public static final enum KEEP:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

.field public static final enum RECT:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

.field public static final enum SHAPE:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 218
    new-instance v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    const-string v1, "SHAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->SHAPE:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    .line 223
    new-instance v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    const-string v3, "RECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->RECT:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    .line 228
    new-instance v3, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    const-string v5, "ELLIPSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->ELLIPSE:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    .line 233
    new-instance v5, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    const-string v7, "KEEP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->KEEP:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 214
    sput-object v7, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->$VALUES:[Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    .line 235
    const-class v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    invoke-static {v0}, Lcom/squareup/wire/ProtoAdapter;->newEnumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/RuntimeEnumAdapter;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    iput p3, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 251
    :cond_0
    sget-object p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->KEEP:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    return-object p0

    .line 250
    :cond_1
    sget-object p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->ELLIPSE:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    return-object p0

    .line 249
    :cond_2
    sget-object p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->RECT:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    return-object p0

    .line 248
    :cond_3
    sget-object p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->SHAPE:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;
    .locals 1

    .line 214
    const-class v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    return-object p0
.end method

.method public static values()[Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;
    .locals 1

    .line 214
    sget-object v0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->$VALUES:[Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    invoke-virtual {v0}, [Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;->value:I

    return v0
.end method
