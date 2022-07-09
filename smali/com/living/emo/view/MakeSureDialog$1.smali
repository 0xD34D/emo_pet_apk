.class Lcom/living/emo/view/MakeSureDialog$1;
.super Ljava/lang/Object;
.source "MakeSureDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/view/MakeSureDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/view/MakeSureDialog;


# direct methods
.method constructor <init>(Lcom/living/emo/view/MakeSureDialog;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/living/emo/view/MakeSureDialog$1;->this$0:Lcom/living/emo/view/MakeSureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/living/emo/view/MakeSureDialog$1;->this$0:Lcom/living/emo/view/MakeSureDialog;

    invoke-static {p1}, Lcom/living/emo/view/MakeSureDialog;->access$000(Lcom/living/emo/view/MakeSureDialog;)Lcom/living/emo/view/MakeSureDialog$onDialogClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/living/emo/view/MakeSureDialog$1;->this$0:Lcom/living/emo/view/MakeSureDialog;

    invoke-static {p1}, Lcom/living/emo/view/MakeSureDialog;->access$000(Lcom/living/emo/view/MakeSureDialog;)Lcom/living/emo/view/MakeSureDialog$onDialogClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/living/emo/view/MakeSureDialog$onDialogClickListener;->onSureClick()V

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/living/emo/view/MakeSureDialog$1;->this$0:Lcom/living/emo/view/MakeSureDialog;

    invoke-virtual {p1}, Lcom/living/emo/view/MakeSureDialog;->dismiss()V

    return-void
.end method
