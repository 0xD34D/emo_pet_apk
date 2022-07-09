.class Lcom/living/emo/activity/DiscActivity$12;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Lcom/living/emo/interfaces/IPlayerControlView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/DiscActivity;
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

    .line 489
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public musicInfo(Lcom/living/emo/bean/MusicInfo;)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$3600(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/bean/MusicInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$3300(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/bean/MusicInfo;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onChangeSeekBar(Ljava/lang/String;I)V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    new-instance v1, Lcom/living/emo/activity/DiscActivity$12$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/living/emo/activity/DiscActivity$12$1;-><init>(Lcom/living/emo/activity/DiscActivity$12;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/DiscActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playOnChangeSate(I)V
    .locals 6

    .line 492
    iget-object v0, p0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v0}, Lcom/living/emo/activity/DiscActivity;->access$3100(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v1, 0x2

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DiscActivity;->access$600(Lcom/living/emo/activity/DiscActivity;)Lcom/living/emo/animation/ImageButtonAnimation;

    move-result-object v4

    iget-object v1, p0, Lcom/living/emo/activity/DiscActivity$12;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {v1}, Lcom/living/emo/activity/DiscActivity;->access$700(Lcom/living/emo/activity/DiscActivity;)Landroid/widget/ImageView;

    move-result-object v5

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/living/emo/activity/DiscActivity;->access$3200(Lcom/living/emo/activity/DiscActivity;ILandroid/widget/ImageButton;[ILcom/living/emo/animation/ImageButtonAnimation;Landroid/widget/ImageView;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080188
        0x7f080189
    .end array-data
.end method
