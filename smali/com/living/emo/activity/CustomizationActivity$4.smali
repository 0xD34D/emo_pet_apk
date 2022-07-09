.class Lcom/living/emo/activity/CustomizationActivity$4;
.super Ljava/lang/Object;
.source "CustomizationActivity.java"

# interfaces
.implements Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/CustomizationActivity;->initOther()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/CustomizationActivity;

.field final synthetic val$musicText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/CustomizationActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity$4;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    iput-object p2, p0, Lcom/living/emo/activity/CustomizationActivity$4;->val$musicText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeMusicName(Ljava/lang/String;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/living/emo/activity/CustomizationActivity$4;->val$musicText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
