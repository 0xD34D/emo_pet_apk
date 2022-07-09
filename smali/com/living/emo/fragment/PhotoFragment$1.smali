.class Lcom/living/emo/fragment/PhotoFragment$1;
.super Ljava/lang/Object;
.source "PhotoFragment.java"

# interfaces
.implements Lcom/living/emo/util/TcpServerUtil$ServerNotifyMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/PhotoFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/PhotoFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/PhotoFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$2$PhotoFragment$1()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$300(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/activity/ToolPhotoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PhotoFragment;->access$000(Lcom/living/emo/fragment/PhotoFragment;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v2}, Lcom/living/emo/fragment/PhotoFragment;->access$100(Lcom/living/emo/fragment/PhotoFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v3}, Lcom/living/emo/fragment/PhotoFragment;->access$200(Lcom/living/emo/fragment/PhotoFragment;)I

    move-result v3

    const-string v4, "syn"

    invoke-static {v4, v2, v3}, Lcom/living/emo/blebean/util/BleJsonUtil;->Photo(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/ToolPhotoActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public synthetic lambda$onFinish$1$PhotoFragment$1()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PhotoFragment;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$500(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/adapter/PhotoListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PhotoFragment;->access$400(Lcom/living/emo/fragment/PhotoFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/PhotoListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 116
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$500(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/adapter/PhotoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/adapter/PhotoListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    const-string v1, "It looks like EMO hasn\'t taken any photos yet, please ask him to take a few for you."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onServerStart$3$PhotoFragment$1()V
    .locals 4

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$1$4EKQVfe3tyKTos4nmY1tRkHdn4g;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$1$4EKQVfe3tyKTos4nmY1tRkHdn4g;-><init>(Lcom/living/emo/fragment/PhotoFragment$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$onSingleImage$0$PhotoFragment$1()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PhotoFragment;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$500(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/adapter/PhotoListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/PhotoFragment;->access$400(Lcom/living/emo/fragment/PhotoFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/PhotoListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 104
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/PhotoFragment;->access$500(Lcom/living/emo/fragment/PhotoFragment;)Lcom/living/emo/adapter/PhotoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/adapter/PhotoListAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/PhotoFragment;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/PhotoFragment;->mPhotoRecyView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$1$smpcQcHxBaBdQpftRIU6zbpL51g;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$1$smpcQcHxBaBdQpftRIU6zbpL51g;-><init>(Lcom/living/emo/fragment/PhotoFragment$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServerStart()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$1$HGLCSYXUzVKICImbJYWS5PzHZ88;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$1$HGLCSYXUzVKICImbJYWS5PzHZ88;-><init>(Lcom/living/emo/fragment/PhotoFragment$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSingleImage()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/living/emo/fragment/PhotoFragment$1;->this$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0}, Lcom/living/emo/fragment/PhotoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$1$9CGN2R6Wjj64eX-5Yo7erc-5Z90;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$1$9CGN2R6Wjj64eX-5Yo7erc-5Z90;-><init>(Lcom/living/emo/fragment/PhotoFragment$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
