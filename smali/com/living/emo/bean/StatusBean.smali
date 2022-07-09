.class public Lcom/living/emo/bean/StatusBean;
.super Ljava/lang/Object;
.source "StatusBean.java"


# instance fields
.field private rimg:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/living/emo/bean/StatusBean;->rimg:I

    .line 30
    iput-object p2, p0, Lcom/living/emo/bean/StatusBean;->text:Ljava/lang/String;

    return-void
.end method

.method public static getData()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/living/emo/bean/StatusBean;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800df

    const-string v3, "Being shaken"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "10"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d9

    const-string v3, "Being petted"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "20"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800e4

    const-string v3, "Picked up"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "31"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800cf

    const-string v3, "Falls down"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "32"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800ca

    const-string v3, "Charging"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "33"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800cb

    const-string v3, "Emerging from cliff"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "40"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d2

    const-string v3, "Headset change"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "51"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d5

    const-string v3, "Low power"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "52"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800c9

    const-string v3, "Obstacles detected"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "61"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d3

    const-string v3, "Sound detected"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "62"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d0

    const-string v3, "Playing games"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "90"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800e2

    const-string v3, "Having fun"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "100"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800dc

    const-string v3, "Listening"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "110"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800e1

    const-string v3, "Speaking"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "120"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d7

    const-string v3, "Playing music"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "130"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800cc

    const-string v3, "Dancing"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "140"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800e6

    const-string v3, "Being helpful"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "150"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d6

    const-string v3, "Moving"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "160"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800db

    const-string v3, "Answering questions"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "180"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800e5

    const-string v3, "Moving to target"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "190"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800ce

    const-string v3, "Looking at face"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v4, "200"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "210"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d8

    const-string v3, "Sees nonhuman"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "220"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800e3

    const-string v3, "Staying"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "230"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800e0

    const-string v3, "Sleeping"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "240"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d4

    const-string v3, "Looking around"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "270"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800d1

    const-string v3, "Being happy"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "281"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800dd

    const-string v3, "Being sad"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "282"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800cd

    const-string v3, "Exploring"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "290"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800de

    const-string v3, "Searching"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "300"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Lcom/living/emo/bean/StatusBean;

    const v2, 0x7f0800da

    const-string v3, "Playing"

    invoke-direct {v1, v2, v3}, Lcom/living/emo/bean/StatusBean;-><init>(ILjava/lang/String;)V

    const-string v2, "310"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getRimg()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/living/emo/bean/StatusBean;->rimg:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/living/emo/bean/StatusBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setRimg(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/living/emo/bean/StatusBean;->rimg:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/living/emo/bean/StatusBean;->text:Ljava/lang/String;

    return-void
.end method
