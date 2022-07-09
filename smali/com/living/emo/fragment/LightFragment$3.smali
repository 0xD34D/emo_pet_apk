.class Lcom/living/emo/fragment/LightFragment$3;
.super Ljava/lang/Object;
.source "LightFragment.java"

# interfaces
.implements Lcom/living/emo/view/RecognitionDeleteView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/LightFragment;->lambda$initEvent$1(Landroid/view/View;)V
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

    .line 152
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment$3;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/living/emo/fragment/LightFragment$3;->this$0:Lcom/living/emo/fragment/LightFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/LightFragment;->mUnbind:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void
.end method

.method public onOk(Landroid/app/Dialog;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$3;->this$0:Lcom/living/emo/fragment/LightFragment;

    sget-object v1, Lcom/living/emo/fragment/LightFragment$State;->UNBIND:Lcom/living/emo/fragment/LightFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/LightFragment;->access$402(Lcom/living/emo/fragment/LightFragment;Lcom/living/emo/fragment/LightFragment$State;)Lcom/living/emo/fragment/LightFragment$State;

    .line 161
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$3;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$200(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/activity/ToolLightActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$3;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$100(Lcom/living/emo/fragment/LightFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/blebean/util/BleJsonUtil;->lightUnbindAll()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/ToolLightActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 162
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
