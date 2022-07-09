.class Lcom/living/emo/activity/SplashActivity$1;
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

    .line 106
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$000(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->isBlueEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$200(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/animation/SearchAnimation;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$100(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/living/emo/animation/SearchAnimation;->stop(Landroid/view/View;)V

    .line 111
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$200(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/animation/SearchAnimation;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {v0}, Lcom/living/emo/activity/SplashActivity;->access$100(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/living/emo/animation/SearchAnimation;->searchAnim(Landroid/view/View;)V

    .line 112
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$000(Lcom/living/emo/activity/SplashActivity;)Lcom/clj/fastble/BleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/clj/fastble/BleManager;->cancelScan()V

    .line 113
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$300(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/adapter/DeviceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/adapter/DeviceAdapter;->clearScanDevice()V

    .line 114
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$300(Lcom/living/emo/activity/SplashActivity;)Lcom/living/emo/adapter/DeviceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/adapter/DeviceAdapter;->notifyDataSetChanged()V

    .line 115
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$1;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$400(Lcom/living/emo/activity/SplashActivity;)V

    :cond_0
    return-void
.end method
