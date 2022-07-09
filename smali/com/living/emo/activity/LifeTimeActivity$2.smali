.class synthetic Lcom/living/emo/activity/LifeTimeActivity$2;
.super Ljava/lang/Object;
.source "LifeTimeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/LifeTimeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$living$emo$activity$LifeTimeActivity$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/living/emo/activity/LifeTimeActivity$State;->values()[Lcom/living/emo/activity/LifeTimeActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/living/emo/activity/LifeTimeActivity$2;->$SwitchMap$com$living$emo$activity$LifeTimeActivity$State:[I

    :try_start_0
    sget-object v1, Lcom/living/emo/activity/LifeTimeActivity$State;->IN:Lcom/living/emo/activity/LifeTimeActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/activity/LifeTimeActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/living/emo/activity/LifeTimeActivity$2;->$SwitchMap$com$living$emo$activity$LifeTimeActivity$State:[I

    sget-object v1, Lcom/living/emo/activity/LifeTimeActivity$State;->OUT:Lcom/living/emo/activity/LifeTimeActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/activity/LifeTimeActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
