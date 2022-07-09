.class Lcom/living/emo/activity/DiscActivity$12$1;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DiscActivity$12;->onChangeSeekBar(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/activity/DiscActivity$12;

.field final synthetic val$seek:I

.field final synthetic val$stayTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DiscActivity$12;Ljava/lang/String;I)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$12$1;->this$1:Lcom/living/emo/activity/DiscActivity$12;

    iput-object p2, p0, Lcom/living/emo/activity/DiscActivity$12$1;->val$stayTime:Ljava/lang/String;

    iput p3, p0, Lcom/living/emo/activity/DiscActivity$12$1;->val$seek:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$12$1;->this$1:Lcom/living/emo/activity/DiscActivity$12;

    iget-object v0, v0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$3300(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity$12$1;->val$stayTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$12$1;->this$1:Lcom/living/emo/activity/DiscActivity$12;

    iget-object v0, v0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$3400(Lcom/living/emo/activity/DiscActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$12$1;->this$1:Lcom/living/emo/activity/DiscActivity$12;

    iget-object v0, v0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$3500(Lcom/living/emo/activity/DiscActivity;)Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    move-result-object v0

    iget v1, p0, Lcom/living/emo/activity/DiscActivity$12$1;->val$seek:I

    invoke-virtual {v0, v1}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->setCurrent(I)V

    :cond_0
    return-void
.end method
