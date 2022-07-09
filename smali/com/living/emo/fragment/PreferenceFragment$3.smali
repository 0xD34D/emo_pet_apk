.class synthetic Lcom/living/emo/fragment/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/fragment/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$living$emo$fragment$PreferenceFragment$Options:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 284
    invoke-static {}, Lcom/living/emo/fragment/PreferenceFragment$Options;->values()[Lcom/living/emo/fragment/PreferenceFragment$Options;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/living/emo/fragment/PreferenceFragment$3;->$SwitchMap$com$living$emo$fragment$PreferenceFragment$Options:[I

    :try_start_0
    sget-object v1, Lcom/living/emo/fragment/PreferenceFragment$Options;->VOLUME:Lcom/living/emo/fragment/PreferenceFragment$Options;

    invoke-virtual {v1}, Lcom/living/emo/fragment/PreferenceFragment$Options;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/living/emo/fragment/PreferenceFragment$3;->$SwitchMap$com$living$emo$fragment$PreferenceFragment$Options:[I

    sget-object v1, Lcom/living/emo/fragment/PreferenceFragment$Options;->TEMPERATURE:Lcom/living/emo/fragment/PreferenceFragment$Options;

    invoke-virtual {v1}, Lcom/living/emo/fragment/PreferenceFragment$Options;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/living/emo/fragment/PreferenceFragment$3;->$SwitchMap$com$living$emo$fragment$PreferenceFragment$Options:[I

    sget-object v1, Lcom/living/emo/fragment/PreferenceFragment$Options;->LENGTH:Lcom/living/emo/fragment/PreferenceFragment$Options;

    invoke-virtual {v1}, Lcom/living/emo/fragment/PreferenceFragment$Options;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/living/emo/fragment/PreferenceFragment$3;->$SwitchMap$com$living$emo$fragment$PreferenceFragment$Options:[I

    sget-object v1, Lcom/living/emo/fragment/PreferenceFragment$Options;->AUTO_UPDATE:Lcom/living/emo/fragment/PreferenceFragment$Options;

    invoke-virtual {v1}, Lcom/living/emo/fragment/PreferenceFragment$Options;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/living/emo/fragment/PreferenceFragment$3;->$SwitchMap$com$living$emo$fragment$PreferenceFragment$Options:[I

    sget-object v1, Lcom/living/emo/fragment/PreferenceFragment$Options;->SCHEDULE_SOUND:Lcom/living/emo/fragment/PreferenceFragment$Options;

    invoke-virtual {v1}, Lcom/living/emo/fragment/PreferenceFragment$Options;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
