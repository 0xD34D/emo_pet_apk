.class Lcom/living/emo/fragment/AlertFragment$3;
.super Ljava/lang/Object;
.source "AlertFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleAlarmResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/AlertFragment;->onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
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

    .line 270
    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0, p1}, Lcom/living/emo/fragment/AlertFragment;->access$302(Lcom/living/emo/fragment/AlertFragment;Ljava/util/List;)Ljava/util/List;

    .line 274
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$100(Lcom/living/emo/fragment/AlertFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/living/emo/fragment/AlertFragment;->access$102(Lcom/living/emo/fragment/AlertFragment;Ljava/util/List;)Ljava/util/List;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$100(Lcom/living/emo/fragment/AlertFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;

    .line 279
    iget-object v2, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v2}, Lcom/living/emo/fragment/AlertFragment;->access$100(Lcom/living/emo/fragment/AlertFragment;)Ljava/util/List;

    move-result-object v2

    new-instance v10, Lcom/living/emo/bean/AlarmBean;

    invoke-virtual {v1}, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->getIndex()I

    move-result v4

    invoke-virtual {v1}, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->getOn()I

    move-result v5

    invoke-virtual {v1}, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->getRecurrence()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->getTag()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/living/emo/bean/AlarmBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$100(Lcom/living/emo/fragment/AlertFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 282
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$400(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/adapter/AlertAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v1}, Lcom/living/emo/fragment/AlertFragment;->access$100(Lcom/living/emo/fragment/AlertFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/AlertAdapter;->setAddAlarm(Ljava/util/List;)V

    .line 283
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$100(Lcom/living/emo/fragment/AlertFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/AlertFragment;->mTimeCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/AlertFragment;->mTextCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$100(Lcom/living/emo/fragment/AlertFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v4}, Lcom/living/emo/fragment/AlertFragment;->access$000(Lcom/living/emo/fragment/AlertFragment;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v4}, Lcom/living/emo/fragment/AlertFragment;->access$000(Lcom/living/emo/fragment/AlertFragment;)I

    move-result v4

    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/living/emo/bean/AlarmBean;

    invoke-static {v0, v3}, Lcom/living/emo/fragment/AlertFragment;->access$200(Lcom/living/emo/fragment/AlertFragment;Lcom/living/emo/bean/AlarmBean;)V

    .line 288
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->access$400(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/adapter/AlertAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v3}, Lcom/living/emo/fragment/AlertFragment;->access$000(Lcom/living/emo/fragment/AlertFragment;)I

    move-result v3

    if-ne v3, v5, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-static {v3}, Lcom/living/emo/fragment/AlertFragment;->access$000(Lcom/living/emo/fragment/AlertFragment;)I

    move-result v3

    :goto_2
    invoke-virtual {v0, v3}, Lcom/living/emo/adapter/AlertAdapter;->setDefaultValue(I)V

    .line 289
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/AlertFragment;->mTextCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/AlertFragment;->mTimeCon:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 293
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_5

    .line 294
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/AlertFragment;->mTimeAdd:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 296
    :cond_5
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/AlertFragment;->mTimeAdd:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 299
    :goto_4
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/AlertFragment;->mAlertDelete:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 300
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment$3;->this$0:Lcom/living/emo/fragment/AlertFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/AlertFragment;->mAlertSave:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method
