.class public Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;
.super Ljava/lang/Object;
.source "AhoCorasickDoubleArrayTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final begin:I

.field public final end:I

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)V"
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->begin:I

    .line 388
    iput p2, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->end:I

    .line 389
    iput-object p3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 395
    iget v1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->begin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->end:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->value:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "[%d:%d]=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
