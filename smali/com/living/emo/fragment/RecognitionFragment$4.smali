.class synthetic Lcom/living/emo/fragment/RecognitionFragment$4;
.super Ljava/lang/Object;
.source "RecognitionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/fragment/RecognitionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$living$emo$activity$RecognitionActivity$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 282
    invoke-static {}, Lcom/living/emo/activity/RecognitionActivity$State;->values()[Lcom/living/emo/activity/RecognitionActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/living/emo/fragment/RecognitionFragment$4;->$SwitchMap$com$living$emo$activity$RecognitionActivity$State:[I

    :try_start_0
    sget-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->ADD:Lcom/living/emo/activity/RecognitionActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/activity/RecognitionActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/living/emo/fragment/RecognitionFragment$4;->$SwitchMap$com$living$emo$activity$RecognitionActivity$State:[I

    sget-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->DEL:Lcom/living/emo/activity/RecognitionActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/activity/RecognitionActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/living/emo/fragment/RecognitionFragment$4;->$SwitchMap$com$living$emo$activity$RecognitionActivity$State:[I

    sget-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->RENAME:Lcom/living/emo/activity/RecognitionActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/activity/RecognitionActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/living/emo/fragment/RecognitionFragment$4;->$SwitchMap$com$living$emo$activity$RecognitionActivity$State:[I

    sget-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->SYN:Lcom/living/emo/activity/RecognitionActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/activity/RecognitionActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/living/emo/fragment/RecognitionFragment$4;->$SwitchMap$com$living$emo$activity$RecognitionActivity$State:[I

    sget-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->RESCAN:Lcom/living/emo/activity/RecognitionActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/activity/RecognitionActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
