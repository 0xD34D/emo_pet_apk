.class Lcom/living/emo/activity/DiscActivity$11;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DiscActivity;->initTouchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DiscActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DiscActivity;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$11;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 454
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity$11;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DiscActivity;->access$2900(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/TouchPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity$11;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DiscActivity;->access$2900(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/presenter/TouchPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$11;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$2800(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/living/emo/presenter/TouchPresenter;->onTouch(Landroid/widget/ImageView;Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
