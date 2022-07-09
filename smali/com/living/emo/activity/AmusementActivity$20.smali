.class Lcom/living/emo/activity/AmusementActivity$20;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Lcom/living/emo/view/RightPopupWindow$PlayerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/AmusementActivity;->initPopupWindow()V
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

    .line 874
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$20;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playerItemClick(Lcom/living/emo/bean/MusicBean$DataBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 877
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$20;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPlayerControlPresenter2----------playerItemClick"

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$20;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->reset()V

    .line 880
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$20;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->setData(Lcom/living/emo/bean/MusicBean$DataBean;)V

    .line 881
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$20;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 882
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$20;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$2500(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
