.class public Lcom/living/emo/bean/InteractBean;
.super Ljava/lang/Object;
.source "InteractBean.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDetails:Ljava/lang/String;

.field private mImgRes:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/living/emo/bean/InteractBean;->mTitle:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/living/emo/bean/InteractBean;->mImgRes:I

    .line 18
    iput-object p3, p0, Lcom/living/emo/bean/InteractBean;->mDescription:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/living/emo/bean/InteractBean;->mDetails:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/living/emo/bean/InteractBean;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/living/emo/bean/InteractBean;->mDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getImgRes()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/living/emo/bean/InteractBean;->mImgRes:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/living/emo/bean/InteractBean;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/living/emo/bean/InteractBean;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/living/emo/bean/InteractBean;->mDetails:Ljava/lang/String;

    return-void
.end method

.method public setImgRes(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/living/emo/bean/InteractBean;->mImgRes:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/living/emo/bean/InteractBean;->mTitle:Ljava/lang/String;

    return-void
.end method
