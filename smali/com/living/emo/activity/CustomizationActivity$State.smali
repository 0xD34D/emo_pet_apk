.class final enum Lcom/living/emo/activity/CustomizationActivity$State;
.super Ljava/lang/Enum;
.source "CustomizationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/CustomizationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/activity/CustomizationActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/activity/CustomizationActivity$State;

.field public static final enum CLEAR_EYE:Lcom/living/emo/activity/CustomizationActivity$State;

.field public static final enum IN:Lcom/living/emo/activity/CustomizationActivity$State;

.field public static final enum NONE:Lcom/living/emo/activity/CustomizationActivity$State;

.field public static final enum OUT:Lcom/living/emo/activity/CustomizationActivity$State;

.field public static final enum SET_EYES:Lcom/living/emo/activity/CustomizationActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 133
    new-instance v0, Lcom/living/emo/activity/CustomizationActivity$State;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/activity/CustomizationActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/activity/CustomizationActivity$State;->IN:Lcom/living/emo/activity/CustomizationActivity$State;

    new-instance v1, Lcom/living/emo/activity/CustomizationActivity$State;

    const-string v3, "OUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/activity/CustomizationActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/activity/CustomizationActivity$State;->OUT:Lcom/living/emo/activity/CustomizationActivity$State;

    new-instance v3, Lcom/living/emo/activity/CustomizationActivity$State;

    const-string v5, "SET_EYES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/activity/CustomizationActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/activity/CustomizationActivity$State;->SET_EYES:Lcom/living/emo/activity/CustomizationActivity$State;

    new-instance v5, Lcom/living/emo/activity/CustomizationActivity$State;

    const-string v7, "CLEAR_EYE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/living/emo/activity/CustomizationActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/living/emo/activity/CustomizationActivity$State;->CLEAR_EYE:Lcom/living/emo/activity/CustomizationActivity$State;

    new-instance v7, Lcom/living/emo/activity/CustomizationActivity$State;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/living/emo/activity/CustomizationActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/living/emo/activity/CustomizationActivity$State;->NONE:Lcom/living/emo/activity/CustomizationActivity$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/living/emo/activity/CustomizationActivity$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 132
    sput-object v9, Lcom/living/emo/activity/CustomizationActivity$State;->$VALUES:[Lcom/living/emo/activity/CustomizationActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/activity/CustomizationActivity$State;
    .locals 1

    .line 132
    const-class v0, Lcom/living/emo/activity/CustomizationActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/activity/CustomizationActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/activity/CustomizationActivity$State;
    .locals 1

    .line 132
    sget-object v0, Lcom/living/emo/activity/CustomizationActivity$State;->$VALUES:[Lcom/living/emo/activity/CustomizationActivity$State;

    invoke-virtual {v0}, [Lcom/living/emo/activity/CustomizationActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/activity/CustomizationActivity$State;

    return-object v0
.end method
