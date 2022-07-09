.class public Lcom/living/emo/adapter/DeviceAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;,
        Lcom/living/emo/adapter/DeviceAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private bleDevicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private mListener:Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/living/emo/adapter/DeviceAdapter;->context:Landroid/content/Context;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/adapter/DeviceAdapter;)Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/living/emo/adapter/DeviceAdapter;->mListener:Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;

    return-object p0
.end method

.method private clearConnectedDevice()V
    .locals 3

    const/4 v0, 0x1

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    .line 46
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    const/4 v0, 0x1

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    .line 37
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/living/emo/adapter/DeviceAdapter;->removeDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 31
    iget-object v0, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/living/emo/adapter/DeviceAdapter;->clearConnectedDevice()V

    .line 62
    invoke-virtual {p0}, Lcom/living/emo/adapter/DeviceAdapter;->clearScanDevice()V

    return-void
.end method

.method public clearScanDevice()V
    .locals 3

    const/4 v0, 0x0

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clj/fastble/data/BleDevice;

    .line 55
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/living/emo/adapter/DeviceAdapter;->bleDevicesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/living/emo/adapter/DeviceAdapter$ViewHolder;

    goto :goto_0

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/living/emo/adapter/DeviceAdapter;->context:Landroid/content/Context;

    const p3, 0x7f0c0092

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance p3, Lcom/living/emo/adapter/DeviceAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/living/emo/adapter/DeviceAdapter$ViewHolder;-><init>(Lcom/living/emo/adapter/DeviceAdapter;)V

    .line 90
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f090341

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/living/emo/adapter/DeviceAdapter$ViewHolder;->txt_name:Landroid/widget/TextView;

    .line 93
    :goto_0
    invoke-virtual {p0, p1}, Lcom/living/emo/adapter/DeviceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clj/fastble/data/BleDevice;

    if-eqz p1, :cond_1

    .line 96
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clj/fastble/BleManager;->isConnected(Lcom/clj/fastble/data/BleDevice;)Z

    .line 97
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p3, Lcom/living/emo/adapter/DeviceAdapter$ViewHolder;->txt_name:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_1
    iget-object p3, p3, Lcom/living/emo/adapter/DeviceAdapter$ViewHolder;->txt_name:Landroid/widget/TextView;

    new-instance v0, Lcom/living/emo/adapter/DeviceAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/living/emo/adapter/DeviceAdapter$1;-><init>(Lcom/living/emo/adapter/DeviceAdapter;Lcom/clj/fastble/data/BleDevice;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setOnDeviceClickListener(Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/living/emo/adapter/DeviceAdapter;->mListener:Lcom/living/emo/adapter/DeviceAdapter$OnDeviceClickListener;

    return-void
.end method
