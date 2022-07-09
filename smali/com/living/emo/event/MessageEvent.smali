.class public Lcom/living/emo/event/MessageEvent;
.super Ljava/lang/Object;
.source "MessageEvent.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/living/emo/event/MessageEvent;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/living/emo/event/MessageEvent;->data:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/living/emo/event/MessageEvent;->data:[B

    return-void
.end method
