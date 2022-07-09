.class public Lcom/clj/fastble/bluetooth/BleBluetooth;
.super Ljava/lang/Object;
.source "BleBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;,
        Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;
    }
.end annotation


# instance fields
.field private bleDevice:Lcom/clj/fastble/data/BleDevice;

.field private bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

.field private bleIndicateCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/callback/BleIndicateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bleMtuChangedCallback:Lcom/clj/fastble/callback/BleMtuChangedCallback;

.field private bleNotifyCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/callback/BleNotifyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bleReadCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/callback/BleReadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bleRssiCallback:Lcom/clj/fastble/callback/BleRssiCallback;

.field private bleWriteCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/clj/fastble/callback/BleWriteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private connectRetryCount:I

.field private coreGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private isActiveDisconnect:Z

.field private lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

.field private mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->isActiveDisconnect:Z

    .line 53
    new-instance v1, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;-><init>(Lcom/clj/fastble/bluetooth/BleBluetooth;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    .line 54
    iput v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    .line 362
    new-instance v0, Lcom/clj/fastble/bluetooth/BleBluetooth$1;

    invoke-direct {v0, p0}, Lcom/clj/fastble/bluetooth/BleBluetooth$1;-><init>(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->coreGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 57
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-void
.end method

.method static synthetic access$000(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnectGatt()V

    return-void
.end method

.method static synthetic access$100(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->refreshDeviceCache()V

    return-void
.end method

.method static synthetic access$1000(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/clj/fastble/bluetooth/BleBluetooth;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleRssiCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleRssiCallback:Lcom/clj/fastble/callback/BleRssiCallback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleMtuChangedCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleMtuChangedCallback:Lcom/clj/fastble/callback/BleMtuChangedCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/clj/fastble/bluetooth/BleBluetooth;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->closeBluetoothGatt()V

    return-void
.end method

.method static synthetic access$300(Lcom/clj/fastble/bluetooth/BleBluetooth;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    return p0
.end method

.method static synthetic access$304(Lcom/clj/fastble/bluetooth/BleBluetooth;)I
    .locals 1

    .line 39
    iget v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    return-object p0
.end method

.method static synthetic access$502(Lcom/clj/fastble/bluetooth/BleBluetooth;Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;)Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/callback/BleGattCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/clj/fastble/bluetooth/BleBluetooth;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$800(Lcom/clj/fastble/bluetooth/BleBluetooth;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic access$802(Lcom/clj/fastble/bluetooth/BleBluetooth;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$900(Lcom/clj/fastble/bluetooth/BleBluetooth;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->isActiveDisconnect:Z

    return p0
.end method

.method static synthetic access$902(Lcom/clj/fastble/bluetooth/BleBluetooth;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->isActiveDisconnect:Z

    return p1
.end method

.method private declared-synchronized closeBluetoothGatt()V
    .locals 1

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized disconnectGatt()V
    .locals 1

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshDeviceCache()V
    .locals 4

    monitor-enter p0

    .line 224
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothGatt;

    const-string v1, "refresh"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 226
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshDeviceCache, is success:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 230
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception occur while refreshing device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addConnectGattCallback(Lcom/clj/fastble/callback/BleGattCallback;)V
    .locals 0

    monitor-enter p0

    .line 65
    :try_start_0
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addIndicateCallback(Ljava/lang/String;Lcom/clj/fastble/callback/BleIndicateCallback;)V
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMtuChangedCallback(Lcom/clj/fastble/callback/BleMtuChangedCallback;)V
    .locals 0

    monitor-enter p0

    .line 128
    :try_start_0
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleMtuChangedCallback:Lcom/clj/fastble/callback/BleMtuChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addNotifyCallback(Ljava/lang/String;Lcom/clj/fastble/callback/BleNotifyCallback;)V
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addReadCallback(Ljava/lang/String;Lcom/clj/fastble/callback/BleReadCallback;)V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRssiCallback(Lcom/clj/fastble/callback/BleRssiCallback;)V
    .locals 0

    monitor-enter p0

    .line 120
    :try_start_0
    iput-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleRssiCallback:Lcom/clj/fastble/callback/BleRssiCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addWriteCallback(Ljava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearCharacterCallback()V
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/clj/fastble/data/BleDevice;ZLcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->connect(Lcom/clj/fastble/data/BleDevice;ZLcom/clj/fastble/callback/BleGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connect(Lcom/clj/fastble/data/BleDevice;ZLcom/clj/fastble/callback/BleGattCallback;I)Landroid/bluetooth/BluetoothGatt;
    .locals 3

    monitor-enter p0

    .line 158
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nautoConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncurrentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nconnectCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/clj/fastble/utils/BleLog;->i(Ljava/lang/String;)V

    if-nez p4, :cond_0

    const/4 p4, 0x0

    .line 164
    iput p4, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->connectRetryCount:I

    .line 167
    :cond_0
    invoke-virtual {p0, p3}, Lcom/clj/fastble/bluetooth/BleBluetooth;->addConnectGattCallback(Lcom/clj/fastble/callback/BleGattCallback;)V

    .line 169
    sget-object p3, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTING:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object p3, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    .line 171
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x17

    if-lt p3, p4, :cond_1

    .line 172
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/clj/fastble/BleManager;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->coreGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v1, 0x2

    invoke-virtual {p3, p4, p2, v0, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    iput-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/clj/fastble/BleManager;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->coreGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p3, p4, p2, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    iput-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 178
    :goto_0
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_3

    .line 179
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p1}, Lcom/clj/fastble/callback/BleGattCallback;->onStartConnect()V

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-virtual {p1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x7

    .line 183
    iput p2, p1, Landroid/os/Message;->what:I

    .line 184
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/clj/fastble/BleManager;->getConnectOverTime()J

    move-result-wide p3

    invoke-virtual {p2, p1, p3, p4}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 187
    :cond_3
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnectGatt()V

    .line 188
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->refreshDeviceCache()V

    .line 189
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->closeBluetoothGatt()V

    .line 190
    sget-object p2, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    .line 191
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/clj/fastble/BleManager;->getMultipleBluetoothController()Lcom/clj/fastble/bluetooth/MultipleBluetoothController;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/clj/fastble/bluetooth/MultipleBluetoothController;->removeConnectingBle(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    .line 192
    iget-object p2, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;

    if-eqz p2, :cond_4

    .line 193
    new-instance p3, Lcom/clj/fastble/exception/OtherException;

    const-string p4, "GATT connect exception occurred!"

    invoke-direct {p3, p4}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Lcom/clj/fastble/callback/BleGattCallback;->onConnectFail(Lcom/clj/fastble/data/BleDevice;Lcom/clj/fastble/exception/BleException;)V

    .line 196
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 205
    :try_start_0
    sget-object v0, Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;->CONNECT_IDLE:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->lastState:Lcom/clj/fastble/bluetooth/BleBluetooth$LastState;

    .line 206
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnectGatt()V

    .line 207
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->refreshDeviceCache()V

    .line 208
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->closeBluetoothGatt()V

    .line 209
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeConnectGattCallback()V

    .line 210
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeRssiCallback()V

    .line 211
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->removeMtuChangedCallback()V

    .line 212
    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->clearCharacterCallback()V

    .line 213
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->mainHandler:Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clj/fastble/bluetooth/BleBluetooth$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 200
    :try_start_0
    iput-boolean v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->isActiveDisconnect:Z

    .line 201
    invoke-direct {p0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnectGatt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getDevice()Lcom/clj/fastble/data/BleDevice;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {v0}, Lcom/clj/fastble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newBleConnector()Lcom/clj/fastble/bluetooth/BleConnector;
    .locals 1

    .line 61
    new-instance v0, Lcom/clj/fastble/bluetooth/BleConnector;

    invoke-direct {v0, p0}, Lcom/clj/fastble/bluetooth/BleConnector;-><init>(Lcom/clj/fastble/bluetooth/BleBluetooth;)V

    return-object v0
.end method

.method public declared-synchronized removeConnectGattCallback()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 69
    :try_start_0
    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleGattCallback:Lcom/clj/fastble/callback/BleGattCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeIndicateCallback(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleIndicateCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMtuChangedCallback()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 132
    :try_start_0
    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleMtuChangedCallback:Lcom/clj/fastble/callback/BleMtuChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNotifyCallback(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleNotifyCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeReadCallback(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleReadCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRssiCallback()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 124
    :try_start_0
    iput-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleRssiCallback:Lcom/clj/fastble/callback/BleRssiCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeWriteCallback(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/BleBluetooth;->bleWriteCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
