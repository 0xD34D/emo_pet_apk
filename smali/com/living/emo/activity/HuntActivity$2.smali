.class Lcom/living/emo/activity/HuntActivity$2;
.super Ljava/lang/Object;
.source "HuntActivity.java"

# interfaces
.implements Lcom/living/emo/util/SensorUtil$SensorXYListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/HuntActivity;->initSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/HuntActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/HuntActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnResult(FF)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$100(Lcom/living/emo/activity/HuntActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {v0}, Lcom/living/emo/activity/HuntActivity;->access$200(Lcom/living/emo/activity/HuntActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnResult: X:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "     Y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuntActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40400000    # -1.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {p1}, Lcom/living/emo/activity/HuntActivity;->access$300(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/activity/HuntActivity;->access$400(Lcom/living/emo/activity/HuntActivity;Landroid/view/View;)V

    .line 146
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object p2, Lcom/living/emo/activity/HuntActivity$Direction;->TOP:Lcom/living/emo/activity/HuntActivity$Direction;

    invoke-static {p1, p2}, Lcom/living/emo/activity/HuntActivity;->access$502(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Direction;)Lcom/living/emo/activity/HuntActivity$Direction;

    goto :goto_0

    :cond_0
    cmpg-float p1, p2, v0

    if-gez p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {p1}, Lcom/living/emo/activity/HuntActivity;->access$600(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/activity/HuntActivity;->access$400(Lcom/living/emo/activity/HuntActivity;Landroid/view/View;)V

    .line 150
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object p2, Lcom/living/emo/activity/HuntActivity$Direction;->LEFT:Lcom/living/emo/activity/HuntActivity$Direction;

    invoke-static {p1, p2}, Lcom/living/emo/activity/HuntActivity;->access$502(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Direction;)Lcom/living/emo/activity/HuntActivity$Direction;

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3fc00000    # 1.5f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {p1}, Lcom/living/emo/activity/HuntActivity;->access$700(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/activity/HuntActivity;->access$400(Lcom/living/emo/activity/HuntActivity;Landroid/view/View;)V

    .line 154
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object p2, Lcom/living/emo/activity/HuntActivity$Direction;->RIGHT:Lcom/living/emo/activity/HuntActivity$Direction;

    invoke-static {p1, p2}, Lcom/living/emo/activity/HuntActivity;->access$502(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Direction;)Lcom/living/emo/activity/HuntActivity$Direction;

    goto :goto_0

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {p1}, Lcom/living/emo/activity/HuntActivity;->access$800(Lcom/living/emo/activity/HuntActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/activity/HuntActivity;->access$400(Lcom/living/emo/activity/HuntActivity;Landroid/view/View;)V

    .line 158
    iget-object p1, p0, Lcom/living/emo/activity/HuntActivity$2;->this$0:Lcom/living/emo/activity/HuntActivity;

    sget-object p2, Lcom/living/emo/activity/HuntActivity$Direction;->STOP:Lcom/living/emo/activity/HuntActivity$Direction;

    invoke-static {p1, p2}, Lcom/living/emo/activity/HuntActivity;->access$502(Lcom/living/emo/activity/HuntActivity;Lcom/living/emo/activity/HuntActivity$Direction;)Lcom/living/emo/activity/HuntActivity$Direction;

    :cond_3
    :goto_0
    return-void
.end method
