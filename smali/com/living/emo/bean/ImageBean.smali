.class public Lcom/living/emo/bean/ImageBean;
.super Ljava/lang/Object;
.source "ImageBean.java"


# static fields
.field private static INSTANCE:Lcom/living/emo/bean/ImageBean;


# instance fields
.field imageRaw:[B

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "image.jpeg"

    .line 4
    iput-object v0, p0, Lcom/living/emo/bean/ImageBean;->name:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/living/emo/bean/ImageBean;
    .locals 2

    const-class v0, Lcom/living/emo/bean/ImageBean;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/living/emo/bean/ImageBean;->INSTANCE:Lcom/living/emo/bean/ImageBean;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/living/emo/bean/ImageBean;

    invoke-direct {v1}, Lcom/living/emo/bean/ImageBean;-><init>()V

    sput-object v1, Lcom/living/emo/bean/ImageBean;->INSTANCE:Lcom/living/emo/bean/ImageBean;

    .line 29
    :cond_0
    sget-object v1, Lcom/living/emo/bean/ImageBean;->INSTANCE:Lcom/living/emo/bean/ImageBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getImageRaw()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/living/emo/bean/ImageBean;->imageRaw:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/living/emo/bean/ImageBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setImageRaw([B)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/living/emo/bean/ImageBean;->imageRaw:[B

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/living/emo/bean/ImageBean;->name:Ljava/lang/String;

    return-void
.end method
