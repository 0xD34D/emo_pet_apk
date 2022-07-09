.class public Lcom/living/emo/util/SensorUtil;
.super Ljava/lang/Object;
.source "SensorUtil.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/util/SensorUtil$SensorXYListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/living/emo/util/SensorUtil;


# instance fields
.field private mCallBack:Lcom/living/emo/util/SensorUtil$SensorXYListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/living/emo/util/SensorUtil;
    .locals 1

    .line 19
    sget-object v0, Lcom/living/emo/util/SensorUtil;->instance:Lcom/living/emo/util/SensorUtil;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/living/emo/util/SensorUtil;

    invoke-direct {v0}, Lcom/living/emo/util/SensorUtil;-><init>()V

    sput-object v0, Lcom/living/emo/util/SensorUtil;->instance:Lcom/living/emo/util/SensorUtil;

    .line 22
    :cond_0
    sget-object v0, Lcom/living/emo/util/SensorUtil;->instance:Lcom/living/emo/util/SensorUtil;

    return-object v0
.end method


# virtual methods
.method public SetOnSensorListener(Lcom/living/emo/util/SensorUtil$SensorXYListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/living/emo/util/SensorUtil;->mCallBack:Lcom/living/emo/util/SensorUtil$SensorXYListener;

    return-void
.end method

.method public disEnabled()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/living/emo/util/SensorUtil;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public enabled()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/living/emo/util/SensorUtil;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/living/emo/util/SensorUtil;->sensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 49
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 50
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    .line 51
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v0, v0, v3

    .line 52
    iget-object v0, p0, Lcom/living/emo/util/SensorUtil;->mCallBack:Lcom/living/emo/util/SensorUtil$SensorXYListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-interface {v0, v1, p1}, Lcom/living/emo/util/SensorUtil$SensorXYListener;->OnResult(FF)V

    :cond_0
    return-void
.end method

.method public setup(Landroid/content/Context;)V
    .locals 1

    const-string v0, "sensor"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/living/emo/util/SensorUtil;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/SensorUtil;->sensor:Landroid/hardware/Sensor;

    return-void
.end method
