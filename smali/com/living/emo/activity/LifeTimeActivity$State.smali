.class final enum Lcom/living/emo/activity/LifeTimeActivity$State;
.super Ljava/lang/Enum;
.source "LifeTimeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/LifeTimeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/activity/LifeTimeActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/activity/LifeTimeActivity$State;

.field public static final enum IN:Lcom/living/emo/activity/LifeTimeActivity$State;

.field public static final enum NONE:Lcom/living/emo/activity/LifeTimeActivity$State;

.field public static final enum OUT:Lcom/living/emo/activity/LifeTimeActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    new-instance v0, Lcom/living/emo/activity/LifeTimeActivity$State;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/activity/LifeTimeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/activity/LifeTimeActivity$State;->IN:Lcom/living/emo/activity/LifeTimeActivity$State;

    new-instance v1, Lcom/living/emo/activity/LifeTimeActivity$State;

    const-string v3, "OUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/activity/LifeTimeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/activity/LifeTimeActivity$State;->OUT:Lcom/living/emo/activity/LifeTimeActivity$State;

    new-instance v3, Lcom/living/emo/activity/LifeTimeActivity$State;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/activity/LifeTimeActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/activity/LifeTimeActivity$State;->NONE:Lcom/living/emo/activity/LifeTimeActivity$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/living/emo/activity/LifeTimeActivity$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 46
    sput-object v5, Lcom/living/emo/activity/LifeTimeActivity$State;->$VALUES:[Lcom/living/emo/activity/LifeTimeActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/activity/LifeTimeActivity$State;
    .locals 1

    .line 46
    const-class v0, Lcom/living/emo/activity/LifeTimeActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/activity/LifeTimeActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/activity/LifeTimeActivity$State;
    .locals 1

    .line 46
    sget-object v0, Lcom/living/emo/activity/LifeTimeActivity$State;->$VALUES:[Lcom/living/emo/activity/LifeTimeActivity$State;

    invoke-virtual {v0}, [Lcom/living/emo/activity/LifeTimeActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/activity/LifeTimeActivity$State;

    return-object v0
.end method
