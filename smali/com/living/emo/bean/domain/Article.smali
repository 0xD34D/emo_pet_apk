.class public Lcom/living/emo/bean/domain/Article;
.super Ljava/lang/Object;
.source "Article.java"


# instance fields
.field private code:I

.field private content:Ljava/lang/String;

.field private errcode:I

.field private errmsg:Ljava/lang/String;

.field private id:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/living/emo/bean/domain/Article;->errcode:I

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/domain/Article;
    .locals 2

    .line 33
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/domain/Article;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/domain/Article;

    return-object p0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/living/emo/bean/domain/Article;->code:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/living/emo/bean/domain/Article;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getErrcode()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/living/emo/bean/domain/Article;->errcode:I

    return v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/living/emo/bean/domain/Article;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/living/emo/bean/domain/Article;->id:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/living/emo/bean/domain/Article;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/living/emo/bean/domain/Article;->code:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/living/emo/bean/domain/Article;->content:Ljava/lang/String;

    return-void
.end method

.method public setErrcode(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/living/emo/bean/domain/Article;->errcode:I

    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/living/emo/bean/domain/Article;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/living/emo/bean/domain/Article;->id:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/living/emo/bean/domain/Article;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Article{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/living/emo/bean/domain/Article;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/bean/domain/Article;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/bean/domain/Article;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
