.class public Lcom/living/emo/model/TimeZoneConfig$DataBean;
.super Ljava/lang/Object;
.source "TimeZoneConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/model/TimeZoneConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/TimeZoneConfig$DataBean;
    .locals 2

    .line 50
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/TimeZoneConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/TimeZoneConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/living/emo/model/TimeZoneConfig$DataBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/living/emo/model/TimeZoneConfig$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/living/emo/model/TimeZoneConfig$DataBean;->offset:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/living/emo/model/TimeZoneConfig$DataBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/living/emo/model/TimeZoneConfig$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/living/emo/model/TimeZoneConfig$DataBean;->offset:I

    return-void
.end method
