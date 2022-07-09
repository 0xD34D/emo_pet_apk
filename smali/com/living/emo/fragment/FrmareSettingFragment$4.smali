.class Lcom/living/emo/fragment/FrmareSettingFragment$4;
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

    .line 165
    iput-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment$4;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/living/emo/fragment/FrmareSettingFragment$4;->this$0:Lcom/living/emo/fragment/FrmareSettingFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/FrmareSettingFragment;->access$600(Lcom/living/emo/fragment/FrmareSettingFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method
