.class public Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;
.super Ljava/lang/Object;
.source "PersonalityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/PersonalityConfig$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonalityBean"
.end annotation


# instance fields
.field private age:I

.field private birthday:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private lucky_number:I

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;
    .locals 2

    .line 88
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;

    return-object p0
.end method


# virtual methods
.method public getAge()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->age:I

    return v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getLucky_number()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->lucky_number:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->age:I

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->color:Ljava/lang/String;

    return-void
.end method

.method public setLucky_number(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->lucky_number:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->number:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/living/emo/blebean/config/PersonalityConfig$DataBean$PersonalityBean;->sign:Ljava/lang/String;

    return-void
.end method
