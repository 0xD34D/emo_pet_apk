.class public Lcom/living/emo/view/PreviewPicturePopWindow;
.super Landroid/widget/PopupWindow;
.source "PreviewPicturePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewPicturePopWindow"


# instance fields
.field private mDelete:Landroid/widget/ImageView;

.field private mDownload:Landroid/widget/ImageView;

.field private mFile:Ljava/io/File;

.field private mImage:Landroid/widget/ImageView;

.field private mListener:Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;

.field private final mPreview:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, v0, v0}, Landroid/widget/PopupWindow;-><init>(II)V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mFile:Ljava/io/File;

    .line 29
    iput-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mListener:Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;

    .line 33
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00d3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mPreview:Landroid/view/View;

    .line 34
    invoke-virtual {p0, v0}, Lcom/living/emo/view/PreviewPicturePopWindow;->setContentView(Landroid/view/View;)V

    const/16 v0, 0x10

    .line 35
    invoke-virtual {p0, v0}, Lcom/living/emo/view/PreviewPicturePopWindow;->setSoftInputMode(I)V

    .line 36
    invoke-virtual {p0, v3}, Lcom/living/emo/view/PreviewPicturePopWindow;->setClippingEnabled(Z)V

    .line 37
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/living/emo/view/PreviewPicturePopWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/living/emo/view/PreviewPicturePopWindow;->setOutsideTouchable(Z)V

    .line 39
    invoke-direct {p0}, Lcom/living/emo/view/PreviewPicturePopWindow;->initView()V

    .line 40
    invoke-direct {p0}, Lcom/living/emo/view/PreviewPicturePopWindow;->initEvents()V

    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/view/-$$Lambda$PreviewPicturePopWindow$oQsd45T7bHU68gKFTr77M50J-IM;

    invoke-direct {v1, p0}, Lcom/living/emo/view/-$$Lambda$PreviewPicturePopWindow$oQsd45T7bHU68gKFTr77M50J-IM;-><init>(Lcom/living/emo/view/PreviewPicturePopWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mDownload:Landroid/widget/ImageView;

    new-instance v1, Lcom/living/emo/view/-$$Lambda$PreviewPicturePopWindow$n0PULPIx__31AKKFh3lSWpaLw_8;

    invoke-direct {v1, p0}, Lcom/living/emo/view/-$$Lambda$PreviewPicturePopWindow$n0PULPIx__31AKKFh3lSWpaLw_8;-><init>(Lcom/living/emo/view/PreviewPicturePopWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mImage:Landroid/widget/ImageView;

    sget-object v1, Lcom/living/emo/view/-$$Lambda$PreviewPicturePopWindow$hLqw6aiv4xw_7S02f3Tp2kbtVzI;->INSTANCE:Lcom/living/emo/view/-$$Lambda$PreviewPicturePopWindow$hLqw6aiv4xw_7S02f3Tp2kbtVzI;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mPreview:Landroid/view/View;

    new-instance v1, Lcom/living/emo/view/-$$Lambda$PreviewPicturePopWindow$PHv1H5pV9A5hkHx4MEJETQvvkVM;

    invoke-direct {v1, p0}, Lcom/living/emo/view/-$$Lambda$PreviewPicturePopWindow$PHv1H5pV9A5hkHx4MEJETQvvkVM;-><init>(Lcom/living/emo/view/PreviewPicturePopWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mPreview:Landroid/view/View;

    const v1, 0x7f090245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mImage:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mPreview:Landroid/view/View;

    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mDelete:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mPreview:Landroid/view/View;

    const v1, 0x7f090244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mDownload:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic lambda$initEvents$2(Landroid/view/View;)V
    .locals 1

    const-string p0, "tag"

    const-string v0, "this is image"

    .line 55
    invoke-static {p0, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initEvents$0$PreviewPicturePopWindow(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mListener:Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mFile:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;->onDelete(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initEvents$1$PreviewPicturePopWindow(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mListener:Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mFile:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;->onDownload(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initEvents$3$PreviewPicturePopWindow(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/living/emo/view/PreviewPicturePopWindow;->dismiss()V

    return-void
.end method

.method public setData(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    iput-object p1, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mFile:Ljava/io/File;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setData file name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setOnClickEventListener(Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mListener:Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;

    if-nez v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/living/emo/view/PreviewPicturePopWindow;->mListener:Lcom/living/emo/view/PreviewPicturePopWindow$OnClickEventListener;

    :cond_0
    return-void
.end method
