.class public Lcom/living/emo/fragment/NavToolFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "NavToolFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/TextBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAlert:Lcom/living/emo/fragment/AlertFragment;

.field private mCfm:Landroidx/fragment/app/FragmentManager;

.field mFrameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020c
    .end annotation
.end field

.field private mInfo:Lcom/living/emo/fragment/InfoFragment;

.field private mLight:Lcom/living/emo/fragment/LightFragment;

.field private mMPhoto:Lcom/living/emo/fragment/PhotoFragment;

.field mRadioGroup:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020d
    .end annotation
.end field

.field radio:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/fragment/NavToolFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/fragment/NavToolFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->radio:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->data:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/living/emo/fragment/NavToolFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/NavToolFragment;)Lcom/living/emo/fragment/InfoFragment;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/living/emo/fragment/NavToolFragment;->mInfo:Lcom/living/emo/fragment/InfoFragment;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/NavToolFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/NavToolFragment;->switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/living/emo/fragment/NavToolFragment;)Lcom/living/emo/fragment/PhotoFragment;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/living/emo/fragment/NavToolFragment;->mMPhoto:Lcom/living/emo/fragment/PhotoFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/NavToolFragment;)Lcom/living/emo/fragment/LightFragment;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/living/emo/fragment/NavToolFragment;->mLight:Lcom/living/emo/fragment/LightFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/fragment/NavToolFragment;)Lcom/living/emo/fragment/AlertFragment;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/living/emo/fragment/NavToolFragment;->mAlert:Lcom/living/emo/fragment/AlertFragment;

    return-object p0
.end method

.method private createRadioButton(Ljava/lang/Integer;I)Landroid/widget/RadioButton;
    .locals 3

    .line 109
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    const v1, 0x7f09018a

    if-ne p2, v1, :cond_0

    const/16 v1, 0xf

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup$LayoutParams;->setMarginStart(I)V

    .line 113
    :cond_0
    new-instance v1, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/living/emo/fragment/NavToolFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {v1, p2}, Landroid/widget/RadioButton;->setId(I)V

    return-object v1
.end method

.method private switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mCfm:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/living/emo/fragment/NavToolFragment;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/living/emo/fragment/NavToolFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/NavToolFragment$1;-><init>(Lcom/living/emo/fragment/NavToolFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method initFragment()V
    .locals 2

    .line 75
    new-instance v0, Lcom/living/emo/fragment/InfoFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/InfoFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mInfo:Lcom/living/emo/fragment/InfoFragment;

    .line 76
    iget-object v1, p0, Lcom/living/emo/fragment/NavToolFragment;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/living/emo/fragment/InfoFragment;->setData(Ljava/util/List;)V

    .line 77
    new-instance v0, Lcom/living/emo/fragment/PhotoFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/PhotoFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mMPhoto:Lcom/living/emo/fragment/PhotoFragment;

    .line 78
    new-instance v0, Lcom/living/emo/fragment/LightFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/LightFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mLight:Lcom/living/emo/fragment/LightFragment;

    .line 79
    new-instance v0, Lcom/living/emo/fragment/AlertFragment;

    invoke-direct {v0}, Lcom/living/emo/fragment/AlertFragment;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mAlert:Lcom/living/emo/fragment/AlertFragment;

    .line 80
    invoke-virtual {p0}, Lcom/living/emo/fragment/NavToolFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mCfm:Landroidx/fragment/app/FragmentManager;

    .line 81
    iget-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mInfo:Lcom/living/emo/fragment/InfoFragment;

    invoke-direct {p0, v0}, Lcom/living/emo/fragment/NavToolFragment;->switchFragment(Lcom/living/emo/fragment/AbstractBaseFragment;)V

    return-void
.end method

.method initView()V
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->radio:Ljava/util/HashMap;

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    iget-object v1, p0, Lcom/living/emo/fragment/NavToolFragment;->radio:Ljava/util/HashMap;

    const-string v2, "light"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 88
    iget-object v2, p0, Lcom/living/emo/fragment/NavToolFragment;->radio:Ljava/util/HashMap;

    const-string v3, "info"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 89
    iget-object v3, p0, Lcom/living/emo/fragment/NavToolFragment;->radio:Ljava/util/HashMap;

    const-string v4, "alert"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v4, p0, Lcom/living/emo/fragment/NavToolFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    const v5, 0x7f090235

    invoke-direct {p0, v0, v5}, Lcom/living/emo/fragment/NavToolFragment;->createRadioButton(Ljava/lang/Integer;I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0901ac

    invoke-direct {p0, v1, v4}, Lcom/living/emo/fragment/NavToolFragment;->createRadioButton(Ljava/lang/Integer;I)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 97
    iget-object v0, p0, Lcom/living/emo/fragment/NavToolFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f09004a

    invoke-direct {p0, v3, v1}, Lcom/living/emo/fragment/NavToolFragment;->createRadioButton(Ljava/lang/Integer;I)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz v2, :cond_3

    const v0, 0x7f09018a

    .line 100
    invoke-direct {p0, v2, v0}, Lcom/living/emo/fragment/NavToolFragment;->createRadioButton(Ljava/lang/Integer;I)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/living/emo/fragment/NavToolFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0070

    return v0
.end method

.method public setData(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/TextBean;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/living/emo/fragment/NavToolFragment;->radio:Ljava/util/HashMap;

    .line 124
    iput-object p2, p0, Lcom/living/emo/fragment/NavToolFragment;->data:Ljava/util/List;

    return-void
.end method
