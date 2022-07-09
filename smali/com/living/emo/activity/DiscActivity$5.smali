.class Lcom/living/emo/activity/DiscActivity$5;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/DiscActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DiscActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DiscActivity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 311
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1000(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1100(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1200(Lcom/living/emo/activity/DiscActivity;)I

    move-result v0

    if-lez v0, :cond_2

    .line 312
    invoke-static {}, Lcom/living/emo/activity/DiscActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playing:run: playing "

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$2300(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$100(Lcom/living/emo/activity/DiscActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    new-array v1, v1, [I

    aput v3, v1, v2

    iget-object v5, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {v5}, Lcom/living/emo/activity/DiscActivity;->getBpmValue()I

    move-result v5

    aput v5, v1, v3

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->dance([I)[B

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/living/emo/activity/DiscActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 315
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0, v2}, Lcom/living/emo/activity/DiscActivity;->access$2302(Lcom/living/emo/activity/DiscActivity;Z)Z

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$100(Lcom/living/emo/activity/DiscActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v4

    new-array v1, v1, [I

    aput v3, v1, v2

    iget-object v2, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {v2}, Lcom/living/emo/activity/DiscActivity;->getBpmValue()I

    move-result v2

    aput v2, v1, v3

    invoke-static {v1}, Lcom/living/emo/util/CommandUtil;->legShaking([I)[B

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/living/emo/activity/DiscActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 318
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$5;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0, v3}, Lcom/living/emo/activity/DiscActivity;->access$2302(Lcom/living/emo/activity/DiscActivity;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
