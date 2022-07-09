.class public Lcom/living/emo/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/living/emo/MyApplication;


# instance fields
.field private rootDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 40
    sget-object v0, Lcom/living/emo/MyApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/living/emo/MyApplication;
    .locals 1

    .line 44
    sget-object v0, Lcom/living/emo/MyApplication;->mInstance:Lcom/living/emo/MyApplication;

    return-object v0
.end method

.method private initdir(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "httpserver"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/living/emo/MyApplication;->rootDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getRootDir()Ljava/io/File;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/living/emo/MyApplication;->rootDir:Ljava/io/File;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 21
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 22
    invoke-static {}, Lio/github/inflationx/viewpump/ViewPump;->builder()Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v0

    new-instance v1, Lio/github/inflationx/calligraphy3/CalligraphyInterceptor;

    new-instance v2, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    invoke-direct {v2}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;-><init>()V

    const-string v3, "fonts/Roboto-Medium.ttf"

    .line 25
    invoke-virtual {v2, v3}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->setDefaultFontPath(Ljava/lang/String;)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    move-result-object v2

    const v3, 0x7f04017d

    .line 26
    invoke-virtual {v2, v3}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->setFontAttrId(I)Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lio/github/inflationx/calligraphy3/CalligraphyConfig$Builder;->build()Lio/github/inflationx/calligraphy3/CalligraphyConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/github/inflationx/calligraphy3/CalligraphyInterceptor;-><init>(Lio/github/inflationx/calligraphy3/CalligraphyConfig;)V

    .line 23
    invoke-virtual {v0, v1}, Lio/github/inflationx/viewpump/ViewPump$Builder;->addInterceptor(Lio/github/inflationx/viewpump/Interceptor;)Lio/github/inflationx/viewpump/ViewPump$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lio/github/inflationx/viewpump/ViewPump$Builder;->build()Lio/github/inflationx/viewpump/ViewPump;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lio/github/inflationx/viewpump/ViewPump;->init(Lio/github/inflationx/viewpump/ViewPump;)V

    .line 29
    sget-object v0, Lcom/living/emo/MyApplication;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/living/emo/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/living/emo/MyApplication;->mContext:Landroid/content/Context;

    .line 32
    :cond_0
    sget-object v0, Lcom/living/emo/MyApplication;->mInstance:Lcom/living/emo/MyApplication;

    if-nez v0, :cond_1

    .line 33
    sput-object p0, Lcom/living/emo/MyApplication;->mInstance:Lcom/living/emo/MyApplication;

    .line 34
    invoke-direct {p0, p0}, Lcom/living/emo/MyApplication;->initdir(Landroid/content/Context;)V

    :cond_1
    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Lcom/living/emo/util/LogUtil;->init(Z)V

    return-void
.end method
