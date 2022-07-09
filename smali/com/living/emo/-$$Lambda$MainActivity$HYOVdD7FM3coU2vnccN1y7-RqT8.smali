.class public final synthetic Lcom/living/emo/-$$Lambda$MainActivity$HYOVdD7FM3coU2vnccN1y7-RqT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/MainActivity;

.field public final synthetic f$1:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/MainActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/-$$Lambda$MainActivity$HYOVdD7FM3coU2vnccN1y7-RqT8;->f$0:Lcom/living/emo/MainActivity;

    iput-object p2, p0, Lcom/living/emo/-$$Lambda$MainActivity$HYOVdD7FM3coU2vnccN1y7-RqT8;->f$1:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/-$$Lambda$MainActivity$HYOVdD7FM3coU2vnccN1y7-RqT8;->f$0:Lcom/living/emo/MainActivity;

    iget-object v1, p0, Lcom/living/emo/-$$Lambda$MainActivity$HYOVdD7FM3coU2vnccN1y7-RqT8;->f$1:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/living/emo/MainActivity;->lambda$goToActivity$11$MainActivity(Ljava/lang/Class;)V

    return-void
.end method
