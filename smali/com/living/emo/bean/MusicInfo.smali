.class public Lcom/living/emo/bean/MusicInfo;
.super Ljava/lang/Object;
.source "MusicInfo.java"


# instance fields
.field private name:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/living/emo/bean/MusicInfo;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/living/emo/bean/MusicInfo;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/living/emo/bean/MusicInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/living/emo/bean/MusicInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/living/emo/bean/MusicInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/living/emo/bean/MusicInfo;->time:Ljava/lang/String;

    return-void
.end method
