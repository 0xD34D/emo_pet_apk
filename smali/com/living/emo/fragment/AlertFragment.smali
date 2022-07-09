.class public Lcom/living/emo/fragment/AlertFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "AlertFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/fragment/AlertFragment$State;
    }
.end annotation


# instance fields
.field private mAlarmBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/AlarmBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

.field mAlertDelete:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090050
    .end annotation
.end field

.field mAlertOnOff:I

.field mAlertRecy:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09004c
    .end annotation
.end field

.field mAlertSave:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090053
    .end annotation
.end field

.field private mBean:Lcom/living/emo/bean/AlarmBean;

.field private mBleDevice:Lcom/clj/fastble/data/BleDevice;

.field private mCurrentPosition:I

.field private mCurrentState:Lcom/living/emo/fragment/AlertFragment$State;

.field mHour:Lcom/zyyoona7/wheel/WheelView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09036a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zyyoona7/wheel/WheelView<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHourList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMinute:Lcom/zyyoona7/wheel/WheelView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09036b
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zyyoona7/wheel/WheelView<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinuteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRecurrence:Lcom/zyyoona7/wheel/WheelView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09036c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zyyoona7/wheel/WheelView<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecurrenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReminder:Lcom/zyyoona7/wheel/WheelView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090369
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zyyoona7/wheel/WheelView<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSwitchOnOff:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090057
    .end annotation
.end field

.field mTextCon:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09004e
    .end annotation
.end field

.field mTimeAdd:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09004f
    .end annotation
.end field

.field mTimeCon:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09004d
    .end annotation
.end field

.field private mToolAlertActivity:Lcom/living/emo/activity/ToolAlertActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertOnOff:I

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmState:Ljava/util/List;

    .line 87
    sget-object v0, Lcom/living/emo/fragment/AlertFragment$State;->None:Lcom/living/emo/fragment/AlertFragment$State;

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentState:Lcom/living/emo/fragment/AlertFragment$State;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/AlertFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/living/emo/fragment/AlertFragment;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/AlertFragment;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/living/emo/fragment/AlertFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/AlertFragment;Lcom/living/emo/bean/AlarmBean;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/AlertFragment;->updateTimeSetUI(Lcom/living/emo/bean/AlarmBean;)V

    return-void
.end method

.method static synthetic access$302(Lcom/living/emo/fragment/AlertFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmState:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/adapter/AlertAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/fragment/AlertFragment$State;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentState:Lcom/living/emo/fragment/AlertFragment$State;

    return-object p0
.end method

.method static synthetic access$502(Lcom/living/emo/fragment/AlertFragment;Lcom/living/emo/fragment/AlertFragment$State;)Lcom/living/emo/fragment/AlertFragment$State;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentState:Lcom/living/emo/fragment/AlertFragment$State;

    return-object p1
.end method

.method static synthetic access$600(Lcom/living/emo/fragment/AlertFragment;)Lcom/living/emo/activity/ToolAlertActivity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/living/emo/fragment/AlertFragment;->mToolAlertActivity:Lcom/living/emo/activity/ToolAlertActivity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/fragment/AlertFragment;)Lcom/clj/fastble/data/BleDevice;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/living/emo/fragment/AlertFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object p0
.end method

.method private static captureName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 234
    aget-char v1, p0, v0

    add-int/lit8 v1, v1, -0x20

    int-to-char v1, v1

    aput-char v1, p0, v0

    .line 235
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHourList()V
    .locals 5

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mHourList:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/living/emo/fragment/AlertFragment;->mHourList:Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "%02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMinuteLIst()V
    .locals 5

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mMinuteList:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/living/emo/fragment/AlertFragment;->mMinuteList:Ljava/util/List;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "%02d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getRecurrenceList()V
    .locals 2

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "ED"

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "MON"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "TUE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "WED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "THU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "FRI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "SAT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "SUN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "WDAY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "WKDN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    const-string v1, "ONCE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getReminderList()V
    .locals 2

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mReminderlist:Ljava/util/List;

    const-string v1, "Alarm"

    .line 393
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mReminderlist:Ljava/util/List;

    const-string v1, "Pill"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mReminderlist:Ljava/util/List;

    const-string v1, "Eat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mReminderlist:Ljava/util/List;

    const-string v1, "Sleep"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mReminderlist:Ljava/util/List;

    const-string v1, "Gym"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendConfig(Ljava/lang/String;I)V
    .locals 10

    .line 223
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mHour:Lcom/zyyoona7/wheel/WheelView;

    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItemData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mMinute:Lcom/zyyoona7/wheel/WheelView;

    invoke-virtual {v1}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItemData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    new-instance v9, Lcom/living/emo/bean/AlarmBean;

    iget v4, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertOnOff:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrence:Lcom/zyyoona7/wheel/WheelView;

    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItemData()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mReminder:Lcom/zyyoona7/wheel/WheelView;

    invoke-virtual {v0}, Lcom/zyyoona7/wheel/WheelView;->getSelectedItemData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, v9

    move v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/living/emo/bean/AlarmBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    invoke-static {p1, v9}, Lcom/living/emo/blebean/util/BleJsonUtil;->Alarm(Ljava/lang/String;Lcom/living/emo/bean/AlarmBean;)Ljava/lang/String;

    move-result-object p1

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initEvent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG"

    invoke-static {v0, p2}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Lcom/living/emo/fragment/AlertFragment;->mToolAlertActivity:Lcom/living/emo/activity/ToolAlertActivity;

    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {p1}, Lcom/living/emo/util/ByteUtil;->strToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/living/emo/activity/ToolAlertActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method private updateTimeSetUI(Lcom/living/emo/bean/AlarmBean;)V
    .locals 7

    .line 239
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/fragment/AlertFragment;->captureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getTime()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getRecurrence()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getOn()I

    move-result p1

    .line 243
    iget-object v3, p0, Lcom/living/emo/fragment/AlertFragment;->mReminderlist:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reminderIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "tag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TAG"

    invoke-static {v4, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mReminder:Lcom/zyyoona7/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/zyyoona7/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tagindex: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":"

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mHourList:Ljava/util/List;

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v0, v5

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hourIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v5, p0, Lcom/living/emo/fragment/AlertFragment;->mHour:Lcom/zyyoona7/wheel/WheelView;

    invoke-virtual {v5, v1}, Lcom/zyyoona7/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 253
    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mMinuteList:Ljava/util/List;

    array-length v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v0, v0, v5

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "minuteIndex: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mMinute:Lcom/zyyoona7/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/zyyoona7/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 257
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recurrenceIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrence:Lcom/zyyoona7/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/zyyoona7/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 262
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mSwitchOnOff:Landroid/widget/Switch;

    if-ne p1, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .line 121
    invoke-static {}, Lcom/living/emo/bean/BleBean;->getInstance()Lcom/living/emo/bean/BleBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/bean/BleBean;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    .line 122
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mTimeCon:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mReminder:Lcom/zyyoona7/wheel/WheelView;

    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mReminderlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 127
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mHour:Lcom/zyyoona7/wheel/WheelView;

    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mHourList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mMinute:Lcom/zyyoona7/wheel/WheelView;

    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mMinuteList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrence:Lcom/zyyoona7/wheel/WheelView;

    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mRecurrenceList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zyyoona7/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mToolAlertActivity:Lcom/living/emo/activity/ToolAlertActivity;

    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mBleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-static {}, Lcom/living/emo/blebean/util/BleRequestUtil;->alarm()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/living/emo/activity/ToolAlertActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    return-void
.end method

.method public initEvent()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mTimeAdd:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$AlertFragment$iHGwmmvUxhoWoFeNVEzSQnBRWhk;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$AlertFragment$iHGwmmvUxhoWoFeNVEzSQnBRWhk;-><init>(Lcom/living/emo/fragment/AlertFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mSwitchOnOff:Landroid/widget/Switch;

    new-instance v1, Lcom/living/emo/fragment/AlertFragment$2;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/AlertFragment$2;-><init>(Lcom/living/emo/fragment/AlertFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertDelete:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$AlertFragment$F1173vTK2MrUwS1MKHoe7Gvppq4;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$AlertFragment$F1173vTK2MrUwS1MKHoe7Gvppq4;-><init>(Lcom/living/emo/fragment/AlertFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertSave:Landroid/widget/ImageButton;

    new-instance v1, Lcom/living/emo/fragment/-$$Lambda$AlertFragment$5PvICdCSywMUiYkXvRbXZ4a_Zl0;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/-$$Lambda$AlertFragment$5PvICdCSywMUiYkXvRbXZ4a_Zl0;-><init>(Lcom/living/emo/fragment/AlertFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView()V
    .locals 2

    .line 96
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0}, Lcom/living/emo/fragment/AlertFragment;->getReminderList()V

    .line 98
    invoke-direct {p0}, Lcom/living/emo/fragment/AlertFragment;->getHourList()V

    .line 99
    invoke-direct {p0}, Lcom/living/emo/fragment/AlertFragment;->getMinuteLIst()V

    .line 100
    invoke-direct {p0}, Lcom/living/emo/fragment/AlertFragment;->getRecurrenceList()V

    .line 101
    invoke-virtual {p0}, Lcom/living/emo/fragment/AlertFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/living/emo/activity/ToolAlertActivity;

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mToolAlertActivity:Lcom/living/emo/activity/ToolAlertActivity;

    .line 102
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 103
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 104
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertRecy:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    new-instance v0, Lcom/living/emo/adapter/AlertAdapter;

    invoke-direct {v0}, Lcom/living/emo/adapter/AlertAdapter;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

    .line 106
    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertRecy:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

    new-instance v1, Lcom/living/emo/fragment/AlertFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/AlertFragment$1;-><init>(Lcom/living/emo/fragment/AlertFragment;)V

    invoke-virtual {v0, v1}, Lcom/living/emo/adapter/AlertAdapter;->setOnClickItemListener(Lcom/living/emo/adapter/AlertAdapter$OnClickItemListener;)V

    return-void
.end method

.method public synthetic lambda$initEvent$0$AlertFragment(Landroid/view/View;)V
    .locals 9

    .line 137
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mTimeAdd:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance p1, Lcom/living/emo/bean/AlarmBean;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v5, "00:00"

    const-string v6, "ED"

    const-string v7, "alarm"

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/living/emo/bean/AlarmBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mBean:Lcom/living/emo/bean/AlarmBean;

    .line 142
    iget-object v2, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    .line 145
    iget-object v3, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/AlarmBean;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/AlertFragment;->updateTimeSetUI(Lcom/living/emo/bean/AlarmBean;)V

    .line 146
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mTimeAdd:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 150
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mTimeCon:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mTextCon:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/living/emo/adapter/AlertAdapter;->setAddAlarm(Ljava/util/List;)V

    .line 154
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

    iget v0, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Lcom/living/emo/adapter/AlertAdapter;->setDefaultValue(I)V

    return-void
.end method

.method public synthetic lambda$initEvent$1$AlertFragment(Landroid/view/View;)V
    .locals 2

    .line 172
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertDelete:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 173
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertSave:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 174
    sget-object p1, Lcom/living/emo/fragment/AlertFragment$State;->Remove:Lcom/living/emo/fragment/AlertFragment$State;

    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentState:Lcom/living/emo/fragment/AlertFragment$State;

    .line 176
    iget p1, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move p1, v0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/AlarmBean;

    .line 178
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->isUpdate()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "\u5220\u9664\u95f9\u949f"

    const-string v1, "isupdate"

    .line 179
    invoke-static {p1, v1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    iget v1, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 181
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mTextCon:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mTimeCon:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

    invoke-virtual {p1, v0}, Lcom/living/emo/adapter/AlertAdapter;->setDefaultValue(I)V

    .line 186
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

    iget-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/living/emo/adapter/AlertAdapter;->setAddAlarm(Ljava/util/List;)V

    .line 187
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mTimeAdd:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertSave:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 189
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertDelete:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 190
    iput v0, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    .line 191
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/AlarmBean;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/AlertFragment;->updateTimeSetUI(Lcom/living/emo/bean/AlarmBean;)V

    return-void

    .line 194
    :cond_2
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getIndex()I

    move-result p1

    const-string v0, "remove"

    invoke-direct {p0, v0, p1}, Lcom/living/emo/fragment/AlertFragment;->sendConfig(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$initEvent$2$AlertFragment(Landroid/view/View;)V
    .locals 2

    .line 199
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertDelete:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 200
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertSave:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 201
    iget p1, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 202
    :goto_0
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/AlarmBean;

    .line 203
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/living/emo/fragment/AlertFragment$State;->Update:Lcom/living/emo/fragment/AlertFragment$State;

    iput-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentState:Lcom/living/emo/fragment/AlertFragment$State;

    .line 205
    invoke-virtual {p1}, Lcom/living/emo/bean/AlarmBean;->getIndex()I

    move-result p1

    const-string v0, "update"

    invoke-direct {p0, v0, p1}, Lcom/living/emo/fragment/AlertFragment;->sendConfig(Ljava/lang/String;I)V

    goto :goto_2

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmState:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    goto :goto_1

    .line 211
    :cond_2
    iget-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmState:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;

    .line 212
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/AlarmResponse$DataBean$AlarmBean$StateBean;->getIndex()I

    move-result p1

    add-int/2addr v0, p1

    .line 214
    :goto_1
    sget-object p1, Lcom/living/emo/fragment/AlertFragment$State;->Set:Lcom/living/emo/fragment/AlertFragment$State;

    iput-object p1, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentState:Lcom/living/emo/fragment/AlertFragment$State;

    const-string p1, "set"

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/living/emo/fragment/AlertFragment;->sendConfig(Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0062

    return v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 349
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 350
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 352
    iput-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlertAdapter:Lcom/living/emo/adapter/AlertAdapter;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 355
    iput-object v1, p0, Lcom/living/emo/fragment/AlertFragment;->mAlarmBeans:Ljava/util/List;

    .line 357
    :cond_1
    iget v0, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 358
    iput v1, p0, Lcom/living/emo/fragment/AlertFragment;->mCurrentPosition:I

    :cond_2
    return-void
.end method

.method public onJsonEvent(Lcom/living/emo/event/JsonEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 268
    invoke-virtual {p1}, Lcom/living/emo/event/JsonEvent;->getJson()Ljava/lang/String;

    move-result-object p1

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emo->app ble data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JsonEvent:AlertFragment"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/living/emo/fragment/AlertFragment$3;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/AlertFragment$3;-><init>(Lcom/living/emo/fragment/AlertFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleAlarmResponseParse;->alarm(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleAlarmResponseParse$Callback;)V

    .line 305
    new-instance v0, Lcom/living/emo/fragment/AlertFragment$4;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/AlertFragment$4;-><init>(Lcom/living/emo/fragment/AlertFragment;)V

    invoke-static {p1, v0}, Lcom/living/emo/blebean/parse/BleResultParse;->alarm(Ljava/lang/String;Lcom/living/emo/blebean/parse/BleResultParse$Callback;)V

    return-void
.end method
