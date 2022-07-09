.class Lcom/living/emo/adapter/DeviceAdapter$1;
.super Ljava/lang/Object;
.source "DeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/adapter/DeviceAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/adapter/DeviceAdapter;

.field final synthetic val$bleDevice:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method constructor <init>(Lcom/living/emo/adapter/DeviceAdapter;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/living/emo/adapter/DeviceAdapter$1;->this$0:Lcom/living/emo/adapter/DeviceAdapter;

    iput-object p2, p0, Lcom/living/emo/adapter/DeviceAdapter$1;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/living/emo/adapter/DeviceAdapter$1;->this$0:Lcom/living/emo/adapter/DeviceAdapter;

    invoke-static {p1}, Lcom/living/emo/adapter/DeviceAdapter;->access$000(Lcom/living/emo/adapter/DeviceAdapter;)Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/living/emo/adapter/DeviceAdapter$1;->this$0:Lcom/living/emo/adapter/DeviceAdapter;

    invoke-static {p1}, Lcom/living/emo/adapter/DeviceAdapter;->access$000(Lcom/living/emo/adapter/DeviceAdapter;)Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/adapter/DeviceAdapter$1;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-interface {p1, v0}, Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;->selectDevice(Lcom/clj/fastble/data/BleDevice;)V

    :cond_0
    return-void
.end method
