.class final synthetic Lcom/google/android/play/core/assetpacks/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/ar;

.field private final b:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/ar;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ao;->a:Lcom/google/android/play/core/assetpacks/ar;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/ao;->b:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ao;->a:Lcom/google/android/play/core/assetpacks/ar;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ao;->b:Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/listener/b;->i(Ljava/lang/Object;)V

    return-void
.end method
