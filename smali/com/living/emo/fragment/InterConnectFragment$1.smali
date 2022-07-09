.class Lcom/living/emo/fragment/InterConnectFragment$1;
.super Ljava/lang/Object;
.source "InterConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/InterConnectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/InterConnectFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/InterConnectFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/living/emo/fragment/InterConnectFragment$1;->this$0:Lcom/living/emo/fragment/InterConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/living/emo/fragment/InterConnectFragment$1;->this$0:Lcom/living/emo/fragment/InterConnectFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/InterConnectFragment;->access$000(Lcom/living/emo/fragment/InterConnectFragment;)Lcom/living/emo/fragment/InterConnectFragment$OnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/living/emo/fragment/InterConnectFragment$OnClickListener;->setInternet()V

    return-void
.end method
