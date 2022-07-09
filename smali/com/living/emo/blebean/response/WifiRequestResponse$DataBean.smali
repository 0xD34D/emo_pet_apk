.class public Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;
.super Ljava/lang/Object;
.source "WifiRequestResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/blebean/response/WifiRequestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;
    .locals 2

    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;

    return-object p0
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;->result:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;->list:Ljava/util/List;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/living/emo/blebean/response/WifiRequestResponse$DataBean;->result:I

    return-void
.end method
