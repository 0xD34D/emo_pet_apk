.class Lcom/living/emo/bean/BleBean$SingletonClassInstance;
.super Ljava/lang/Object;
.source "BleBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/bean/BleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonClassInstance"
.end annotation


# static fields
.field private static final instance:Lcom/living/emo/bean/BleBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/living/emo/bean/BleBean;

    invoke-direct {v0}, Lcom/living/emo/bean/BleBean;-><init>()V

    sput-object v0, Lcom/living/emo/bean/BleBean$SingletonClassInstance;->instance:Lcom/living/emo/bean/BleBean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/living/emo/bean/BleBean;
    .locals 1

    .line 14
    sget-object v0, Lcom/living/emo/bean/BleBean$SingletonClassInstance;->instance:Lcom/living/emo/bean/BleBean;

    return-object v0
.end method
