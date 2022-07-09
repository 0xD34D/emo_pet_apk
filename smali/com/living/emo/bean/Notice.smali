.class public Lcom/living/emo/bean/Notice;
.super Ljava/lang/Object;
.source "Notice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/bean/Notice$DataBean;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private errcode:I

.field private errmsg:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/living/emo/bean/Notice;->errcode:I

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/living/emo/bean/Notice;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/Notice;
    .locals 2

    .line 38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/Notice;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/Notice;

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/living/emo/bean/Notice;->data:Ljava/util/List;

    return-object v0
.end method

.method public getErrcode()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/living/emo/bean/Notice;->errcode:I

    return v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/living/emo/bean/Notice;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/living/emo/bean/Notice;->version:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/living/emo/bean/Notice;->data:Ljava/util/List;

    return-void
.end method

.method public setErrcode(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/living/emo/bean/Notice;->errcode:I

    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/living/emo/bean/Notice;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/living/emo/bean/Notice;->version:I

    return-void
.end method
