.class public Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BleDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/BleDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mBleName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/living/emo/adapter/BleDeviceAdapter;


# direct methods
.method public constructor <init>(Lcom/living/emo/adapter/BleDeviceAdapter;Landroid/view/View;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;->this$0:Lcom/living/emo/adapter/BleDeviceAdapter;

    .line 68
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090274

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/living/emo/adapter/BleDeviceAdapter$ViewHolder;->mBleName:Landroid/widget/TextView;

    return-void
.end method
