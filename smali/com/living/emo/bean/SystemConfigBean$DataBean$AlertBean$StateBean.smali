.class public Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;
.super Ljava/lang/Object;
.source "SystemConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateBean"
.end annotation


# instance fields
.field private num:I

.field private on:I

.field private repeat:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;
    .locals 2

    .line 337
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;

    return-object p0
.end method


# virtual methods
.method public getNum()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->num:I

    return v0
.end method

.method public getOn()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->on:I

    return v0
.end method

.method public getRepeat()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->repeat:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->time:I

    return v0
.end method

.method public setNum(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->num:I

    return-void
.end method

.method public setOn(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->on:I

    return-void
.end method

.method public setRepeat(Ljava/lang/String;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->repeat:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTime(I)V
    .locals 0

    .line 353
    iput p1, p0, Lcom/living/emo/bean/SystemConfigBean$DataBean$AlertBean$StateBean;->time:I

    return-void
.end method
