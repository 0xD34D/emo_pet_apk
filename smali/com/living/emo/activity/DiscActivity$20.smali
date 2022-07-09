.class Lcom/living/emo/activity/DiscActivity$20;
.super Ljava/lang/Object;
.source "DiscActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DiscActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DiscActivity;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DiscActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/living/emo/activity/DiscActivity$20;->this$0:Lcom/living/emo/activity/DiscActivity;

    iput-object p2, p0, Lcom/living/emo/activity/DiscActivity$20;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 751
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity$20;->val$imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 752
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity$20;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DiscActivity;->access$100(Lcom/living/emo/activity/DiscActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/living/emo/activity/DiscActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 753
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity$20;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/DiscActivity;->finish()V

    .line 754
    iget-object p1, p0, Lcom/living/emo/activity/DiscActivity$20;->this$0:Lcom/living/emo/activity/DiscActivity;

    invoke-static {p1}, Lcom/living/emo/activity/DiscActivity;->access$800(Lcom/living/emo/activity/DiscActivity;)V

    return-void
.end method
