.class public Lcom/living/emo/activity/WifiActivity;
.super Lcom/living/emo/activity/BaseActivity;
.source "WifiActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/activity/WifiActivity$MytextWatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnim:Landroid/widget/ImageView;

.field private mAnimBox:Landroid/widget/RelativeLayout;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mHandler:Landroid/os/Handler;

.field private mHelp:Lcom/living/emo/util/DatabaseUtil;

.field private mIsSend:Z

.field private mNotNow:Landroid/widget/ImageButton;

.field private mPwd:Landroid/widget/EditText;

.field private mPwdText:Ljava/lang/String;

.field private mSet:Landroid/widget/ImageButton;

.field private mSsidEd:Landroid/widget/EditText;

.field private mSsidEdText:Ljava/lang/String;

.field private mUserBox:Landroid/widget/RelativeLayout;

.field private mWifiTxt:Landroid/widget/ImageView;

.field public task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/activity/WifiActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/WifiActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/living/emo/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/living/emo/activity/WifiActivity;->mIsSend:Z

    .line 206
    new-instance v0, Lcom/living/emo/activity/WifiActivity$3;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/WifiActivity$3;-><init>(Lcom/living/emo/activity/WifiActivity;)V

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/activity/WifiActivity;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/living/emo/activity/WifiActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/living/emo/activity/WifiActivity;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/living/emo/activity/WifiActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/living/emo/activity/WifiActivity;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/living/emo/activity/WifiActivity;->mIsSend:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/living/emo/activity/WifiActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/living/emo/activity/WifiActivity;->updateUi()V

    return-void
.end method

.method static synthetic access$200(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEd:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/EditText;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/living/emo/activity/WifiActivity;->mPwd:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/living/emo/activity/WifiActivity;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/activity/WifiActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/living/emo/activity/WifiActivity;->hideInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)Z
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/living/emo/activity/WifiActivity;->isMessyCode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/living/emo/activity/WifiActivity;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEdText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/activity/WifiActivity;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/living/emo/activity/WifiActivity;->mPwdText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/activity/WifiActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/living/emo/activity/WifiActivity;->mSet:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private hide()V
    .locals 3

    const-string v0, "input_method"

    .line 99
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method private hideInput(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "input_method"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initData()V
    .locals 2

    .line 302
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 303
    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->version()[B

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p0, v1, v0}, Lcom/living/emo/activity/WifiActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 305
    invoke-static {p0}, Lcom/living/emo/util/DbManager;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/DatabaseUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mHelp:Lcom/living/emo/util/DatabaseUtil;

    return-void
.end method

.method private initEvents()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEd:Landroid/widget/EditText;

    new-instance v1, Lcom/living/emo/activity/WifiActivity$1;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/WifiActivity$1;-><init>(Lcom/living/emo/activity/WifiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f090371

    .line 153
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/living/emo/activity/WifiActivity$2;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/WifiActivity$2;-><init>(Lcom/living/emo/activity/WifiActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEd:Landroid/widget/EditText;

    new-instance v1, Lcom/living/emo/activity/WifiActivity$MytextWatcher;

    const/16 v2, 0x1f

    invoke-direct {v1, p0, p0, v0, v2}, Lcom/living/emo/activity/WifiActivity$MytextWatcher;-><init>(Lcom/living/emo/activity/WifiActivity;Landroid/content/Context;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 163
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/living/emo/activity/WifiActivity$MytextWatcher;

    const/16 v2, 0x3f

    invoke-direct {v1, p0, p0, v0, v2}, Lcom/living/emo/activity/WifiActivity$MytextWatcher;-><init>(Lcom/living/emo/activity/WifiActivity;Landroid/content/Context;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mSet:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$WifiActivity$9hm_1wyuWU1qN7yU69ca2yIt3Eo;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$WifiActivity$9hm_1wyuWU1qN7yU69ca2yIt3Eo;-><init>(Lcom/living/emo/activity/WifiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mNotNow:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/activity/-$$Lambda$WifiActivity$W_N54gla21HWO9n3GsK5OOOLdRI;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/-$$Lambda$WifiActivity$W_N54gla21HWO9n3GsK5OOOLdRI;-><init>(Lcom/living/emo/activity/WifiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f09037a

    .line 311
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEd:Landroid/widget/EditText;

    const v0, 0x7f090377

    .line 312
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mPwd:Landroid/widget/EditText;

    .line 313
    new-instance v1, Lcom/living/emo/activity/WifiActivity$4;

    invoke-direct {v1, p0}, Lcom/living/emo/activity/WifiActivity$4;-><init>(Lcom/living/emo/activity/WifiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f090379

    .line 338
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mSet:Landroid/widget/ImageButton;

    const v0, 0x7f090376

    .line 339
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mNotNow:Landroid/widget/ImageButton;

    const v0, 0x7f090372

    .line 340
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f09037c

    .line 341
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mWifiTxt:Landroid/widget/ImageView;

    const v0, 0x7f090370

    .line 342
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mAnimBox:Landroid/widget/RelativeLayout;

    const v0, 0x7f09037e

    .line 343
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mUserBox:Landroid/widget/RelativeLayout;

    const v0, 0x7f09036f

    .line 344
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/WifiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mAnim:Landroid/widget/ImageView;

    .line 345
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 346
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private static isMessyCode(Ljava/lang/String;)Z
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "\\s*|\t*|\r*|\n*"

    .line 265
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 266
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 267
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "\\p{P}"

    .line 268
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p0, :cond_0

    .line 271
    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 273
    aget-char v4, p0, v3

    .line 274
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v5, p0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[\u4e00-\u9fa5]+"

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 282
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v1
.end method

.method private updateUi()V
    .locals 4

    .line 290
    iget-boolean v0, p0, Lcom/living/emo/activity/WifiActivity;->mIsSend:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mWifiTxt:Landroid/widget/ImageView;

    const v3, 0x7f080162

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 292
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mAnimBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mUserBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mWifiTxt:Landroid/widget/ImageView;

    const v3, 0x7f080166

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 296
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mAnimBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/living/emo/activity/WifiActivity;->mUserBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$initEvents$0$WifiActivity(Landroid/view/View;)V
    .locals 3

    .line 166
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mSet:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 167
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEdText:Ljava/lang/String;

    .line 168
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mPwdText:Ljava/lang/String;

    .line 170
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEdText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "ssid is required"

    .line 171
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/WifiActivity;->showToast(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mSet:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEdText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 176
    array-length p1, p1

    const/16 v1, 0x1f

    const-string v2, "Your input exceeds the maximum length allowed."

    if-le p1, v1, :cond_1

    .line 177
    invoke-virtual {p0, v2}, Lcom/living/emo/activity/WifiActivity;->showToast(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mSet:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mPwdText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    .line 185
    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mPwdText:Ljava/lang/String;

    .line 187
    :cond_2
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mPwdText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 188
    array-length p1, p1

    const/16 v1, 0x3f

    if-le p1, v1, :cond_3

    .line 189
    invoke-virtual {p0, v2}, Lcom/living/emo/activity/WifiActivity;->showToast(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mSet:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mSsidEdText:Ljava/lang/String;

    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity;->mPwdText:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/living/emo/blebean/util/BleJsonUtil;->wifi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 196
    iget-object v1, p0, Lcom/living/emo/activity/WifiActivity;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p0, v1, p1}, Lcom/living/emo/activity/WifiActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 197
    iput-boolean v0, p0, Lcom/living/emo/activity/WifiActivity;->mIsSend:Z

    .line 198
    invoke-direct {p0}, Lcom/living/emo/activity/WifiActivity;->updateUi()V

    return-void
.end method

.method public synthetic lambda$initEvents$1$WifiActivity(Landroid/view/View;)V
    .locals 1

    .line 201
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/living/emo/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/living/emo/activity/WifiActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/living/emo/activity/WifiActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/living/emo/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0031

    .line 79
    invoke-virtual {p0, p1}, Lcom/living/emo/activity/WifiActivity;->setContentView(I)V

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/WifiActivity;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/living/emo/activity/WifiActivity;->initData()V

    .line 82
    invoke-direct {p0}, Lcom/living/emo/activity/WifiActivity;->initViews()V

    .line 83
    invoke-direct {p0}, Lcom/living/emo/activity/WifiActivity;->initEvents()V

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 444
    invoke-super {p0}, Lcom/living/emo/activity/BaseActivity;->onDestroy()V

    .line 445
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 351
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 352
    new-instance v0, Lcom/living/emo/activity/WifiActivity$5;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/WifiActivity$5;-><init>(Lcom/living/emo/activity/WifiActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleVersionResponseParse;->version(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleVersionResponseParse$Callback;)V

    .line 360
    new-instance v0, Lcom/living/emo/activity/WifiActivity$6;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/WifiActivity$6;-><init>(Lcom/living/emo/activity/WifiActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->wifi(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    .line 385
    new-instance v0, Lcom/living/emo/activity/WifiActivity$7;

    invoke-direct {v0, p0}, Lcom/living/emo/activity/WifiActivity$7;-><init>(Lcom/living/emo/activity/WifiActivity;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleWifiRequestParse;->wifiReq(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleWifiRequestParse$Callback;)V

    return-void
.end method
