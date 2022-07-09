.class Lcom/living/emo/fragment/NavToolFragment$1;
.super Ljava/lang/Object;
.source "NavToolFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/NavToolFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/NavToolFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/NavToolFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/living/emo/fragment/NavToolFragment$1;->this$0:Lcom/living/emo/fragment/NavToolFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 52
    :sswitch_0
    invoke-static {}, Lcom/living/emo/fragment/NavToolFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCheckedChanged: photo"

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/living/emo/fragment/NavToolFragment$1;->this$0:Lcom/living/emo/fragment/NavToolFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavToolFragment;->access$300(Lcom/living/emo/fragment/NavToolFragment;)Lcom/living/emo/fragment/PhotoFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavToolFragment;->access$200(Lcom/living/emo/fragment/NavToolFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 56
    :sswitch_1
    invoke-static {}, Lcom/living/emo/fragment/NavToolFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCheckedChanged: light"

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/living/emo/fragment/NavToolFragment$1;->this$0:Lcom/living/emo/fragment/NavToolFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavToolFragment;->access$400(Lcom/living/emo/fragment/NavToolFragment;)Lcom/living/emo/fragment/LightFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavToolFragment;->access$200(Lcom/living/emo/fragment/NavToolFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 48
    :sswitch_2
    invoke-static {}, Lcom/living/emo/fragment/NavToolFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCheckedChanged: info"

    invoke-static {p1, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/living/emo/fragment/NavToolFragment$1;->this$0:Lcom/living/emo/fragment/NavToolFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavToolFragment;->access$100(Lcom/living/emo/fragment/NavToolFragment;)Lcom/living/emo/fragment/InfoFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavToolFragment;->access$200(Lcom/living/emo/fragment/NavToolFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 60
    :sswitch_3
    iget-object p1, p0, Lcom/living/emo/fragment/NavToolFragment$1;->this$0:Lcom/living/emo/fragment/NavToolFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavToolFragment;->access$500(Lcom/living/emo/fragment/NavToolFragment;)Lcom/living/emo/fragment/AlertFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavToolFragment;->access$200(Lcom/living/emo/fragment/NavToolFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09004a -> :sswitch_3
        0x7f09018a -> :sswitch_2
        0x7f0901ac -> :sswitch_1
        0x7f090235 -> :sswitch_0
    .end sparse-switch
.end method
