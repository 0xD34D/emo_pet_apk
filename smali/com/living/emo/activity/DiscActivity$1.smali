.class Lcom/living/emo/activity/DiscActivity$1;
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

    .line 142
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$1;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$1;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$000(Lcom/living/emo/activity/DiscActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$1;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/DiscActivity;->finish()V

    .line 147
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$1;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/DiscActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/DiscActivity;->showToast(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$1;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$100(Lcom/living/emo/activity/DiscActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/DiscActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method
