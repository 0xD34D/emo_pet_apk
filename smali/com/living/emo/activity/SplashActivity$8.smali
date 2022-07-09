.class Lcom/living/emo/activity/SplashActivity$8;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/SplashActivity;->onPermissionGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/SplashActivity;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$8;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 319
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    iget-object p2, p0, Lcom/living/emo/activity/SplashActivity$8;->this$0:Lcom/living/emo/activity/SplashActivity;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/living/emo/activity/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
