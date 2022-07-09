.class public Lcom/living/emo/blebean/config/LightHslConfig$DataBean;
.super Ljava/lang/Object;
.source "LightHslConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/LightHslConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private hsl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private operation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/LightHslConfig$DataBean;
    .locals 2

    .line 64
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/LightHslConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/LightHslConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getHsl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/living/emo/blebean/config/LightHslConfig$DataBean;->hsl:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/living/emo/blebean/config/LightHslConfig$DataBean;->id:I

    return v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/living/emo/blebean/config/LightHslConfig$DataBean;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public setHsl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/living/emo/blebean/config/LightHslConfig$DataBean;->hsl:Ljava/util/List;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/living/emo/blebean/config/LightHslConfig$DataBean;->id:I

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/living/emo/blebean/config/LightHslConfig$DataBean;->operation:Ljava/lang/String;

    return-void
.end method
