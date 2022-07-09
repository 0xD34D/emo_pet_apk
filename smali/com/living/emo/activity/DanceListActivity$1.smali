.class Lcom/living/emo/activity/DanceListActivity$1;
.super Ljava/lang/Object;
.source "DanceListActivity.java"

# interfaces
.implements Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/DanceListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/DanceListActivity;

.field final synthetic val$musicText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/DanceListActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/living/emo/activity/DanceListActivity$1;->this$0:Lcom/living/emo/activity/DanceListActivity;

    iput-object p2, p0, Lcom/living/emo/activity/DanceListActivity$1;->val$musicText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeMusicName(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/living/emo/activity/DanceListActivity$1;->val$musicText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
