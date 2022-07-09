.class public Lcom/living/emo/util/IntUtil;
.super Ljava/lang/Object;
.source "IntUtil.java"


# static fields
.field private static final DEFAULT_MAX_DIVISOR:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static intTOInArray(I)[I
    .locals 3

    .line 12
    div-int/lit16 v0, p0, 0x100

    .line 13
    rem-int/lit16 p0, p0, 0x100

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput v0, v1, p0

    return-object v1
.end method
