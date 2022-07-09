.class Lcom/living/emo/fragment/LightFragment$2;
.super Ljava/lang/Object;
.source "LightFragment.java"

# interfaces
.implements Lcom/living/emo/adapter/LightListAdapter$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/LightFragment;->initEvent()V
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

    .line 118
    iput-object p1, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setOnOffLight(I)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    sget-object v1, Lcom/living/emo/fragment/LightFragment$State;->ONOFF:Lcom/living/emo/fragment/LightFragment$State;

    invoke-static {v0, v1}, Lcom/living/emo/fragment/LightFragment;->access$402(Lcom/living/emo/fragment/LightFragment;Lcom/living/emo/fragment/LightFragment$State;)Lcom/living/emo/fragment/LightFragment$State;

    .line 124
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$000(Lcom/living/emo/fragment/LightFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 125
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$600(Lcom/living/emo/fragment/LightFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/LightFragment;->access$500(Lcom/living/emo/fragment/LightFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/LightFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;

    .line 127
    invoke-virtual {v0}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getOn()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->getId()I

    move-result v3

    invoke-static {v3, v2}, Lcom/living/emo/blebean/util/BleJsonUtil;->lightOnOff(II)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v0, v2}, Lcom/living/emo/blebean/response/LightResponse$DataBean$LightBean$StateBean;->setOn(I)V

    .line 131
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/LightFragment;->access$200(Lcom/living/emo/fragment/LightFragment;)Lcom/living/emo/activity/ToolLightActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v2}, Lcom/living/emo/fragment/LightFragment;->access$100(Lcom/living/emo/fragment/LightFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    invoke-static {v3}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/living/emo/activity/ToolLightActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 132
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    const-string v2, "onOff"

    invoke-static {v0, v2}, Lcom/living/emo/fragment/LightFragment;->access$702(Lcom/living/emo/fragment/LightFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0, p1}, Lcom/living/emo/fragment/LightFragment;->access$802(Lcom/living/emo/fragment/LightFragment;I)I

    .line 134
    iget-object p1, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {p1, v1}, Lcom/living/emo/fragment/LightFragment;->access$902(Lcom/living/emo/fragment/LightFragment;I)I

    :cond_1
    return-void
.end method

.method public setRename(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/living/emo/fragment/LightFragment$2;->this$0:Lcom/living/emo/fragment/LightFragment;

    invoke-static {v0, p1}, Lcom/living/emo/fragment/LightFragment;->access$1000(Lcom/living/emo/fragment/LightFragment;I)V

    return-void
.end method
