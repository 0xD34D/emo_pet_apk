.class Lcom/clj/fastble/BleManager$BleManagerHolder;
.super Ljava/lang/Object;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleManagerHolder"
.end annotation


# static fields
.field private static final sBleManager:Lcom/clj/fastble/BleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/clj/fastble/BleManager;

    invoke-direct {v0}, Lcom/clj/fastble/BleManager;-><init>()V

    sput-object v0, Lcom/clj/fastble/BleManager$BleManagerHolder;->sBleManager:Lcom/clj/fastble/BleManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/clj/fastble/BleManager;
    .locals 1

    .line 71
    sget-object v0, Lcom/clj/fastble/BleManager$BleManagerHolder;->sBleManager:Lcom/clj/fastble/BleManager;

    return-object v0
.end method
