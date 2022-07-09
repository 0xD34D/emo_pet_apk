.class public Lcom/living/emo/bean/EditInfoNameBean$DataBean;
.super Ljava/lang/Object;
.source "EditInfoNameBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/EditInfoNameBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private last_name:Ljava/lang/String;

.field private op:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectFromData(Ljava/lang/String;)Lcom/living/emo/bean/EditInfoNameBean$DataBean;
    .locals 2

    .line 49
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/EditInfoNameBean$DataBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/living/emo/bean/EditInfoNameBean$DataBean;

    return-object p0
.end method


# virtual methods
.method public getLast_name()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/living/emo/bean/EditInfoNameBean$DataBean;->last_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/living/emo/bean/EditInfoNameBean$DataBean;->op:Ljava/lang/String;

    return-object v0
.end method

.method public setLast_name(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/living/emo/bean/EditInfoNameBean$DataBean;->last_name:Ljava/lang/String;

    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/living/emo/bean/EditInfoNameBean$DataBean;->op:Ljava/lang/String;

    return-void
.end method
