.class Lcom/living/emo/fragment/NotificationsFragment$1;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/NotificationsFragment;->initEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/NotificationsFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 119
    :pswitch_0
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$002(Lcom/living/emo/fragment/NotificationsFragment;I)I

    .line 120
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$400(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$200(Lcom/living/emo/fragment/NotificationsFragment;Ljava/util/List;)V

    .line 121
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$400(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 122
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$400(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    invoke-virtual {v1}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->getId()I

    move-result v1

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$300(Lcom/living/emo/fragment/NotificationsFragment;I)V

    goto/16 :goto_0

    .line 136
    :pswitch_1
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$002(Lcom/living/emo/fragment/NotificationsFragment;I)I

    .line 137
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$600(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$200(Lcom/living/emo/fragment/NotificationsFragment;Ljava/util/List;)V

    .line 138
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$600(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 139
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$600(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    invoke-virtual {v1}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->getId()I

    move-result v1

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$300(Lcom/living/emo/fragment/NotificationsFragment;I)V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2, p1}, Lcom/living/emo/fragment/NotificationsFragment;->access$002(Lcom/living/emo/fragment/NotificationsFragment;I)I

    .line 113
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$100(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$200(Lcom/living/emo/fragment/NotificationsFragment;Ljava/util/List;)V

    .line 114
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$100(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 115
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$100(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    invoke-virtual {v1}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->getId()I

    move-result v1

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$300(Lcom/living/emo/fragment/NotificationsFragment;I)V

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$002(Lcom/living/emo/fragment/NotificationsFragment;I)I

    .line 128
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$500(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$200(Lcom/living/emo/fragment/NotificationsFragment;Ljava/util/List;)V

    .line 129
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$500(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_0

    .line 130
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$500(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    invoke-virtual {v1}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->getId()I

    move-result v1

    invoke-static {p2, v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$300(Lcom/living/emo/fragment/NotificationsFragment;I)V

    .line 143
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$700(Lcom/living/emo/fragment/NotificationsFragment;)Lcom/living/emo/adapter/NotificationsAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/living/emo/adapter/NotificationsAdapter;->setCurrIndex(I)V

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged:size "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$800(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  radioCheckedIndex:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/NotificationsFragment;->access$000(Lcom/living/emo/fragment/NotificationsFragment;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$900(Lcom/living/emo/fragment/NotificationsFragment;)Landroid/widget/LinearLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/NotificationsFragment;->access$800(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NotificationsFragment;->access$700(Lcom/living/emo/fragment/NotificationsFragment;)Lcom/living/emo/adapter/NotificationsAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment$1;->this$0:Lcom/living/emo/fragment/NotificationsFragment;

    invoke-static {p2}, Lcom/living/emo/fragment/NotificationsFragment;->access$800(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/living/emo/adapter/NotificationsAdapter;->setData(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f090216
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
