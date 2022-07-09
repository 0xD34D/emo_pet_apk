.class Lcom/living/emo/fragment/PowerOffFragment$1;
.super Ljava/lang/Object;
.source "PowerOffFragment.java"

# interfaces
.implements Lcom/living/emo/view/PowerOffSureDialog$onDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/PowerOffFragment;->askForPower()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/PowerOffFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/PowerOffFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/living/emo/fragment/PowerOffFragment$1;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onSureClick()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/living/emo/fragment/PowerOffFragment$1;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PowerOffFragment;->access$100(Lcom/living/emo/fragment/PowerOffFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/PowerOffFragment$1;->this$0:Lcom/living/emo/fragment/PowerOffFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PowerOffFragment;->access$000(Lcom/living/emo/fragment/PowerOffFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    invoke-static {}, Lcom/living/emo/blebean/util/BleJsonUtil;->PowerOff()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method
