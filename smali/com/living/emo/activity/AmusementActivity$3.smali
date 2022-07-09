.class Lcom/living/emo/activity/AmusementActivity$3;
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

    .line 250
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$3;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$3;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1000(Lcom/living/emo/activity/AmusementActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 254
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$3;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-virtual {v0}, Lcom/living/emo/activity/AmusementActivity;->finish()V

    .line 255
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$3;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$800(Lcom/living/emo/activity/AmusementActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/AmusementActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method
