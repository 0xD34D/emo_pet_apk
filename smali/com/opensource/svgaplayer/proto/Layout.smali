.class public final Lcom/opensource/svgaplayer/proto/Layout;
.super Lcom/squareup/wire/Message;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/proto/Layout$ProtoAdapter_Layout;,
        Lcom/opensource/svgaplayer/proto/Layout$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/opensource/svgaplayer/proto/Layout;",
        "Lcom/opensource/svgaplayer/proto/Layout$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/opensource/svgaplayer/proto/Layout;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_HEIGHT:Ljava/lang/Float;

.field public static final DEFAULT_WIDTH:Ljava/lang/Float;

.field public static final DEFAULT_X:Ljava/lang/Float;

.field public static final DEFAULT_Y:Ljava/lang/Float;

.field private static final serialVersionUID:J


# instance fields
.field public final height:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x4
    .end annotation
.end field

.field public final width:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x3
    .end annotation
.end field

.field public final x:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x1
    .end annotation
.end field

.field public final y:Ljava/lang/Float;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#FLOAT"
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/opensource/svgaplayer/proto/Layout$ProtoAdapter_Layout;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/proto/Layout$ProtoAdapter_Layout;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/proto/Layout;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/proto/Layout;->DEFAULT_X:Ljava/lang/Float;

    .line 27
    sput-object v0, Lcom/opensource/svgaplayer/proto/Layout;->DEFAULT_Y:Ljava/lang/Float;

    .line 29
    sput-object v0, Lcom/opensource/svgaplayer/proto/Layout;->DEFAULT_WIDTH:Ljava/lang/Float;

    .line 31
    sput-object v0, Lcom/opensource/svgaplayer/proto/Layout;->DEFAULT_HEIGHT:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 6

    .line 58
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/opensource/svgaplayer/proto/Layout;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Lokio/ByteString;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/opensource/svgaplayer/proto/Layout;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 63
    iput-object p1, p0, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    .line 64
    iput-object p2, p0, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    .line 65
    iput-object p3, p0, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    .line 66
    iput-object p4, p0, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Lcom/opensource/svgaplayer/proto/Layout;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 84
    :cond_1
    check-cast p1, Lcom/opensource/svgaplayer/proto/Layout;

    .line 85
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Layout;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/proto/Layout;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    iget-object v3, p1, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    .line 86
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    iget-object v3, p1, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    .line 87
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    iget-object v3, p1, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    .line 88
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    .line 89
    invoke-static {v1, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 94
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Layout;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 97
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 98
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 99
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 100
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 101
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_4
    return v0
.end method

.method public newBuilder()Lcom/opensource/svgaplayer/proto/Layout$Builder;
    .locals 2

    .line 71
    new-instance v0, Lcom/opensource/svgaplayer/proto/Layout$Builder;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/proto/Layout$Builder;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->x:Ljava/lang/Float;

    .line 73
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->y:Ljava/lang/Float;

    .line 74
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->width:Ljava/lang/Float;

    .line 75
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    iput-object v1, v0, Lcom/opensource/svgaplayer/proto/Layout$Builder;->height:Ljava/lang/Float;

    .line 76
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Layout;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/proto/Layout$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/proto/Layout;->newBuilder()Lcom/opensource/svgaplayer/proto/Layout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    if-eqz v1, :cond_0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    if-eqz v1, :cond_1

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    if-eqz v1, :cond_2

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    if-eqz v1, :cond_3

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Layout{"

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
