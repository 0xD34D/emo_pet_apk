.class Lcom/living/emo/activity/CustomizationActivity$2;
.super Ljava/lang/Object;
.source "CustomizationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/CustomizationActivity;->showDeniedForCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/CustomizationActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/CustomizationActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/living/emo/activity/CustomizationActivity$2;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 119
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/living/emo/activity/CustomizationActivity$2;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    invoke-virtual {p2}, Lcom/living/emo/activity/CustomizationActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/living/emo/activity/CustomizationActivity$2;->this$0:Lcom/living/emo/activity/CustomizationActivity;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Lcom/living/emo/activity/CustomizationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
