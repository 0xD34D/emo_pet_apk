.class final synthetic Lcom/google/android/play/core/assetpacks/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# static fields
.field static final a:Lcom/google/android/play/core/tasks/OnFailureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/g;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/g;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/g;->a:Lcom/google/android/play/core/tasks/OnFailureListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/assetpacks/i;->e(Ljava/lang/Exception;)V

    return-void
.end method
