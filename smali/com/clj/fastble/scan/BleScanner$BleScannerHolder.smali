.class Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;
.super Ljava/lang/Object;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleScannerHolder"
.end annotation


# static fields
.field private static final sBleScanner:Lcom/clj/fastble/scan/BleScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/clj/fastble/scan/BleScanner;

    invoke-direct {v0}, Lcom/clj/fastble/scan/BleScanner;-><init>()V

    sput-object v0, Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;->sBleScanner:Lcom/clj/fastble/scan/BleScanner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/clj/fastble/scan/BleScanner;
    .locals 1

    .line 27
    sget-object v0, Lcom/clj/fastble/scan/BleScanner$BleScannerHolder;->sBleScanner:Lcom/clj/fastble/scan/BleScanner;

    return-object v0
.end method
