.class public Lcom/living/emo/blebean/config/AlarmConfig$DataBean;
.super Ljava/lang/Object;
.source "AlarmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/AlarmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private index:I

.field private on:I

.field private operation:Ljava/lang/String;

.field private recurrence:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/AlarmConfig$DataBean;
    .locals 2

    .line 77
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->index:I

    return v0
.end method

.method public getOn()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->on:I

    return v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->index:I

    return-void
.end method

.method public setOn(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->on:I

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->operation:Ljava/lang/String;

    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->recurrence:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/living/emo/blebean/config/AlarmConfig$DataBean;->time:Ljava/lang/String;

    return-void
.end method
