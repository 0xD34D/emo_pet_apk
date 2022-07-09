.class public Lcom/living/emo/view/RescanPopWindow;
.super Landroid/widget/PopupWindow;
.source "RescanPopWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RescanPopWindow"


# instance fields
.field private final mPreview:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, v0, v0}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 21
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00d4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/living/emo/view/RescanPopWindow;->mPreview:Landroid/view/View;

    .line 22
    invoke-virtual {p0, v1}, Lcom/living/emo/view/RescanPopWindow;->setContentView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/living/emo/view/RescanPopWindow;->setWidth(I)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/living/emo/view/RescanPopWindow;->setHeight(I)V

    const/16 v0, 0x10

    .line 25
    invoke-virtual {p0, v0}, Lcom/living/emo/view/RescanPopWindow;->setSoftInputMode(I)V

    .line 26
    invoke-virtual {p0, v4}, Lcom/living/emo/view/RescanPopWindow;->setClippingEnabled(Z)V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/living/emo/view/RescanPopWindow;->setOutsideTouchable(Z)V

    return-void
.end method
