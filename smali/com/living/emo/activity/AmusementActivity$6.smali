.class Lcom/living/emo/activity/AmusementActivity$6;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/AmusementActivity;
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

    .line 546
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$6;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 549
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$6;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$3900(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$6;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4000(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$6;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$700(Lcom/living/emo/activity/AmusementActivity;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$6;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$900(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$6;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$800(Lcom/living/emo/activity/AmusementActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    iget-object v3, p0, Lcom/living/emo/activity/AmusementActivity$6;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-virtual {v3}, Lcom/living/emo/activity/AmusementActivity;->getBpmValue()I

    move-result v3

    aput v3, v2, v4

    invoke-static {v2}, Lcom/living/emo/util/CommandUtil;->dazzling([I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/AmusementActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 552
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$6;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0, v4}, Lcom/living/emo/activity/AmusementActivity;->access$902(Lcom/living/emo/activity/AmusementActivity;Z)Z

    :cond_1
    return-void
.end method
