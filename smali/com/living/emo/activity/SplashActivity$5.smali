.class Lcom/living/emo/activity/SplashActivity$5;
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

    .line 140
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$5;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$5;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-static {p1}, Lcom/living/emo/activity/SplashActivity;->access$500(Lcom/living/emo/activity/SplashActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
