.class public Lcom/living/emo/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static division(II)F
    .locals 0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method public static format2Decimal(F)F
    .locals 3

    .line 60
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p0

    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getDecimalVolume()F
    .locals 3

    .line 51
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 53
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 54
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 55
    invoke-static {v2, v0}, Lcom/living/emo/util/MathUtil;->division(II)F

    move-result v0

    invoke-static {v0}, Lcom/living/emo/util/MathUtil;->twoDecimal(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 56
    invoke-static {v0, v1}, Lcom/living/emo/util/MathUtil;->multiplication(FF)F

    move-result v0

    invoke-static {v0}, Lcom/living/emo/util/MathUtil;->twoDecimal(F)F

    move-result v0

    return v0
.end method

.method public static multiplication(FF)F
    .locals 0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static twoDecimal(F)F
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    .line 21
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method
