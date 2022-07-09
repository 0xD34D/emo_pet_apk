.class Lcom/living/emo/activity/AmusementActivity$2;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Lcom/living/emo/bean/AmusementBean$AmusementResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/AmusementActivity;->onMessageEvent(Lcom/living/emo/event/MessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/AmusementActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/AmusementActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GameOver()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/AmusementActivity;->finish()V

    return-void
.end method

.method public dance()V
    .locals 0

    return-void
.end method

.method public dazzling()V
    .locals 0

    return-void
.end method

.method public error()V
    .locals 0

    return-void
.end method

.method public gameReady()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$2;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1200(Lcom/living/emo/activity/AmusementActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/AmusementActivity$2$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/AmusementActivity$2$1;-><init>(Lcom/living/emo/activity/AmusementActivity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public legShaking()V
    .locals 0

    return-void
.end method

.method public stay()V
    .locals 0

    return-void
.end method
