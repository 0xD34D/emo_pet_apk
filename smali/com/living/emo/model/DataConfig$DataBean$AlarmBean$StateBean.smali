.class public Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;
.super Ljava/lang/Object;
.source "DataConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/model/DataConfig$DataBean$AlarmBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateBean"
.end annotation


# instance fields
.field private on:I

.field private recurrence:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;
    .locals 2

    .line 170
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;

    return-object p0
.end method


# virtual methods
.method public getOn()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;->on:I

    return v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;->time:I

    return v0
.end method

.method public setOn(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;->on:I

    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;->recurrence:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTime(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/living/emo/model/DataConfig$DataBean$AlarmBean$StateBean;->time:I

    return-void
.end method
