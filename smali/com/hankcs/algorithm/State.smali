.class public Lcom/hankcs/algorithm/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field protected final depth:I

.field private emits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private failure:Lcom/hankcs/algorithm/State;

.field private index:I

.field private success:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/hankcs/algorithm/State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lcom/hankcs/algorithm/State;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/hankcs/algorithm/State;->failure:Lcom/hankcs/algorithm/State;

    .line 58
    iput-object v0, p0, Lcom/hankcs/algorithm/State;->emits:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/hankcs/algorithm/State;->success:Ljava/util/Map;

    .line 84
    iput p1, p0, Lcom/hankcs/algorithm/State;->depth:I

    return-void
.end method

.method private nextState(Ljava/lang/Character;Z)Lcom/hankcs/algorithm/State;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->success:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hankcs/algorithm/State;

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 187
    iget p2, p0, Lcom/hankcs/algorithm/State;->depth:I

    if-nez p2, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addEmit(I)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->emits:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/hankcs/algorithm/State;->emits:Ljava/util/Set;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->emits:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEmit(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/hankcs/algorithm/State;->addEmit(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addState(Ljava/lang/Character;)Lcom/hankcs/algorithm/State;
    .locals 2

    .line 218
    invoke-virtual {p0, p1}, Lcom/hankcs/algorithm/State;->nextStateIgnoreRootState(Ljava/lang/Character;)Lcom/hankcs/algorithm/State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/hankcs/algorithm/State;

    iget v1, p0, Lcom/hankcs/algorithm/State;->depth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/hankcs/algorithm/State;-><init>(I)V

    .line 222
    iget-object v1, p0, Lcom/hankcs/algorithm/State;->success:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public emit()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->emits:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public failure()Lcom/hankcs/algorithm/State;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->failure:Lcom/hankcs/algorithm/State;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/hankcs/algorithm/State;->depth:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/hankcs/algorithm/State;->index:I

    return v0
.end method

.method public getLargestValueId()Ljava/lang/Integer;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->emits:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->emits:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/hankcs/algorithm/State;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->success:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSuccess()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/hankcs/algorithm/State;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->success:Ljava/util/Map;

    return-object v0
.end method

.method public getTransitions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/hankcs/algorithm/State;->success:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAcceptable()Z
    .locals 1

    .line 153
    iget v0, p0, Lcom/hankcs/algorithm/State;->depth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hankcs/algorithm/State;->emits:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextState(Ljava/lang/Character;)Lcom/hankcs/algorithm/State;
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/hankcs/algorithm/State;->nextState(Ljava/lang/Character;Z)Lcom/hankcs/algorithm/State;

    move-result-object p1

    return-object p1
.end method

.method public nextStateIgnoreRootState(Ljava/lang/Character;)Lcom/hankcs/algorithm/State;
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/hankcs/algorithm/State;->nextState(Ljava/lang/Character;Z)Lcom/hankcs/algorithm/State;

    move-result-object p1

    return-object p1
.end method

.method public setFailure(Lcom/hankcs/algorithm/State;[I)V
    .locals 1

    .line 173
    iput-object p1, p0, Lcom/hankcs/algorithm/State;->failure:Lcom/hankcs/algorithm/State;

    .line 174
    iget v0, p0, Lcom/hankcs/algorithm/State;->index:I

    iget p1, p1, Lcom/hankcs/algorithm/State;->index:I

    aput p1, p2, v0

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 268
    iput p1, p0, Lcom/hankcs/algorithm/State;->index:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "depth="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hankcs/algorithm/State;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ID="

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hankcs/algorithm/State;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emits="

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hankcs/algorithm/State;->emits:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hankcs/algorithm/State;->success:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failureID="

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hankcs/algorithm/State;->failure:Lcom/hankcs/algorithm/State;

    if-nez v1, :cond_0

    const-string v1, "-1"

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/hankcs/algorithm/State;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failure="

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hankcs/algorithm/State;->failure:Lcom/hankcs/algorithm/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
