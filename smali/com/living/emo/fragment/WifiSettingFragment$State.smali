.class public final enum Lcom/living/emo/fragment/WifiSettingFragment$State;
.super Ljava/lang/Enum;
.source "WifiSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/fragment/WifiSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/fragment/WifiSettingFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/fragment/WifiSettingFragment$State;

.field public static final enum CONNECTED:Lcom/living/emo/fragment/WifiSettingFragment$State;

.field public static final enum DIS_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

.field public static final enum LOADING:Lcom/living/emo/fragment/WifiSettingFragment$State;

.field public static final enum SET_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 83
    new-instance v0, Lcom/living/emo/fragment/WifiSettingFragment$State;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/fragment/WifiSettingFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/fragment/WifiSettingFragment$State;->LOADING:Lcom/living/emo/fragment/WifiSettingFragment$State;

    new-instance v1, Lcom/living/emo/fragment/WifiSettingFragment$State;

    const-string v3, "DIS_CONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/fragment/WifiSettingFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/fragment/WifiSettingFragment$State;->DIS_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

    new-instance v3, Lcom/living/emo/fragment/WifiSettingFragment$State;

    const-string v5, "SET_CONNECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/fragment/WifiSettingFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/fragment/WifiSettingFragment$State;->SET_CONNECT:Lcom/living/emo/fragment/WifiSettingFragment$State;

    new-instance v5, Lcom/living/emo/fragment/WifiSettingFragment$State;

    const-string v7, "CONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/living/emo/fragment/WifiSettingFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/living/emo/fragment/WifiSettingFragment$State;->CONNECTED:Lcom/living/emo/fragment/WifiSettingFragment$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/living/emo/fragment/WifiSettingFragment$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 82
    sput-object v7, Lcom/living/emo/fragment/WifiSettingFragment$State;->$VALUES:[Lcom/living/emo/fragment/WifiSettingFragment$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/fragment/WifiSettingFragment$State;
    .locals 1

    .line 82
    const-class v0, Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/fragment/WifiSettingFragment$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/fragment/WifiSettingFragment$State;
    .locals 1

    .line 82
    sget-object v0, Lcom/living/emo/fragment/WifiSettingFragment$State;->$VALUES:[Lcom/living/emo/fragment/WifiSettingFragment$State;

    invoke-virtual {v0}, [Lcom/living/emo/fragment/WifiSettingFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/fragment/WifiSettingFragment$State;

    return-object v0
.end method
