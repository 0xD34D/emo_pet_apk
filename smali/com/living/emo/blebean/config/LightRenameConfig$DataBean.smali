.class public Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;
.super Ljava/lang/Object;
.source "LightRenameConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/config/LightRenameConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private operation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;
    .locals 2

    .line 62
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;

    return-object p0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/living/emo/blebean/config/LightRenameConfig$DataBean;->operation:Ljava/lang/String;

    return-void
.end method
