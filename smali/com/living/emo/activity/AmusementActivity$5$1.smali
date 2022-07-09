.class Lcom/living/emo/activity/AmusementActivity$5$1;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/AmusementActivity$5;->onChangeSeekBar(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/living/emo/activity/AmusementActivity$5;

.field final synthetic val$seek:I

.field final synthetic val$stayTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/AmusementActivity$5;Ljava/lang/String;I)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$5$1;->this$1:Lcom/living/emo/activity/AmusementActivity$5;

    iput-object p2, p0, Lcom/living/emo/activity/AmusementActivity$5$1;->val$stayTime:Ljava/lang/String;

    iput p3, p0, Lcom/living/emo/activity/AmusementActivity$5$1;->val$seek:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$5$1;->this$1:Lcom/living/emo/activity/AmusementActivity$5;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$5;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$3400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/activity/AmusementActivity$5$1;->val$stayTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$5$1;->this$1:Lcom/living/emo/activity/AmusementActivity$5;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$5;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$3500(Lcom/living/emo/activity/AmusementActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$5$1;->this$1:Lcom/living/emo/activity/AmusementActivity$5;

    iget-object v0, v0, Lcom/living/emo/activity/AmusementActivity$5;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$3600(Lcom/living/emo/activity/AmusementActivity;)Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;

    move-result-object v0

    iget v1, p0, Lcom/living/emo/activity/AmusementActivity$5$1;->val$seek:I

    invoke-virtual {v0, v1}, Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar;->setCurrent(I)V

    :cond_0
    return-void
.end method
