.class public Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/SystemConfigBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimezoneBean"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;
    .locals 2

    .line 487
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;

    return-object p0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 507
    iget v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;->offset:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 511
    iput p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$TimezoneBean;->offset:I

    return-void
.end method
