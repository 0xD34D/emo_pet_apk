.class public Lcom/living/emo/activity/TimezoneActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "TimezoneActivity.java"


# instance fields
.field mNotNow:Landroid/widget/ImageButton;

.field mSet:Landroid/widget/ImageButton;

.field mTimezoneName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/living/emo/activity/TimezoneActivity;->mNotNow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$TimezoneActivity$uG6uNGIRZTTVs11pqGBqk6GHjWU;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$TimezoneActivity$uG6uNGIRZTTVs11pqGBqk6GHjWU;-><init>(Lcom/living/emo/activity/TimezoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/living/emo/activity/TimezoneActivity;->mSet:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$TimezoneActivity$jrSCaLwnG1nOAB2n2HWaiuCQ2A8;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$TimezoneActivity$jrSCaLwnG1nOAB2n2HWaiuCQ2A8;-><init>(Lcom/living/emo/activity/TimezoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f09031c

    .line 61
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/TimezoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/living/emo/activity/TimezoneActivity;->mTimezoneName:Landroid/widget/EditText;

    const v0, 0x7f09031e

    .line 62
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/TimezoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/TimezoneActivity;->mNotNow:Landroid/widget/ImageButton;

    const v0, 0x7f09031f

    .line 63
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/TimezoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/TimezoneActivity;->mSet:Landroid/widget/ImageButton;

    .line 64
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/living/emo/activity/TimezoneActivity;->mTimezoneName:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 66
    iget-object v1, p0, Lcom/living/emo/activity/TimezoneActivity;->mTimezoneName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public goToActivity(Ljava/lang/Class;)V
    .locals 1

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/living/emo/activity/TimezoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/living/emo/activity/TimezoneActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initEvent$0$TimezoneActivity(Landroid/view/View;)V
    .locals 1

    .line 71
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/TimezoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/living/emo/activity/TimezoneActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$initEvent$1$TimezoneActivity(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/living/emo/activity/TimezoneActivity;->mSet:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 81
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/living/emo/blebean/util/BleJsonUtil;->timeZone(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 84
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/living/emo/activity/TimezoneActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002d

    .line 37
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/TimezoneActivity;->setContentView(I)V

    .line 38
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lcom/living/emo/activity/TimezoneActivity;->initView()V

    .line 40
    invoke-direct {p0}, Lcom/living/emo/activity/TimezoneActivity;->initEvent()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 129
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:Timezone"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/living/emo/activity/TimezoneActivity$1;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/TimezoneActivity$1;-><init>(Lcom/living/emo/activity/TimezoneActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->timezone(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    .line 108
    new-instance v0, Lcom/living/emo/activity/TimezoneActivity$2;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/TimezoneActivity$2;-><init>(Lcom/living/emo/activity/TimezoneActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleNetworkResponseParse;->network(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleNetworkResponseParse$Callback;)V

    return-void
.end method
