.class public Lcom/living/emo/activity/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sessionDepth:I


# instance fields
.field private characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private firstTime:J

.field private res:[B

.field private t:Landroid/widget/Toast;

.field private total:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/BaseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/BaseActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    sput v0, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 232
    iput-wide v0, p0, Lcom/living/emo/activity/BaseActivity;->firstTime:J

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/living/emo/activity/BaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/living/emo/activity/BaseActivity;)[B
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/living/emo/activity/BaseActivity;->res:[B

    return-object p0
.end method

.method static synthetic access$102(Lcom/living/emo/activity/BaseActivity;[B)[B
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/living/emo/activity/BaseActivity;->res:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/living/emo/activity/BaseActivity;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/living/emo/activity/BaseActivity;->total:I

    return p0
.end method

.method static synthetic access$202(Lcom/living/emo/activity/BaseActivity;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/living/emo/activity/BaseActivity;->total:I

    return p1
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/living/emo/activity/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/living/emo/activity/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 199
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 202
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 203
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TAG"

    const-string v1, "dispatchTouchEvent: dowm"

    .line 283
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/living/emo/activity/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v0, p1}, Lcom/living/emo/activity/BaseActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    .line 286
    invoke-virtual {p0, v1}, Lcom/living/emo/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 291
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/living/emo/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 296
    :cond_2
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dropOut()V
    .locals 1

    .line 235
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->destroy()V

    .line 236
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->end()V

    .line 237
    invoke-static {}, Lcom/living/emo/util/ActivityCollector;->finishAll()V

    return-void
.end method

.method public getVersionCode()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    return-wide v0

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method protected initNotify(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 118
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/BaseActivity$1;-><init>(Lcom/living/emo/activity/BaseActivity;)V

    const-string v2, "0000ffe0-0000-1000-8000-00805f9b34fb"

    const-string v3, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/clj/fastble/BleManager;->notify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;Lcom/clj/fastble/callback/BleNotifyCallback;)V

    return-void
.end method

.method public isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 300
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 301
    fill-array-data v1, :array_0

    .line 302
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 303
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 304
    aget v1, v1, v3

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    return v0

    :cond_0
    return v3

    :cond_1
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BaseActivity;->requestWindowFeature(I)Z

    .line 53
    invoke-virtual {p0}, Lcom/living/emo/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 55
    invoke-virtual {p0}, Lcom/living/emo/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 60
    invoke-virtual {p0}, Lcom/living/emo/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 61
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lcom/living/emo/util/ActivityCollector;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 102
    invoke-static {p0}, Lcom/living/emo/util/ActivityCollector;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 245
    iget-wide p1, p0, Lcom/living/emo/activity/BaseActivity;->firstTime:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x7d0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/living/emo/activity/BaseActivity;->dropOut()V

    .line 247
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Press the return key again to exit"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/living/emo/activity/BaseActivity;->firstTime:J

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 256
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 3

    .line 69
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 70
    sget v0, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    const-string v1, "------------------------"

    if-nez v0, :cond_0

    .line 72
    instance-of v0, p0, Lcom/living/emo/activity/ConnectActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/living/emo/activity/CityActivity;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/living/emo/activity/TimezoneActivity;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj  sessionDepth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume  sessionDepth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget v0, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 86
    sget v0, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 87
    sput v0, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    .line 88
    :cond_0
    sget v0, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    if-nez v0, :cond_1

    .line 90
    invoke-static {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil;->pause()V

    const-string v0, "-"

    const-string v1, "------------------------------------------------------------------------------------"

    .line 91
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/living/emo/activity/BaseActivity;->TAG:Ljava/lang/String;

    const-string v3, "\u8fdb\u5165\u540e\u53f0"

    invoke-static {v2, v3}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v0, v1}, Lcom/living/emo/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop  sessionDepth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/living/emo/activity/BaseActivity;->sessionDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "------------------------"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playBackgroundMusicEvent(Landroid/view/View;)V
    .locals 1

    .line 189
    new-instance v0, Lcom/living/emo/activity/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/BaseActivity$2;-><init>(Lcom/living/emo/activity/BaseActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/living/emo/activity/BaseActivity;->t:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 107
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/BaseActivity;->t:Landroid/widget/Toast;

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/living/emo/activity/BaseActivity;->t:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public declared-synchronized write(Lcom/clj/fastble/data/BleDevice;[B)V
    .locals 10

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 215
    :try_start_0
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    const-string v2, "0000ffe0-0000-1000-8000-00805f9b34fb"

    const-string v3, "0000ffe1-0000-1000-8000-00805f9b34fb"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x14

    new-instance v9, Lcom/living/emo/activity/BaseActivity$3;

    invoke-direct {v9, p0}, Lcom/living/emo/activity/BaseActivity$3;-><init>(Lcom/living/emo/activity/BaseActivity;)V

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v9}, Lcom/clj/fastble/BleManager;->write(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;[BZZJLcom/clj/fastble/callback/BleWriteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 229
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
