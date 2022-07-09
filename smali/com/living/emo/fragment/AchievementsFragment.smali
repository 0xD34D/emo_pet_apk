.class public Lcom/living/emo/fragment/AchievementsFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "AchievementsFragment.java"


# instance fields
.field private currTime:J

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mDialog:Landroid/app/Dialog;

.field private mFm:Landroidx/fragment/app/FragmentManager;

.field public mLifeRec:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ab
    .end annotation
.end field

.field private mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

.field private mLifeTimeAdapter:Lcom/living/emo/adapter/LifeTimeAdapter;

.field private mLiftTimeFragment:Lcom/living/emo/fragment/LiftTimeFragment;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/bean/AchievementBean;",
            ">;"
        }
    .end annotation
.end field

.field private mSelctList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/living/emo/bean/AchievementBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->currTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/AchievementsFragment;Ljava/util/List;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/AchievementsFragment;->listParse(Ljava/util/List;)V

    return-void
.end method

.method private askDialog(Lcom/living/emo/bean/AchievementBean;)V
    .locals 3

    .line 97
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/living/emo/fragment/AchievementsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100ef

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mDialog:Landroid/app/Dialog;

    .line 98
    invoke-virtual {p0}, Lcom/living/emo/fragment/AchievementsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0056

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090033

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/living/emo/bean/AchievementBean;->getRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f090034

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 101
    invoke-virtual {p1}, Lcom/living/emo/bean/AchievementBean;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    iget-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 104
    iget-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 105
    iget-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 106
    iget-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x43a

    const/16 v1, 0x21c

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private listParse(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "TAG"

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 223
    iget-object v3, p0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listParse mSelctList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 233
    iget-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeAdapter:Lcom/living/emo/adapter/LifeTimeAdapter;

    iget-object v1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/living/emo/adapter/LifeTimeAdapter;->setDatas(Ljava/util/ArrayList;)V

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listParse: achievment size:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mFm:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v1, v1, Lcom/living/emo/activity/LifeTimeActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method initData()V
    .locals 16

    move-object/from16 v0, p0

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    .line 120
    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f080072

    const-string v4, "############"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 121
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v6, 0x7f10002d

    invoke-virtual {v0, v6}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v7, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 122
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100031

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f080088

    invoke-direct {v2, v8, v7, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/4 v7, 0x2

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 123
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v8, 0x7f100025

    invoke-virtual {v0, v8}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f080090

    invoke-direct {v2, v10, v9, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v10, 0x7f10001f

    invoke-virtual {v0, v10}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f080092

    invoke-direct {v2, v12, v11, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/4 v11, 0x4

    invoke-virtual {v1, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 125
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v12, 0x7f100021

    invoke-virtual {v0, v12}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080094

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/4 v13, 0x5

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 126
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v14, 0x7f100036

    invoke-virtual {v0, v14}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v14, 0x7f080096

    invoke-direct {v2, v14, v15, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/4 v14, 0x6

    invoke-virtual {v1, v14, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 127
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v15, 0x7f100035

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v13, 0x7f080098

    invoke-direct {v2, v13, v14, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/4 v13, 0x7

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 128
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v14, 0x7f100037

    invoke-virtual {v0, v14}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08009a

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x8

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v14, 0x7f100033

    invoke-virtual {v0, v14}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08009c

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x9

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 130
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v14, 0x7f10001c

    invoke-virtual {v0, v14}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08005f

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0xa

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 131
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v14, 0x7f100034

    invoke-virtual {v0, v14}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v13, 0x7f080061

    invoke-direct {v2, v13, v14, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0xb

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 132
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f10002a

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080063

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0xc

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 133
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100029

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080065

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0xd

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f10002e

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080067

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0xe

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 135
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f10001d

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080069

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0xf

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 136
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100028

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08006b

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x10

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08006d

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x11

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 138
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100030

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08006f

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x12

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 139
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080071

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x13

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 140
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f10002f

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080075

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x14

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100020

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080077

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x15

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 142
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f10002c

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080079

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x16

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 143
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100022

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08007b

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x17

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 144
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100024

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08007d

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x18

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 145
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100023

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08007f

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x19

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 146
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100032

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080081

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x1a

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 147
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080083

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x1b

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 148
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080085

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x1c

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 150
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f10001e

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08008f

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x1d

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 151
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100027

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08008b

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x1e

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 152
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f10002b

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f08008d

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x1f

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 153
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mSelctList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f100026

    invoke-virtual {v0, v13}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f080087

    invoke-direct {v2, v14, v13, v5}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x20

    invoke-virtual {v1, v13, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    .line 155
    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v13, 0x7f08005d

    const-string v14, "########"

    invoke-direct {v2, v13, v14, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v6}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v13, v6, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 157
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080073

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v8}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080089

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v9, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 159
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v10}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080091

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v12}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080093

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 161
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100036

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080095

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 162
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080097

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v5}, Lcom/living/emo/bean/AchievementBean;->setAvailable(Z)Lcom/living/emo/bean/AchievementBean;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 163
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100037

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080099

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 164
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100033

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08009b

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 165
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f10001c

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08005e

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100034

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080060

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 167
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f10002a

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080062

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 168
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100029

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080064

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f10002e

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080066

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 170
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f10001d

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080068

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 171
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100028

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08006a

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 172
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08006c

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v5}, Lcom/living/emo/bean/AchievementBean;->setAvailable(Z)Lcom/living/emo/bean/AchievementBean;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 173
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100030

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08006e

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 174
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080070

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x13

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 175
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f10002f

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080074

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 176
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100020

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080076

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x15

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 177
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f10002c

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080078

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100022

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08007a

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x17

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 179
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100024

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08007c

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x18

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 180
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100023

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08007e

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v5}, Lcom/living/emo/bean/AchievementBean;->setAvailable(Z)Lcom/living/emo/bean/AchievementBean;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 181
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100032

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080080

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1a

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 182
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080082

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v5}, Lcom/living/emo/bean/AchievementBean;->setAvailable(Z)Lcom/living/emo/bean/AchievementBean;

    move-result-object v2

    const/16 v3, 0x1b

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    invoke-virtual {v0, v15}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080084

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v5}, Lcom/living/emo/bean/AchievementBean;->setAvailable(Z)Lcom/living/emo/bean/AchievementBean;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 185
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f10001e

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08008e

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1d

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 186
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100027

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08008a

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1e

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f10002b

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08008c

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1f

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 188
    iget-object v1, v0, Lcom/living/emo/fragment/AchievementsFragment;->mList:Ljava/util/ArrayList;

    new-instance v2, Lcom/living/emo/bean/AchievementBean;

    const v3, 0x7f100026

    invoke-virtual {v0, v3}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080086

    invoke-direct {v2, v6, v3, v4}, Lcom/living/emo/bean/AchievementBean;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-array v1, v5, [I

    const/16 v2, 0x9

    aput v2, v1, v4

    .line 190
    invoke-static {v1}, Lcom/living/emo/blebean/util/BleRequestUtil;->request([I)Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v2, v0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v3, v0, Lcom/living/emo/fragment/AchievementsFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {v1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/living/emo/activity/LifeTimeActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method protected initEvent()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v0, v0, Lcom/living/emo/activity/LifeTimeActivity;->mUtilities_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$AchievementsFragment$NDIrIOdwz1KrQqeFGUhfK03Xg8I;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$AchievementsFragment$NDIrIOdwz1KrQqeFGUhfK03Xg8I;-><init>(Lcom/living/emo/fragment/AchievementsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView()V
    .locals 3

    .line 61
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 63
    invoke-virtual {p0}, Lcom/living/emo/fragment/AchievementsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/LifeTimeActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

    .line 64
    iget-object v0, v0, Lcom/living/emo/activity/LifeTimeActivity;->mUtilities_back:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/LifeTimeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mFm:Landroidx/fragment/app/FragmentManager;

    .line 66
    iget-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v0, v0, Lcom/living/emo/activity/LifeTimeActivity;->mTopTxtIv:Landroid/widget/ImageView;

    const v1, 0x7f080356

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v0, v0, Lcom/living/emo/activity/LifeTimeActivity;->mRoot:Landroid/widget/RelativeLayout;

    const v1, 0x7f080248

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/living/emo/fragment/AchievementsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/living/emo/adapter/LifeTimeAdapter;

    invoke-virtual {p0}, Lcom/living/emo/fragment/AchievementsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/living/emo/adapter/LifeTimeAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeAdapter:Lcom/living/emo/adapter/LifeTimeAdapter;

    .line 72
    new-instance v2, Lcom/living/emo/fragment/-$$Lambda$AchievementsFragment$wAXwGrZRxqP8eBFxjMMhtQMZvHE;

    invoke-direct {v2, p0, v0}, Lcom/living/emo/fragment/-$$Lambda$AchievementsFragment$wAXwGrZRxqP8eBFxjMMhtQMZvHE;-><init>(Lcom/living/emo/fragment/AchievementsFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/living/emo/adapter/LifeTimeAdapter;->setOnClickListener(Lcom/living/emo/adapter/LifeTimeAdapter$OnClickListener;)V

    .line 84
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/living/emo/fragment/AchievementsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 85
    iget-object v1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeRec:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeRec:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeAdapter:Lcom/living/emo/adapter/LifeTimeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    new-instance v0, Lcom/living/emo/fragment/LiftTimeFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/LiftTimeFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLiftTimeFragment:Lcom/living/emo/fragment/LiftTimeFragment;

    return-void
.end method

.method public synthetic lambda$initEvent$1$AchievementsFragment(Landroid/view/View;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLiftTimeFragment:Lcom/living/emo/fragment/LiftTimeFragment;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/AchievementsFragment;->switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V

    return-void
.end method

.method public synthetic lambda$initView$0$AchievementsFragment(Ljava/util/List;ILcom/living/emo/bean/AchievementBean;)V
    .locals 4

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/living/emo/fragment/AchievementsFragment;->currTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->currTime:J

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView: position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p3}, Lcom/living/emo/fragment/AchievementsFragment;->askDialog(Lcom/living/emo/bean/AchievementBean;)V

    .line 77
    iget-object p3, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "play"

    invoke-static {p2, p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->animRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/living/emo/activity/LifeTimeActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment;->mLifeTimeActivity:Lcom/living/emo/activity/LifeTimeActivity;

    const p2, 0x7f100083

    invoke-virtual {p0, p2}, Lcom/living/emo/fragment/AchievementsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/living/emo/activity/LifeTimeActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0061

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 241
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 242
    iget-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 245
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 197
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/living/emo/fragment/AchievementsFragment$1;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/AchievementsFragment$1;-><init>(Lcom/living/emo/fragment/AchievementsFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleAchievementsResponseParse;->achievements(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleAchievementsResponseParse$Callback;)V

    .line 207
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim_rsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    :cond_0
    return-void
.end method
