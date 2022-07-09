.class public Lcom/living/emo/bean/NetBean;
.super Ljava/lang/Object;
.source "NetBean.java"


# instance fields
.field private netJosn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetJosn()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/living/emo/bean/NetBean;->netJosn:Ljava/lang/String;

    return-object v0
.end method

.method public setNetJosn(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/living/emo/bean/NetBean;->netJosn:Ljava/lang/String;

    return-void
.end method
