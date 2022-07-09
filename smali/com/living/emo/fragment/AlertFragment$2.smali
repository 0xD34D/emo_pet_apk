.class Lcom/living/emo/fragment/AlertFragment$2;
.super Ljava/lang/Object;
.source "AlertFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/AlertFragment;->initEvent()V
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

    .line 158
    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment$2;->this$0:Lcom/living/emo/fragment/AlertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 164
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment$2;->this$0:Lcom/living/emo/fragment/AlertFragment;

    const/4 p2, 0x1

    iput p2, p1, Lcom/living/emo/fragment/AlertFragment;->mAlertOnOff:I

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment$2;->this$0:Lcom/living/emo/fragment/AlertFragment;

    const/4 p2, 0x0

    iput p2, p1, Lcom/living/emo/fragment/AlertFragment;->mAlertOnOff:I

    :goto_0
    return-void
.end method
