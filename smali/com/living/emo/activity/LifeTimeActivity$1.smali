.class Lcom/living/emo/activity/LifeTimeActivity$1;
.super Ljava/lang/Object;
.source "LifeTimeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/LifeTimeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/LifeTimeActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/LifeTimeActivity;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/living/emo/activity/LifeTimeActivity$1;->this$0:Lcom/living/emo/activity/LifeTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/living/emo/activity/LifeTimeActivity$1;->this$0:Lcom/living/emo/activity/LifeTimeActivity;

    invoke-static {v0}, Lcom/living/emo/activity/LifeTimeActivity;->access$000(Lcom/living/emo/activity/LifeTimeActivity;)V

    return-void
.end method
