.class Lcom/living/emo/activity/AmusementActivity$18;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Lcom/living/emo/view/LeftPopupWindow$PlayerItemListener;


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

    .line 854
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$18;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerItem(Lcom/living/emo/bean/MusicBean$DataBean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 857
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$18;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 858
    invoke-static {}, Lcom/living/emo/activity/AmusementActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPlayerControlPresenter1----------onPlayerItem"

    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$18;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->reset()V

    .line 860
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$18;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$200(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->setData(Lcom/living/emo/bean/MusicBean$DataBean;)V

    .line 861
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$18;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$300(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 862
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$18;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$400(Lcom/living/emo/activity/AmusementActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
