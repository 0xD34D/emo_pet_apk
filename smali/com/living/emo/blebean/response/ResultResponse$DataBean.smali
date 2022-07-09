.class public Lcom/living/emo/blebean/response/ResultResponse$DataBean;
.super Ljava/lang/Object;
.source "ResultResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/ResultResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private faces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse$DataBean;
    .locals 2

    .line 59
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    return-object p0
.end method


# virtual methods
.method public getFaces()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->faces:Ljava/util/HashMap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->result:I

    return v0
.end method

.method public setFaces(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->faces:Ljava/util/HashMap;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->result:I

    return-void
.end method
