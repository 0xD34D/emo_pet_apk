.class Lcom/living/emo/activity/ConnectActivity$9;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/ConnectActivity;->onPermissionGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/ConnectActivity;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity$9;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 510
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    iget-object p2, p0, Lcom/living/emo/activity/ConnectActivity$9;->this$0:Lcom/living/emo/activity/ConnectActivity;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/living/emo/activity/ConnectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
