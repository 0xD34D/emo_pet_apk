.class Lcom/living/emo/activity/SplashActivity$4;
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

    .line 134
    iput-object p1, p0, Lcom/living/emo/activity/SplashActivity$4;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/living/emo/activity/SplashActivity$4;->this$0:Lcom/living/emo/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/SplashActivity;->finish()V

    return-void
.end method
