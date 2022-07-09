.class public Lcom/living/emo/bean/RecognitionBean;
.super Ljava/lang/Object;
.source "RecognitionBean.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/living/emo/bean/RecognitionBean;->id:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/living/emo/bean/RecognitionBean;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/living/emo/bean/RecognitionBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/living/emo/bean/RecognitionBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/living/emo/bean/RecognitionBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/living/emo/bean/RecognitionBean;->name:Ljava/lang/String;

    return-void
.end method
