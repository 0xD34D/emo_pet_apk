.class final synthetic Lcom/google/android/play/core/assetpacks/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/ar;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/ar;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/aq;->a:Lcom/google/android/play/core/assetpacks/ar;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/aq;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/aq;->a:Lcom/google/android/play/core/assetpacks/ar;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/aq;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/ar;->c(Landroid/os/Bundle;)V

    return-void
.end method
