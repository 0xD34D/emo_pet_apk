.class Lcom/living/emo/view/LeftPopupWindow$1;
.super Ljava/lang/Object;
.source "LeftPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/view/LeftPopupWindow;->initEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/view/LeftPopupWindow;


# direct methods
.method constructor <init>(Lcom/living/emo/view/LeftPopupWindow;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/living/emo/view/LeftPopupWindow$1;->this$0:Lcom/living/emo/view/LeftPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/living/emo/view/LeftPopupWindow$1;->this$0:Lcom/living/emo/view/LeftPopupWindow;

    invoke-virtual {p1}, Lcom/living/emo/view/LeftPopupWindow;->dismiss()V

    return-void
.end method
