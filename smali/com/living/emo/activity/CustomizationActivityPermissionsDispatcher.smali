.class final Lcom/living/emo/activity/CustomizationActivityPermissionsDispatcher;
.super Ljava/lang/Object;
.source "CustomizationActivityPermissionsDispatcher.java"


# static fields
.field private static final PERMISSION_PHOTOPERMISSIONCHECK:[Ljava/lang/String;

.field private static final REQUEST_PHOTOPERMISSIONCHECK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/activity/CustomizationActivityPermissionsDispatcher;->PERMISSION_PHOTOPERMISSIONCHECK:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onRequestPermissionsResult(Lcom/living/emo/activity/CustomizationActivity;I[I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/living/emo/activity/CustomizationActivity;->photoPermissionCheck()V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/living/emo/activity/CustomizationActivity;->showDeniedForCamera()V

    :goto_0
    return-void
.end method

.method static photoPermissionCheckWithPermissionCheck(Lcom/living/emo/activity/CustomizationActivity;)V
    .locals 2

    .line 18
    sget-object v0, Lcom/living/emo/activity/CustomizationActivityPermissionsDispatcher;->PERMISSION_PHOTOPERMISSIONCHECK:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/living/emo/activity/CustomizationActivity;->photoPermissionCheck()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
