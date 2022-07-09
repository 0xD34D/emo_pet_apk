.class public Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;
.super Ljava/lang/Object;
.source "AhoCorasickDoubleArrayTrie.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;,
        Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;,
        Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHitCancellable;,
        Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHitFull;,
        Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected base:[I

.field protected check:[I

.field protected fail:[I

.field protected l:[I

.field protected output:[[I

.field protected size:I

.field protected v:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private exactMatchSearch(Ljava/lang/String;III)I
    .locals 6

    if-gtz p3, :cond_0

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_0
    move v2, p3

    if-gtz p4, :cond_1

    const/4 p4, 0x0

    :cond_1
    const/4 v3, -0x1

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 523
    iget-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    aget v5, p1, p4

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->getMatched(III[CI)I

    move-result p1

    return p1
.end method

.method private exactMatchSearch([CIII)I
    .locals 7

    .line 562
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    aget v6, v0, p4

    const/4 v4, -0x1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->getMatched(III[CI)I

    move-result p1

    return p1
.end method

.method private getMatched(III[CI)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 533
    aget-char v0, p4, p1

    add-int/2addr v0, p5

    add-int/lit8 v0, v0, 0x1

    .line 534
    iget-object v1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    aget v1, v1, v0

    if-ne p5, v1, :cond_0

    .line 535
    iget-object p5, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    aget p5, p5, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p3

    .line 541
    :cond_1
    iget-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    aget p1, p1, p5

    .line 542
    iget-object p2, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    aget p2, p2, p5

    if-ne p5, p2, :cond_2

    neg-int p1, p1

    add-int/lit8 p3, p1, -0x1

    :cond_2
    return p3
.end method

.method private getState(IC)I
    .locals 2

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->transitionWithRoot(IC)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->fail:[I

    aget p1, v0, p1

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->transitionWithRoot(IC)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private storeEmits(IILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    aget-object p2, v0, p2

    if-eqz p2, :cond_0

    .line 429
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    .line 431
    new-instance v3, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;

    iget-object v4, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    aget v4, v4, v2

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    aget-object v2, v5, v2

    invoke-direct {v3, v4, p1, v2}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;-><init>(IILjava/lang/Object;)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 488
    new-instance v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;-><init>(Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$1;)V

    invoke-virtual {v0, p1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->build(Ljava/util/Map;)V

    return-void
.end method

.method public exactMatchSearch(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 500
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->exactMatchSearch(Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public findFirst(Ljava/lang/String;)Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit<",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    .line 222
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 224
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->getState(IC)I

    move-result v3

    .line 225
    iget-object v4, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    .line 228
    aget p1, v4, v0

    .line 229
    new-instance v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;

    iget-object v2, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    aget v2, v2, p1

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    aget-object p1, v3, p1

    invoke-direct {v0, v2, v1, p1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;-><init>(IILjava/lang/Object;)V

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .line 278
    invoke-virtual {p0, p1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->exactMatchSearch(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public load(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    .line 263
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    .line 264
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->fail:[I

    .line 265
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    check-cast v0, [[I

    iput-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    .line 266
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    .line 267
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    return-void
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 200
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->getState(IC)I

    move-result v2

    .line 203
    iget-object v3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public parseText(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit<",
            "TV;>;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    .line 78
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 80
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->getState(IC)I

    move-result v3

    .line 81
    invoke-direct {p0, v4, v3, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->storeEmits(IILjava/util/List;)V

    add-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public parseText(Ljava/lang/CharSequence;Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHit;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHit<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 100
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->getState(IC)I

    move-result v3

    .line 101
    iget-object v4, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    .line 104
    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    .line 106
    iget-object v8, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    aget v8, v8, v7

    sub-int v8, v1, v8

    iget-object v9, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    aget-object v7, v9, v7

    invoke-interface {p2, v8, v1, v7}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHit;->hit(IILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parseText(Ljava/lang/CharSequence;Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHitCancellable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHitCancellable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 122
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 125
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->getState(IC)I

    move-result v2

    .line 126
    iget-object v1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 129
    array-length v4, v1

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v1, v5

    .line 131
    iget-object v7, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    aget v7, v7, v6

    sub-int v7, v3, v7

    iget-object v8, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    aget-object v6, v8, v6

    invoke-interface {p2, v7, v3, v6}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHitCancellable;->hit(IILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public parseText([CLcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHit;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHit<",
            "TV;>;)V"
        }
    .end annotation

    .line 151
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    aget-char v5, p1, v3

    .line 153
    invoke-direct {p0, v4, v5}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->getState(IC)I

    move-result v4

    .line 154
    iget-object v5, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    aget-object v5, v5, v4

    if-eqz v5, :cond_0

    .line 157
    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 159
    iget-object v9, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    aget v9, v9, v8

    sub-int v9, v2, v9

    iget-object v10, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    aget-object v8, v10, v8

    invoke-interface {p2, v9, v2, v8}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHit;->hit(IILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parseText([CLcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHitFull;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHitFull<",
            "TV;>;)V"
        }
    .end annotation

    .line 176
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    aget-char v5, p1, v3

    .line 178
    invoke-direct {p0, v4, v5}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->getState(IC)I

    move-result v4

    .line 179
    iget-object v5, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    aget-object v5, v5, v4

    if-eqz v5, :cond_0

    .line 182
    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 184
    iget-object v9, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    aget v9, v9, v8

    sub-int v9, v2, v9

    iget-object v10, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    aget-object v10, v10, v8

    invoke-interface {p2, v9, v2, v10, v8}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$IHitFull;->hit(IILjava/lang/Object;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public save(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->fail:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)Z"
        }
    .end annotation

    .line 296
    invoke-virtual {p0, p1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->exactMatchSearch(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    aput-object p2, v0, p1

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method protected transition(IC)I
    .locals 1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 449
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    aget v0, v0, p2

    if-ne p1, v0, :cond_0

    .line 450
    iget-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    aget p1, p1, p2

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected transitionWithRoot(IC)I
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    aget v0, v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 471
    iget-object v1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    aget v1, v1, p2

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    return p2
.end method
