.class final Lcom/google/android/play/core/splitinstall/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/play/core/splitinstall/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/s;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/r;->d:Lcom/google/android/play/core/splitinstall/s;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/r;->a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iput p3, p0, Lcom/google/android/play/core/splitinstall/r;->b:I

    iput p4, p0, Lcom/google/android/play/core/splitinstall/r;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/r;->d:Lcom/google/android/play/core/splitinstall/s;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/r;->a:Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    iget v4, p0, Lcom/google/android/play/core/splitinstall/r;->b:I

    iget v5, p0, Lcom/google/android/play/core/splitinstall/r;->c:I

    new-instance v14, Lcom/google/android/play/core/splitinstall/a;

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->a()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->b()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->c()Ljava/util/List;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/play/core/splitinstall/a;-><init>(IIIJJLjava/util/List;Ljava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    invoke-virtual {v0, v14}, Lcom/google/android/play/core/splitinstall/s;->k(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
