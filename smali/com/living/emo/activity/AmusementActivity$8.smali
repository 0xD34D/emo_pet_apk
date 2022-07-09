.class Lcom/living/emo/activity/AmusementActivity$8;
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

    .line 571
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 574
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$3900(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4000(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$700(Lcom/living/emo/activity/AmusementActivity;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$4800(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$800(Lcom/living/emo/activity/AmusementActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    new-array v1, v1, [I

    aput v3, v1, v2

    iget-object v5, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-virtual {v5}, Lcom/living/emo/activity/AmusementActivity;->getBpmValue()I

    move-result v5

    aput v5, v1, v3

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->dance([I)[B

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/living/emo/activity/AmusementActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 577
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0, v2}, Lcom/living/emo/activity/AmusementActivity;->access$4802(Lcom/living/emo/activity/AmusementActivity;Z)Z

    goto :goto_0

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$800(Lcom/living/emo/activity/AmusementActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    new-array v1, v1, [I

    aput v3, v1, v2

    iget-object v2, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-virtual {v2}, Lcom/living/emo/activity/AmusementActivity;->getBpmValue()I

    move-result v2

    aput v2, v1, v3

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->legShaking([I)[B

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/living/emo/activity/AmusementActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 580
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$8;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0, v3}, Lcom/living/emo/activity/AmusementActivity;->access$4802(Lcom/living/emo/activity/AmusementActivity;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
