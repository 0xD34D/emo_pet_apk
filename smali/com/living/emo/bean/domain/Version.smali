.class public Lcom/living/emo/bean/domain/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field private errcode:I

.field private errmsg:Ljava/lang/String;

.field private versionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version-name"
    .end annotation
.end field

.field private versionNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version-num"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrcode()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/living/emo/bean/domain/Version;->errcode:I

    return v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/living/emo/bean/domain/Version;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/living/emo/bean/domain/Version;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNum()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/living/emo/bean/domain/Version;->versionNum:I

    return v0
.end method

.method public setErrcode(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/living/emo/bean/domain/Version;->errcode:I

    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/living/emo/bean/domain/Version;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/living/emo/bean/domain/Version;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setVersionNum(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/living/emo/bean/domain/Version;->versionNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version{errcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/living/emo/bean/domain/Version;->errcode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errmsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/bean/domain/Version;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/bean/domain/Version;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", versionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/living/emo/bean/domain/Version;->versionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
