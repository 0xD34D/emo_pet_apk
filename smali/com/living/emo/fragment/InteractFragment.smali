.class public Lcom/living/emo/fragment/InteractFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "InteractFragment.java"


# instance fields
.field mInteractList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090279
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    return-void
.end method

.method private data()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/InteractBean;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Recognition"

    const v3, 0x7f080237

    const-string v4, "EMO can recognize faces."

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Games"

    const v3, 0x7f080233

    const-string v4, "EMO will be happy to play games with you."

    const-string v6, "You can use the App to play some games with EMO, or you can play some games directly by talking. Such as: Hey EMO, let\'s play angry EMO."

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Petting"

    const v3, 0x7f080232

    const-string v4, "Pet EMO with your love."

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Utilities"

    const v3, 0x7f080239

    const-string v4, "EMO is always ready to help."

    const-string v6, "You can ask EMO about the weather and time. You can also ask EMO to turn on the lights, take pictures, or set an alarm for you."

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Sensors"

    const v3, 0x7f080238

    const-string v4, "EMO can feel by various sensors."

    const-string v6, "EMO has many sensors. He could feel it when he was picked up or fell over. He can also see you blocking his way."

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Music"

    const v3, 0x7f080234

    const-string v4, "EMO loves to listen to music."

    const-string v6, "Ask EMO to listen to music, and he will be excited. Tips: let EMO listen to music more so that he can learn new dances."

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Questions"

    const v3, 0x7f080236

    const-string v4, "Ask EMO questions about him."

    const-string v6, "Ask emo about his age, favorite colors, favorite flowers, etc, and he will answer you."

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Easter eggs"

    const v3, 0x7f08022f

    const-string v4, "EMO can do little tricks as easter eggs."

    const-string v6, "Talk to emo, he might do little tricks. such as: Hey EMO, give me a cake. Or: Hey EMO, show laser eyes."

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Charging"

    const v3, 0x7f08022c

    const-string v4, "Don\'t forget to charge EMO."

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/living/emo/bean/InteractBean;

    const-string v2, "Shaking"

    const v3, 0x7f08023a

    const-string v4, "Shake EMO and see how he reacts."

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/living/emo/bean/InteractBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public initView()V
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcom/living/emo/fragment/InteractFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/InteractActivity;

    .line 29
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/living/emo/fragment/InteractFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 30
    iget-object v2, p0, Lcom/living/emo/fragment/InteractFragment;->mInteractList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 31
    iget-object v1, p0, Lcom/living/emo/fragment/InteractFragment;->mInteractList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/living/emo/adapter/InteractAdapter;

    invoke-direct {p0}, Lcom/living/emo/fragment/InteractFragment;->data()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/living/emo/adapter/InteractAdapter;-><init>(Ljava/util/List;Lcom/living/emo/activity/InteractActivity;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c006c

    return v0
.end method
