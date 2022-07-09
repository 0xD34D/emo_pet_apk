.class public Lcom/living/emo/bean/AlarmBean;
.super Ljava/lang/Object;
.source "AlarmBean.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/living/emo/bean/AlarmBean;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private isUpdate:Z

.field private on:I

.field private recurrence:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/living/emo/bean/AlarmBean;->isUpdate:Z

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/living/emo/bean/AlarmBean;->index:I

    .line 6
    iput v0, p0, Lcom/living/emo/bean/AlarmBean;->on:I

    const-string v0, "00:00"

    .line 7
    iput-object v0, p0, Lcom/living/emo/bean/AlarmBean;->time:Ljava/lang/String;

    const-string v0, "everyday"

    .line 8
    iput-object v0, p0, Lcom/living/emo/bean/AlarmBean;->recurrence:Ljava/lang/String;

    const-string v0, "alarm"

    .line 9
    iput-object v0, p0, Lcom/living/emo/bean/AlarmBean;->tag:Ljava/lang/String;

    .line 12
    iput p1, p0, Lcom/living/emo/bean/AlarmBean;->index:I

    .line 13
    iput p2, p0, Lcom/living/emo/bean/AlarmBean;->on:I

    .line 14
    iput-object p3, p0, Lcom/living/emo/bean/AlarmBean;->time:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/living/emo/bean/AlarmBean;->recurrence:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/living/emo/bean/AlarmBean;->tag:Ljava/lang/String;

    .line 17
    iput-boolean p6, p0, Lcom/living/emo/bean/AlarmBean;->isUpdate:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/living/emo/bean/AlarmBean;)I
    .locals 1

    .line 81
    iget v0, p0, Lcom/living/emo/bean/AlarmBean;->index:I

    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getIndex()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/living/emo/bean/AlarmBean;

    invoke-virtual {p0, p1}, Lcom/living/emo/bean/AlarmBean;->compareTo(Lcom/living/emo/bean/AlarmBean;)I

    move-result p1

    return p1
.end method

.method public getIndex()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/living/emo/bean/AlarmBean;->index:I

    return v0
.end method

.method public getOn()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/living/emo/bean/AlarmBean;->on:I

    return v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/living/emo/bean/AlarmBean;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/living/emo/bean/AlarmBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/living/emo/bean/AlarmBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdate()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/living/emo/bean/AlarmBean;->isUpdate:Z

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/living/emo/bean/AlarmBean;->index:I

    return-void
.end method

.method public setOn(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/living/emo/bean/AlarmBean;->on:I

    return-void
.end method

.method public setRecurrence(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/living/emo/bean/AlarmBean;->recurrence:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/living/emo/bean/AlarmBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/living/emo/bean/AlarmBean;->time:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/living/emo/bean/AlarmBean;->isUpdate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmBean{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/living/emo/bean/AlarmBean;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/living/emo/bean/AlarmBean;->on:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/bean/AlarmBean;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", recurrence=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/bean/AlarmBean;->recurrence:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/bean/AlarmBean;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
