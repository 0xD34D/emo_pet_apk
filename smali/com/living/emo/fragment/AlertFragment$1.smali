.class Lcom/living/emo/fragment/AlertFragment$1;
.super Ljava/lang/Object;
.source "AlertFragment.java"

# interfaces
.implements Lcom/living/emo/adapter/AlertAdapter$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/AlertFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/AlertFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/AlertFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment$1;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickItem(I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$1;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0, p1}, Lcom/living/emo/fragment/AlertFragment;->access$002(Lcom/living/emo/fragment/AlertFragment;I)I

    .line 111
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$1;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$100(Lcom/living/emo/fragment/AlertFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/AlarmBean;

    .line 112
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$1;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getOn()I

    move-result v1

    iput v1, v0, Lcom/living/emo/fragment/AlertFragment;->mAlertOnOff:I

    .line 113
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$1;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0, p1}, Lcom/living/emo/fragment/AlertFragment;->access$200(Lcom/living/emo/fragment/AlertFragment;Lcom/living/emo/bean/AlarmBean;)V

    return-void
.end method
