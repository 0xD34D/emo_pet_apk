.class Lcom/living/emo/fragment/FrmareSettingFragment$3;
.super Ljava/lang/Object;
.source "FrmareSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/FrmareSettingFragment;->alert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/FrmareSettingFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/FrmareSettingFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment$3;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 160
    invoke-static {}, Lcom/living/emo/bean/EmoUpdate;->getInstance()Lcom/living/emo/bean/EmoUpdate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/EmoUpdate;->getServerVersion()I

    move-result p1

    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->ota(I)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/living/emo/fragment/FrmareSettingFragment$3;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$400(Lcom/living/emo/fragment/FrmareSettingFragment;)Lcom/living/emo/activity/SettingActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/living/emo/fragment/FrmareSettingFragment$3;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$500(Lcom/living/emo/fragment/FrmareSettingFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/SettingActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method
