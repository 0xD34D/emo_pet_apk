.class public Lcom/living/emo/bean/EmoUpdate;
.super Ljava/lang/Object;
.source "EmoUpdate.java"


# static fields
.field private static final instance:Lcom/living/emo/bean/EmoUpdate;


# instance fields
.field private isUpdate:Z

.field private mEmoVersion:I

.field private mEmoVersionName:Ljava/lang/String;

.field private mServerVersion:I

.field private mServerVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/living/emo/bean/EmoUpdate;

    invoke-direct {v0}, Lcom/living/emo/bean/EmoUpdate;-><init>()V

    sput-object v0, Lcom/living/emo/bean/EmoUpdate;->instance:Lcom/living/emo/bean/EmoUpdate;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/living/emo/bean/EmoUpdate;->mEmoVersionName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/living/emo/bean/EmoUpdate;->mServerVersionName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/living/emo/bean/EmoUpdate;->isUpdate:Z

    return-void
.end method

.method public static getInstance()Lcom/living/emo/bean/EmoUpdate;
    .locals 1

    .line 8
    sget-object v0, Lcom/living/emo/bean/EmoUpdate;->instance:Lcom/living/emo/bean/EmoUpdate;

    return-object v0
.end method


# virtual methods
.method public getEmoVersion()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/living/emo/bean/EmoUpdate;->mEmoVersion:I

    return v0
.end method

.method public getEmoVersionName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/living/emo/bean/EmoUpdate;->mEmoVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/living/emo/bean/EmoUpdate;->mServerVersion:I

    return v0
.end method

.method public getServerVersionName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/living/emo/bean/EmoUpdate;->mServerVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdate()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/living/emo/bean/EmoUpdate;->isUpdate:Z

    return v0
.end method

.method public setEmoVersion(I)V
    .locals 2

    .line 23
    iget v0, p0, Lcom/living/emo/bean/EmoUpdate;->mEmoVersion:I

    iget v1, p0, Lcom/living/emo/bean/EmoUpdate;->mServerVersion:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/living/emo/bean/EmoUpdate;->isUpdate:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/living/emo/bean/EmoUpdate;->isUpdate:Z

    .line 28
    :goto_0
    iput p1, p0, Lcom/living/emo/bean/EmoUpdate;->mEmoVersion:I

    return-void
.end method

.method public setEmoVersionName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/living/emo/bean/EmoUpdate;->mEmoVersionName:Ljava/lang/String;

    return-void
.end method

.method public setServerVersion(I)V
    .locals 1

    .line 44
    iget v0, p0, Lcom/living/emo/bean/EmoUpdate;->mEmoVersion:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/living/emo/bean/EmoUpdate;->isUpdate:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/living/emo/bean/EmoUpdate;->isUpdate:Z

    .line 49
    :goto_0
    iput p1, p0, Lcom/living/emo/bean/EmoUpdate;->mServerVersion:I

    return-void
.end method

.method public setServerVersionName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/living/emo/bean/EmoUpdate;->mServerVersionName:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/living/emo/bean/EmoUpdate;->isUpdate:Z

    return-void
.end method
