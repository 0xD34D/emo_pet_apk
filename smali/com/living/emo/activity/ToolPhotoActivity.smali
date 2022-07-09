.class public Lcom/living/emo/activity/ToolPhotoActivity;
.super Lcom/living/emo/activity/AbstractBaseActivity;
.source "ToolPhotoActivity.java"


# static fields
.field private static final HANDLE_TIME_OUT:I = 0x1770

.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1


# instance fields
.field private isOut:Z

.field private isend:Z

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mHandler:Landroid/os/Handler;

.field private task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 51
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/ToolPhotoActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/living/emo/activity/AbstractBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/living/emo/activity/ToolPhotoActivity;->isend:Z

    .line 71
    new-instance v1, Lcom/living/emo/activity/ToolPhotoActivity$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/ToolPhotoActivity$1;-><init>(Lcom/living/emo/activity/ToolPhotoActivity;)V

    iput-object v1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->task:Ljava/lang/Runnable;

    .line 81
    iput-boolean v0, p0, Lcom/living/emo/activity/ToolPhotoActivity;->isOut:Z

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/ToolPhotoActivity;Ljava/lang/Class;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/living/emo/activity/ToolPhotoActivity;->goToActivity(Ljava/lang/Class;)V

    return-void
.end method

.method private goToActivity(Ljava/lang/Class;)V
    .locals 1

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/ToolPhotoActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolPhotoActivity;->finish()V

    return-void
.end method

.method public static verifyStoragePermissions(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 60
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/living/emo/activity/ToolPhotoActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/living/emo/activity/ToolPhotoActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v1, "out"

    invoke-static {v1}, Lcom/living/emo/blebean/util/BleJsonUtil;->Photo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/living/emo/activity/ToolPhotoActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/living/emo/activity/ToolPhotoActivity;->isOut:Z

    const-string v0, "Wait for emo to exit..."

    .line 87
    invoke-static {p0, v0}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected initView()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->initView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Lcom/living/emo/activity/AbstractBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->mRadio:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 39
    iget-object p1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->mRadio:Ljava/util/HashMap;

    const v0, 0x7f080303

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->mRadio:Ljava/util/HashMap;

    const v0, 0x7f080305

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/living/emo/bean/TextBean;->getPhotoData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/ToolPhotoActivity;->initFragment(Ljava/util/List;)V

    .line 42
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    const-string v0, "in"

    .line 43
    invoke-static {v0}, Lcom/living/emo/blebean/util/BleJsonUtil;->Photo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/living/emo/activity/ToolPhotoActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    const p1, 0x7f1000de

    .line 44
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/ToolPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->mHandler:Landroid/os/Handler;

    .line 46
    iget-object v0, p0, Lcom/living/emo/activity/ToolPhotoActivity;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/living/emo/activity/ToolPhotoActivity;->isend:Z

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble json data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:ToolPhotoActivity"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Lcom/living/emo/blebean/response/ResultResponse;->objectFromData(Ljava/lang/String;)Lcom/living/emo/blebean/response/ResultResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "photo_rsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 108
    iget-boolean p1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->isend:Z

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/living/emo/activity/ToolPhotoActivity;->task:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 111
    invoke-static {p0}, Lcom/living/emo/activity/ToolPhotoActivity;->verifyStoragePermissions(Landroid/app/Activity;)V

    .line 112
    iput-boolean v1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->isend:Z

    .line 114
    :cond_0
    iget-boolean p1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->isOut:Z

    if-eqz p1, :cond_2

    .line 115
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 116
    const-class p1, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-direct {p0, p1}, Lcom/living/emo/activity/ToolPhotoActivity;->goToActivity(Ljava/lang/Class;)V

    .line 117
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolPhotoActivity;->finish()V

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Lcom/living/emo/activity/ToolPhotoActivity;->isOut:Z

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse;->getData()Lcom/living/emo/blebean/response/ResultResponse$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/ResultResponse$DataBean;->getResult()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 121
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 122
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/activity/UtilitiesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/ToolPhotoActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolPhotoActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->onPause()V

    .line 133
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/living/emo/activity/AbstractBaseActivity;->onStop()V

    .line 140
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolPhotoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/living/emo/activity/ToolPhotoActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected setTopBg()I
    .locals 1

    const v0, 0x7f080361

    return v0
.end method
