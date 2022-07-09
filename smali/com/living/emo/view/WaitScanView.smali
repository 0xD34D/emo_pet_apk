.class public Lcom/living/emo/view/WaitScanView;
.super Ljava/lang/Object;
.source "WaitScanView.java"


# static fields
.field private static sRescanPopWindow:Lcom/living/emo/view/RescanPopWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss()V
    .locals 1

    .line 17
    sget-object v0, Lcom/living/emo/view/WaitScanView;->sRescanPopWindow:Lcom/living/emo/view/RescanPopWindow;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/living/emo/view/RescanPopWindow;->dismiss()V

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/living/emo/view/WaitScanView;->sRescanPopWindow:Lcom/living/emo/view/RescanPopWindow;

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 1

    .line 10
    sget-object v0, Lcom/living/emo/view/WaitScanView;->sRescanPopWindow:Lcom/living/emo/view/RescanPopWindow;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/living/emo/view/RescanPopWindow;

    invoke-direct {v0}, Lcom/living/emo/view/RescanPopWindow;-><init>()V

    sput-object v0, Lcom/living/emo/view/WaitScanView;->sRescanPopWindow:Lcom/living/emo/view/RescanPopWindow;

    .line 13
    :cond_0
    sget-object v0, Lcom/living/emo/view/WaitScanView;->sRescanPopWindow:Lcom/living/emo/view/RescanPopWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/living/emo/view/RescanPopWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
