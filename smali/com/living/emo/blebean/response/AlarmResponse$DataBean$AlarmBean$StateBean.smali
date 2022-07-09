.class public Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;
.super Ljava/lang/Object;
.source "AlarmResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateBean"
.end annotation


# instance fields
.field private index:I

.field private on:I

.field private recurrence:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;
    .locals 2

    .line 115
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;

    return-object p0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->index:I

    return v0
.end method

.method public getOn()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->on:I

    return v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->index:I

    return-void
.end method

.method public setOn(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->on:I

    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->recurrence:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->time:Ljava/lang/String;

    return-void
.end method
