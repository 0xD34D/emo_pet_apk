.class public Lcom/living/emo/event/JsonEvent;
.super Ljava/lang/Object;
.source "JsonEvent.java"


# instance fields
.field private json:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/living/emo/event/JsonEvent;->json:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJson()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/living/emo/event/JsonEvent;->json:Ljava/lang/String;

    return-object v0
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/living/emo/event/JsonEvent;->json:Ljava/lang/String;

    return-void
.end method
