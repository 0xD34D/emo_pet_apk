.class public Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/NetworkResponse$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkBean"
.end annotation


# instance fields
.field private connected:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;
    .locals 2

    .line 79
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;

    return-object p0
.end method


# virtual methods
.method public getConnected()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;->connected:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setConnected(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;->connected:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/living/emo/blebean/response/NetworkResponse$DataBean$NetworkBean;->name:Ljava/lang/String;

    return-void
.end method
