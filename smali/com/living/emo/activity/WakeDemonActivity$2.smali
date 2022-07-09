.class Lcom/living/emo/activity/WakeDemonActivity$2;
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

    .line 72
    iput-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity$2;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity$2;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {p1}, Lcom/living/emo/activity/WakeDemonActivity;->access$200(Lcom/living/emo/activity/WakeDemonActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 76
    iget-object p1, p0, Lcom/living/emo/activity/WakeDemonActivity$2;->this$0:Lcom/living/emo/activity/WakeDemonActivity;

    invoke-static {p1}, Lcom/living/emo/activity/WakeDemonActivity;->access$000(Lcom/living/emo/activity/WakeDemonActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->startGame()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/living/emo/activity/WakeDemonActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method
