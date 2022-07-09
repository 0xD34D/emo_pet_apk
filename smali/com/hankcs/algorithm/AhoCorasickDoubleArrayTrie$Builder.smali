.class Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;
.super Ljava/lang/Object;
.source "AhoCorasickDoubleArrayTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Builder"
.end annotation


# instance fields
.field private allocSize:I

.field private keySize:I

.field private nextCheckPos:I

.field private progress:I

.field private rootState:Lcom/hankcs/algorithm/State;

.field final synthetic this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

.field private used:[Z


# direct methods
.method private constructor <init>(Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    new-instance p1, Lcom/hankcs/algorithm/State;

    invoke-direct {p1}, Lcom/hankcs/algorithm/State;-><init>()V

    iput-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->rootState:Lcom/hankcs/algorithm/State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$1;)V
    .locals 0

    .line 682
    invoke-direct {p0, p1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;-><init>(Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;)V

    return-void
.end method

.method private addAllKeyword(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 779
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    .line 781
    invoke-direct {p0, v1, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->addKeyword(Ljava/lang/String;I)V

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addKeyword(Ljava/lang/String;I)V
    .locals 5

    .line 762
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->rootState:Lcom/hankcs/algorithm/State;

    .line 763
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v4, v1, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 765
    invoke-virtual {v0, v4}, Lcom/hankcs/algorithm/State;->addState(Ljava/lang/Character;)Lcom/hankcs/algorithm/State;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 767
    :cond_0
    invoke-virtual {v0, p2}, Lcom/hankcs/algorithm/State;->addEmit(I)V

    .line 768
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v0, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    aput p1, v0, p2

    return-void
.end method

.method private buildDoubleArrayTrie(I)V
    .locals 2

    const/4 v0, 0x0

    .line 843
    iput v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->progress:I

    .line 844
    iput p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->keySize:I

    const/high16 p1, 0x200000

    .line 845
    invoke-direct {p0, p1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->resize(I)I

    .line 847
    iget-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object p1, p1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    const/4 v1, 0x1

    aput v1, p1, v0

    .line 848
    iput v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->nextCheckPos:I

    .line 850
    iget-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->rootState:Lcom/hankcs/algorithm/State;

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/hankcs/algorithm/State;->getSuccess()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 853
    invoke-direct {p0, p1, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->fetch(Lcom/hankcs/algorithm/State;Ljava/util/List;)I

    .line 854
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 855
    invoke-direct {p0, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->insert(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private constructFailureStates()V
    .locals 7

    .line 790
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget v1, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->size:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->fail:[I

    .line 791
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget v1, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->size:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[I

    iput-object v1, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    .line 792
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 795
    iget-object v1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->rootState:Lcom/hankcs/algorithm/State;

    invoke-virtual {v1}, Lcom/hankcs/algorithm/State;->getStates()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hankcs/algorithm/State;

    .line 797
    iget-object v3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->rootState:Lcom/hankcs/algorithm/State;

    iget-object v4, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v4, v4, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->fail:[I

    invoke-virtual {v2, v3, v4}, Lcom/hankcs/algorithm/State;->setFailure(Lcom/hankcs/algorithm/State;[I)V

    .line 798
    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 799
    invoke-direct {p0, v2}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->constructOutput(Lcom/hankcs/algorithm/State;)V

    goto :goto_0

    .line 803
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 805
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hankcs/algorithm/State;

    .line 807
    invoke-virtual {v1}, Lcom/hankcs/algorithm/State;->getTransitions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 809
    invoke-virtual {v1, v3}, Lcom/hankcs/algorithm/State;->nextState(Ljava/lang/Character;)Lcom/hankcs/algorithm/State;

    move-result-object v4

    .line 810
    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 812
    invoke-virtual {v1}, Lcom/hankcs/algorithm/State;->failure()Lcom/hankcs/algorithm/State;

    move-result-object v5

    .line 813
    :goto_2
    invoke-virtual {v5, v3}, Lcom/hankcs/algorithm/State;->nextState(Ljava/lang/Character;)Lcom/hankcs/algorithm/State;

    move-result-object v6

    if-nez v6, :cond_1

    .line 815
    invoke-virtual {v5}, Lcom/hankcs/algorithm/State;->failure()Lcom/hankcs/algorithm/State;

    move-result-object v5

    goto :goto_2

    .line 817
    :cond_1
    invoke-virtual {v5, v3}, Lcom/hankcs/algorithm/State;->nextState(Ljava/lang/Character;)Lcom/hankcs/algorithm/State;

    move-result-object v3

    .line 818
    iget-object v5, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v5, v5, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->fail:[I

    invoke-virtual {v4, v3, v5}, Lcom/hankcs/algorithm/State;->setFailure(Lcom/hankcs/algorithm/State;[I)V

    .line 819
    invoke-virtual {v3}, Lcom/hankcs/algorithm/State;->emit()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/hankcs/algorithm/State;->addEmit(Ljava/util/Collection;)V

    .line 820
    invoke-direct {p0, v4}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->constructOutput(Lcom/hankcs/algorithm/State;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private constructOutput(Lcom/hankcs/algorithm/State;)V
    .locals 5

    .line 830
    invoke-virtual {p1}, Lcom/hankcs/algorithm/State;->emit()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 831
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 832
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v2, v1, [I

    .line 833
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 836
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v0, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->output:[[I

    invoke-virtual {p1}, Lcom/hankcs/algorithm/State;->getIndex()I

    move-result p1

    aput-object v2, v0, p1

    :cond_2
    :goto_1
    return-void
.end method

.method private fetch(Lcom/hankcs/algorithm/State;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hankcs/algorithm/State;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/hankcs/algorithm/State;",
            ">;>;)I"
        }
    .end annotation

    .line 741
    invoke-virtual {p1}, Lcom/hankcs/algorithm/State;->isAcceptable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    new-instance v0, Lcom/hankcs/algorithm/State;

    invoke-virtual {p1}, Lcom/hankcs/algorithm/State;->getDepth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    invoke-direct {v0, v1}, Lcom/hankcs/algorithm/State;-><init>(I)V

    .line 744
    invoke-virtual {p1}, Lcom/hankcs/algorithm/State;->getLargestValueId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hankcs/algorithm/State;->addEmit(I)V

    .line 745
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    invoke-virtual {p1}, Lcom/hankcs/algorithm/State;->getSuccess()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 749
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method private insert(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/hankcs/algorithm/State;",
            ">;>;)V"
        }
    .end annotation

    .line 890
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 891
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 893
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 895
    invoke-direct {p0, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->insert(Ljava/util/Queue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private insert(Ljava/util/Queue;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/hankcs/algorithm/State;",
            ">;>;>;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 906
    invoke-interface/range {p1 .. p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 907
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 910
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iget v6, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->nextCheckPos:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v4, v5

    .line 914
    iget v6, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->allocSize:I

    if-gt v6, v4, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 915
    invoke-direct {v0, v6}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->resize(I)I

    :cond_0
    move v6, v3

    move v7, v6

    :goto_0
    add-int/2addr v4, v5

    .line 923
    iget v8, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->allocSize:I

    if-gt v8, v4, :cond_1

    add-int/lit8 v8, v4, 0x1

    .line 924
    invoke-direct {v0, v8}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->resize(I)I

    .line 926
    :cond_1
    iget-object v8, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v8, v8, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    aget v8, v8, v4

    if-eqz v8, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    .line 933
    iput v4, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->nextCheckPos:I

    move v6, v5

    .line 937
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v4, v8

    .line 938
    iget v9, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->allocSize:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v8

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-gt v9, v10, :cond_5

    .line 941
    iget v9, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->keySize:I

    int-to-double v13, v9

    mul-double/2addr v13, v11

    iget v10, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->progress:I

    add-int/lit8 v15, v10, 0x1

    move/from16 v16, v6

    int-to-double v5, v15

    div-double/2addr v13, v5

    const-wide v5, 0x3ff0cccccccccccdL    # 1.05

    cmpl-double v13, v5, v13

    if-lez v13, :cond_4

    goto :goto_1

    :cond_4
    int-to-double v5, v9

    mul-double/2addr v5, v11

    add-int/lit8 v10, v10, 0x1

    int-to-double v9, v10

    div-double/2addr v5, v9

    .line 942
    :goto_1
    iget v9, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->allocSize:I

    int-to-double v9, v9

    mul-double/2addr v9, v5

    double-to-int v5, v9

    invoke-direct {v0, v5}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->resize(I)I

    goto :goto_2

    :cond_5
    move/from16 v16, v6

    .line 945
    :goto_2
    iget-object v5, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->used:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x1

    .line 948
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 949
    iget-object v6, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v6, v6, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v8

    aget v6, v6, v9

    if-eqz v6, :cond_7

    :goto_4
    move/from16 v6, v16

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    int-to-double v5, v7

    mul-double/2addr v5, v11

    .line 961
    iget v3, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->nextCheckPos:I

    sub-int v3, v4, v3

    const/4 v7, 0x1

    add-int/2addr v3, v7

    int-to-double v9, v3

    div-double/2addr v5, v9

    const-wide v9, 0x3fee666666666666L    # 0.95

    cmpl-double v3, v5, v9

    if-ltz v3, :cond_9

    .line 962
    iput v4, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->nextCheckPos:I

    .line 963
    :cond_9
    iget-object v3, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->used:[Z

    aput-boolean v7, v3, v8

    .line 965
    iget-object v3, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget v4, v3, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->size:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v8

    add-int/2addr v5, v7

    if-le v4, v5, :cond_a

    iget-object v4, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget v4, v4, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->size:I

    goto :goto_5

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v8

    add-int/2addr v4, v7

    :goto_5
    iput v4, v3, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->size:I

    .line 967
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 969
    iget-object v5, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v5, v5, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v8

    aput v8, v5, v4

    goto :goto_6

    .line 972
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 974
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hankcs/algorithm/State;

    invoke-virtual {v5}, Lcom/hankcs/algorithm/State;->getSuccess()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 976
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hankcs/algorithm/State;

    invoke-direct {v0, v5, v4}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->fetch(Lcom/hankcs/algorithm/State;Ljava/util/List;)I

    move-result v5

    if-nez v5, :cond_c

    .line 978
    iget-object v4, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v4, v4, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hankcs/algorithm/State;

    invoke-virtual {v6}, Lcom/hankcs/algorithm/State;->getLargestValueId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    neg-int v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aput v6, v4, v5

    .line 979
    iget v4, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->progress:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->progress:I

    move-object/from16 v4, p1

    goto :goto_8

    :cond_c
    const/4 v7, 0x1

    .line 983
    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, p1

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 985
    :goto_8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hankcs/algorithm/State;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v5, v3}, Lcom/hankcs/algorithm/State;->setIndex(I)V

    goto/16 :goto_7

    .line 989
    :cond_d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 992
    iget-object v2, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v2, v2, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v8, v2, v1

    :cond_e
    return-void
.end method

.method private loseWeight()V
    .locals 5

    .line 1001
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget v0, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->size:I

    const v1, 0xffff

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 1002
    iget-object v2, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v2, v2, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    iget-object v3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget v3, v3, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1003
    iget-object v2, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iput-object v0, v2, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    .line 1005
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget v0, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->size:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 1006
    iget-object v1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v1, v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    iget-object v2, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget v2, v2, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->size:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    iget-object v1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iput-object v0, v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    return-void
.end method

.method private resize(I)I
    .locals 6

    .line 866
    new-array v0, p1, [I

    .line 867
    new-array v1, p1, [I

    .line 868
    new-array v2, p1, [Z

    .line 869
    iget v3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->allocSize:I

    if-lez v3, :cond_0

    .line 871
    iget-object v3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v3, v3, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    iget v4, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->allocSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    iget-object v3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v3, v3, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    iget v4, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->allocSize:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    iget-object v3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->used:[Z

    iget v4, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->allocSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    :cond_0
    iget-object v3, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iput-object v0, v3, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->base:[I

    .line 877
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iput-object v1, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->check:[I

    .line 878
    iput-object v2, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->used:[Z

    .line 880
    iput p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->allocSize:I

    return p1
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

    .line 718
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    .line 719
    iget-object v0, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->this$0:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    iget-object v1, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->v:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->l:[I

    .line 720
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 722
    invoke-direct {p0, p1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->addAllKeyword(Ljava/util/Collection;)V

    .line 724
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->buildDoubleArrayTrie(I)V

    const/4 p1, 0x0

    .line 725
    iput-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->used:[Z

    .line 727
    invoke-direct {p0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->constructFailureStates()V

    .line 728
    iput-object p1, p0, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->rootState:Lcom/hankcs/algorithm/State;

    .line 729
    invoke-direct {p0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Builder;->loseWeight()V

    return-void
.end method
