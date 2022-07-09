.class Lcom/living/emo/fragment/LightFragment$1;
.super Ljava/lang/Object;
.source "LightFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/fragment/LightFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/LightFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/LightFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment$1;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$1;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$000(Lcom/living/emo/fragment/LightFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 103
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->light()[B

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$1;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$200(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/activity/ToolLightActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/fragment/LightFragment$1;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v2}, Lcom/living/emo/fragment/LightFragment;->access$100(Lcom/living/emo/fragment/LightFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/living/emo/activity/ToolLightActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 105
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$1;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$300(Lcom/living/emo/fragment/LightFragment;)V

    .line 106
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$1;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/LightFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "time out"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
