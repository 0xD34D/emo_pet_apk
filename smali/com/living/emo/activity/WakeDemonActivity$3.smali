.class Lcom/living/emo/activity/WakeDemonActivity$3;
.super Ljava/lang/Object;
.source "WakeDemonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/WakeDemonActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/WakeDemonActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/WakeDemonActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity$3;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity$3;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {p1}, Lcom/living/emo/activity/WakeDemonActivity;->access$300(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 83
    iget-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity$3;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {p1}, Lcom/living/emo/activity/WakeDemonActivity;->access$400(Lcom/living/emo/activity/WakeDemonActivity;)Lcom/living/emo/util/AudioUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/AudioUtil;->stopPlay()V

    .line 84
    iget-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity$3;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/WakeDemonActivity;->finish()V

    return-void
.end method
