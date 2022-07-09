.class Lcom/living/emo/activity/DiscActivity$3;
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

    .line 237
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$3;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$3;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1000(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$3;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1100(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$3;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1200(Lcom/living/emo/activity/DiscActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 241
    invoke-static {}, Lcom/living/emo/activity/DiscActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play:run: play"

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$3;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$1400(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$3;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$100(Lcom/living/emo/activity/DiscActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    iget-object v3, p0, Lcom/living/emo/activity/DiscActivity$3;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {v3}, Lcom/living/emo/activity/DiscActivity;->getBpmValue()I

    move-result v3

    aput v3, v2, v4

    invoke-static {v2}, Lcom/living/emo/util/CommandUtil;->dazzling([I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/DiscActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 244
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$3;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0, v4}, Lcom/living/emo/activity/DiscActivity;->access$1402(Lcom/living/emo/activity/DiscActivity;Z)Z

    :cond_1
    return-void
.end method
