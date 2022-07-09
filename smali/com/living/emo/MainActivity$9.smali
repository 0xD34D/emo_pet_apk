.class synthetic Lcom/living/emo/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$living$emo$MainActivity$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 670
    invoke-static {}, Lcom/living/emo/MainActivity$State;->values()[Lcom/living/emo/MainActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/living/emo/MainActivity$9;->$SwitchMap$com$living$emo$MainActivity$State:[I

    :try_start_0
    sget-object v1, Lcom/living/emo/MainActivity$State;->IN:Lcom/living/emo/MainActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/MainActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/living/emo/MainActivity$9;->$SwitchMap$com$living$emo$MainActivity$State:[I

    sget-object v1, Lcom/living/emo/MainActivity$State;->OUT:Lcom/living/emo/MainActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/MainActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/living/emo/MainActivity$9;->$SwitchMap$com$living$emo$MainActivity$State:[I

    sget-object v1, Lcom/living/emo/MainActivity$State;->UPDATE:Lcom/living/emo/MainActivity$State;

    invoke-virtual {v1}, Lcom/living/emo/MainActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
