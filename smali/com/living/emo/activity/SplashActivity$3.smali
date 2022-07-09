.class Lcom/living/emo/activity/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/SplashActivity;->clickEvent()V
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

    .line 126
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$3;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$3;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$000(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/BleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$3;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$600(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$3;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$600(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/living/emo/activity/SplashActivity;->access$700(Lcom/living/emo/activity/SplashActivity;Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method
