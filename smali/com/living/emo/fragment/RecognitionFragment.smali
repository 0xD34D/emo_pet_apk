.class public Lcom/living/emo/fragment/RecognitionFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "RecognitionFragment.java"


# instance fields
.field currRecog:Lcom/living/emo/bean/RecognitionBean;

.field private mAct:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/living/emo/activity/RecognitionActivity;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field mDelete:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090268
    .end annotation
.end field

.field mName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090269
    .end annotation
.end field

.field mNameCon:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026a
    .end annotation
.end field

.field mPeopleCon:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026b
    .end annotation
.end field

.field private mRecognitionAdapter:Lcom/living/emo/adapter/RecognitionAdapter;

.field mRecyFaces:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090267
    .end annotation
.end field

.field mRescan:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->currRecog:Lcom/living/emo/bean/RecognitionBean;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/living/emo/activity/RecognitionActivity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/RecognitionFragment;Ljava/lang/String;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/RecognitionFragment;->shadowSensitive(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/RecognitionFragment;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method private recognitionSYNC(Lcom/living/emo/blebean/response/ResultResponse$DataBean;)V
    .locals 5

    .line 370
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getFaces()Ljava/util/HashMap;

    move-result-object p1

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 373
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 374
    new-instance v1, Lcom/living/emo/bean/RecognitionBean;

    invoke-direct {v1, v2, v2}, Lcom/living/emo/bean/RecognitionBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 376
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    new-instance v2, Lcom/living/emo/bean/RecognitionBean;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/living/emo/bean/RecognitionBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_0
    new-instance p1, Lcom/living/emo/bean/RecognitionBean;

    invoke-direct {p1, v2, v2}, Lcom/living/emo/bean/RecognitionBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mRecognitionAdapter:Lcom/living/emo/adapter/RecognitionAdapter;

    invoke-virtual {p1, v0}, Lcom/living/emo/adapter/RecognitionAdapter;->setData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private shadowSensitive(Ljava/lang/String;)Z
    .locals 5

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mAct:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    invoke-virtual {p1, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->parseText(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "*"

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;

    .line 253
    iget v3, v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->begin:I

    :goto_0
    iget v4, v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie$Hit;->end:I

    if-ge v3, v4, :cond_0

    .line 254
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stringBuffer:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private writeSYNC()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/blebean/util/BleJsonUtil;->RecognitionSync()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/RecognitionActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method


# virtual methods
.method initData()V
    .locals 5

    .line 159
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/living/emo/fragment/RecognitionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 161
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 162
    invoke-virtual {v0, v4, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_0
    new-instance v1, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    invoke-direct {v1}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;-><init>()V

    iput-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mAct:Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;

    .line 165
    invoke-virtual {v1, v0}, Lcom/hankcs/algorithm/AhoCorasickDoubleArrayTrie;->build(Ljava/util/Map;)V

    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mDelete:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$RecognitionFragment$qXy0hY2ye5XlSsL03OwUH9juo_c;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$RecognitionFragment$qXy0hY2ye5XlSsL03OwUH9juo_c;-><init>(Lcom/living/emo/fragment/RecognitionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mNameCon:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$RecognitionFragment$wQ7cu-kQXOG_HDKnw9HEIq9f9cA;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$RecognitionFragment$wQ7cu-kQXOG_HDKnw9HEIq9f9cA;-><init>(Lcom/living/emo/fragment/RecognitionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mRescan:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$RecognitionFragment$sZk7brGGLEdWfOx2UkFEuwZGpV8;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$RecognitionFragment$sZk7brGGLEdWfOx2UkFEuwZGpV8;-><init>(Lcom/living/emo/fragment/RecognitionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mPeopleCon:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    invoke-virtual {p0}, Lcom/living/emo/fragment/RecognitionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/RecognitionActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    .line 172
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 174
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/living/emo/fragment/RecognitionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 175
    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mRecyFaces:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 176
    new-instance v0, Lcom/living/emo/adapter/RecognitionAdapter;

    invoke-direct {v0}, Lcom/living/emo/adapter/RecognitionAdapter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mRecognitionAdapter:Lcom/living/emo/adapter/RecognitionAdapter;

    .line 177
    new-instance v1, Lcom/living/emo/fragment/RecognitionFragment$3;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/RecognitionFragment$3;-><init>(Lcom/living/emo/fragment/RecognitionFragment;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/RecognitionAdapter;->setOnItemClickListener(Lcom/living/emo/adapter/RecognitionAdapter$onItemClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mRecyFaces:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mRecognitionAdapter:Lcom/living/emo/adapter/RecognitionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 241
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->SYN:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 242
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/blebean/util/BleJsonUtil;->RecognitionSync()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/RecognitionActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 243
    invoke-virtual {p0}, Lcom/living/emo/fragment/RecognitionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Syncing data from EMO"

    invoke-static {v0, v1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initEvent$0$RecognitionFragment(Landroid/view/View;)V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/living/emo/fragment/RecognitionFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/living/emo/fragment/RecognitionFragment$1;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/RecognitionFragment$1;-><init>(Lcom/living/emo/fragment/RecognitionFragment;)V

    const v1, 0x7f0c00d6

    const v2, 0x7f09026d

    const v3, 0x7f09026e

    invoke-static {p1, v1, v2, v3, v0}, Lcom/living/emo/view/RecognitionDeleteView;->showDialog(Landroid/content/Context;IIILcom/living/emo/view/RecognitionDeleteView$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initEvent$1$RecognitionFragment(Landroid/view/View;)V
    .locals 2

    .line 95
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    if-eq p1, v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->currRecog:Lcom/living/emo/bean/RecognitionBean;

    if-eqz p1, :cond_1

    .line 99
    new-instance p1, Lcom/living/emo/view/RecognitionNameView;

    invoke-direct {p1}, Lcom/living/emo/view/RecognitionNameView;-><init>()V

    .line 100
    new-instance v0, Lcom/living/emo/fragment/RecognitionFragment$2;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/RecognitionFragment$2;-><init>(Lcom/living/emo/fragment/RecognitionFragment;)V

    invoke-virtual {p1, v0}, Lcom/living/emo/view/RecognitionNameView;->setDialogClickListener(Lcom/living/emo/view/RecognitionNameView$onDialogClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/living/emo/fragment/RecognitionFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v0, v1}, Lcom/living/emo/view/RecognitionNameView;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initEvent$2$RecognitionFragment(Landroid/view/View;)V
    .locals 2

    .line 144
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    if-eq p1, v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->currRecog:Lcom/living/emo/bean/RecognitionBean;

    if-eqz p1, :cond_1

    .line 148
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->RESCAN:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    const/4 p1, 0x1

    .line 149
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->currRecog:Lcom/living/emo/bean/RecognitionBean;

    invoke-virtual {v0}, Lcom/living/emo/bean/RecognitionBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->Recognition(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/activity/RecognitionActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 151
    invoke-virtual {p0}, Lcom/living/emo/fragment/RecognitionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/living/emo/view/WaitScanView;->show(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0078

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 388
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 389
    invoke-static {}, Lcom/living/emo/view/WaitScanView;->dismiss()V

    .line 390
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 391
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:ToolPhotoActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 278
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 279
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    .line 280
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "face_rsp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 281
    invoke-virtual {v0}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p1

    .line 282
    sget-object v1, Lcom/living/emo/fragment/RecognitionFragment$4;->$SwitchMap$com$living$emo$activity$RecognitionActivity$State:[I

    sget-object v2, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    invoke-virtual {v2}, Lcom/living/emo/activity/RecognitionActivity$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x8

    const-string v3, "ID does not exist"

    const-string v4, "Face already exists"

    const-string v5, "success"

    const-string v6, "failed"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v1, v9, :cond_a

    if-eq v1, v8, :cond_a

    if-eq v1, v7, :cond_a

    const/4 v10, 0x4

    if-eq v1, v10, :cond_5

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_4

    if-eq p1, v9, :cond_3

    if-eq p1, v8, :cond_2

    if-eq p1, v7, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v3}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v4}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_3
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v5}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_4
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v6}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    .line 353
    :goto_0
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    goto/16 :goto_2

    :cond_5
    if-eqz p1, :cond_9

    if-eq p1, v9, :cond_8

    if-eq p1, v8, :cond_7

    if-eq p1, v7, :cond_6

    goto/16 :goto_2

    .line 331
    :cond_6
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 332
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 333
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v3}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 326
    :cond_7
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 327
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v4}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    .line 328
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    goto :goto_2

    .line 319
    :cond_8
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 320
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v5}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, v0}, Lcom/living/emo/fragment/RecognitionFragment;->recognitionSYNC(Lcom/living/emo/blebean/response/ResultResponse$DataBean;)V

    .line 322
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 323
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mPeopleCon:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 314
    :cond_9
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v6}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    .line 315
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 316
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    goto :goto_2

    :cond_a
    if-eqz p1, :cond_e

    if-eq p1, v9, :cond_d

    if-eq p1, v8, :cond_c

    if-eq p1, v7, :cond_b

    goto :goto_1

    .line 304
    :cond_b
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 305
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v3}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    goto :goto_1

    .line 299
    :cond_c
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v4}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    .line 300
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 301
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    goto :goto_1

    .line 293
    :cond_d
    invoke-virtual {p0}, Lcom/living/emo/fragment/RecognitionFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Syncing data from EMO"

    invoke-static {p1, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v5}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/living/emo/fragment/RecognitionFragment;->writeSYNC()V

    .line 296
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->SYN:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    goto :goto_1

    .line 288
    :cond_e
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mActivity:Lcom/living/emo/activity/RecognitionActivity;

    invoke-virtual {p1, v6}, Lcom/living/emo/activity/RecognitionActivity;->showToast(Ljava/lang/String;)V

    .line 289
    sget-object p1, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    sput-object p1, Lcom/living/emo/activity/RecognitionActivity;->currState:Lcom/living/emo/activity/RecognitionActivity$State;

    .line 290
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 309
    :goto_1
    iget-object p1, p0, Lcom/living/emo/fragment/RecognitionFragment;->mPeopleCon:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    :goto_2
    invoke-static {}, Lcom/living/emo/view/WaitScanView;->dismiss()V

    :cond_f
    return-void
.end method
