.class Lcom/living/emo/activity/AmusementActivity$13;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/AmusementActivity;->initTouchEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/AmusementActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/AmusementActivity;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$13;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 750
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$13;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$5100(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/presenter/TouchPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 751
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$13;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$5100(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/presenter/TouchPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$13;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$600(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/living/emo/presenter/TouchPresenter;->onTouch(Landroid/widget/ImageView;Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
