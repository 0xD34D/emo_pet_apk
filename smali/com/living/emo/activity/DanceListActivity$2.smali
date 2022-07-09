.class Lcom/living/emo/activity/DanceListActivity$2;
.super Ljava/lang/Object;
.source "DanceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/DanceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DanceListActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DanceListActivity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/living/emo/activity/DanceListActivity$2;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$2;->this$0:Lcom/living/emo/activity/DanceListActivity;

    const-string v1, "Failed to sync data"

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/DanceListActivity;->showToast(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$2;->this$0:Lcom/living/emo/activity/DanceListActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DanceListActivity;->access$000(Lcom/living/emo/activity/DanceListActivity;)V

    return-void
.end method
