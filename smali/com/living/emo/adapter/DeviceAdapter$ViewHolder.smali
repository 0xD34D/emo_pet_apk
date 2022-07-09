.class Lcom/living/emo/adapter/DeviceAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/DeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field btn_connect:Landroid/widget/Button;

.field btn_detail:Landroid/widget/Button;

.field btn_disconnect:Landroid/widget/Button;

.field layout_connected:Landroid/widget/LinearLayout;

.field layout_idle:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/living/emo/adapter/DeviceAdapter;

.field txt_mac:Landroid/widget/TextView;

.field txt_name:Landroid/widget/TextView;

.field txt_rssi:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/living/emo/adapter/DeviceAdapter;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/living/emo/adapter/DeviceAdapter$ViewHolder;->this$0:Lcom/living/emo/adapter/DeviceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
