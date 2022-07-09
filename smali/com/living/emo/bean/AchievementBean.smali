.class public Lcom/living/emo/bean/AchievementBean;
.super Ljava/lang/Object;
.source "AchievementBean.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private isAvailable:Z

.field private isReach:Z

.field private res:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/living/emo/bean/AchievementBean;->isAvailable:Z

    .line 22
    iput p1, p0, Lcom/living/emo/bean/AchievementBean;->res:I

    .line 23
    iput-object p2, p0, Lcom/living/emo/bean/AchievementBean;->desc:Ljava/lang/String;

    .line 24
    iput-boolean p3, p0, Lcom/living/emo/bean/AchievementBean;->isReach:Z

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/living/emo/bean/AchievementBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getRes()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/living/emo/bean/AchievementBean;->res:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/living/emo/bean/AchievementBean;->isAvailable:Z

    return v0
.end method

.method public isReach()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/living/emo/bean/AchievementBean;->isReach:Z

    return v0
.end method

.method public setAvailable(Z)Lcom/living/emo/bean/AchievementBean;
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/living/emo/bean/AchievementBean;->isAvailable:Z

    return-object p0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/living/emo/bean/AchievementBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public setReach(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/living/emo/bean/AchievementBean;->isReach:Z

    return-void
.end method

.method public setRes(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/living/emo/bean/AchievementBean;->res:I

    return-void
.end method
