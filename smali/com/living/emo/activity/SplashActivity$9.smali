.class Lcom/living/emo/activity/SplashActivity$9;
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

    .line 309
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$9;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$9;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/SplashActivity;->finish()V

    return-void
.end method
