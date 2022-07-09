.class public Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;
.super Ljava/lang/Object;
.source "CustomizeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/CustomizeConfig$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageBean"
.end annotation


# instance fields
.field private length:I

.field private name:Ljava/lang/String;

.field private tran:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;
    .locals 2

    .line 142
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;

    return-object p0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;->length:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTran()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;->tran:I

    return v0
.end method

.method public setLength(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;->length:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setTran(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/living/emo/blebean/config/CustomizeConfig$DataBean$ImageBean;->tran:I

    return-void
.end method
