.class Lcom/living/emo/activity/BannerActivity$2;
.super Ljava/lang/Object;
.source "BannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/BannerActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/BannerActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/BannerActivity;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/living/emo/activity/BannerActivity$2;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 77
    iget-object p1, p0, Lcom/living/emo/activity/BannerActivity$2;->this$0:Lcom/living/emo/activity/BannerActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/living/emo/activity/BannerActivity$2;->this$0:Lcom/living/emo/activity/BannerActivity;

    const-class v2, Lcom/living/emo/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/living/emo/activity/BannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object p1, p0, Lcom/living/emo/activity/BannerActivity$2;->this$0:Lcom/living/emo/activity/BannerActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/BannerActivity;->finish()V

    return-void
.end method
