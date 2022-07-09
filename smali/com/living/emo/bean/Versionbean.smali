.class public Lcom/living/emo/bean/Versionbean;
.super Ljava/lang/Object;
.source "Versionbean.java"


# static fields
.field private static instance:Lcom/living/emo/bean/Versionbean;


# instance fields
.field private mData:Lcom/living/emo/bean/domain/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/living/emo/bean/Versionbean;->mData:Lcom/living/emo/bean/domain/Version;

    return-void
.end method

.method public static getInstance()Lcom/living/emo/bean/Versionbean;
    .locals 1

    .line 11
    sget-object v0, Lcom/living/emo/bean/Versionbean;->instance:Lcom/living/emo/bean/Versionbean;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/living/emo/bean/Versionbean;

    invoke-direct {v0}, Lcom/living/emo/bean/Versionbean;-><init>()V

    sput-object v0, Lcom/living/emo/bean/Versionbean;->instance:Lcom/living/emo/bean/Versionbean;

    .line 14
    :cond_0
    sget-object v0, Lcom/living/emo/bean/Versionbean;->instance:Lcom/living/emo/bean/Versionbean;

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/living/emo/bean/domain/Version;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/living/emo/bean/Versionbean;->mData:Lcom/living/emo/bean/domain/Version;

    return-object v0
.end method

.method public setData(Lcom/living/emo/bean/domain/Version;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/living/emo/bean/Versionbean;->mData:Lcom/living/emo/bean/domain/Version;

    return-void
.end method
