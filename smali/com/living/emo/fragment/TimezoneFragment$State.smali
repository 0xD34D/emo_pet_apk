.class public final enum Lcom/living/emo/fragment/TimezoneFragment$State;
.super Ljava/lang/Enum;
.source "TimezoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/fragment/TimezoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/fragment/TimezoneFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/fragment/TimezoneFragment$State;

.field public static final enum EDIT:Lcom/living/emo/fragment/TimezoneFragment$State;

.field public static final enum LOADING:Lcom/living/emo/fragment/TimezoneFragment$State;

.field public static final enum SHOW:Lcom/living/emo/fragment/TimezoneFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    new-instance v0, Lcom/living/emo/fragment/TimezoneFragment$State;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/fragment/TimezoneFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/fragment/TimezoneFragment$State;->LOADING:Lcom/living/emo/fragment/TimezoneFragment$State;

    new-instance v1, Lcom/living/emo/fragment/TimezoneFragment$State;

    const-string v3, "EDIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/fragment/TimezoneFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/fragment/TimezoneFragment$State;->EDIT:Lcom/living/emo/fragment/TimezoneFragment$State;

    new-instance v3, Lcom/living/emo/fragment/TimezoneFragment$State;

    const-string v5, "SHOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/fragment/TimezoneFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/fragment/TimezoneFragment$State;->SHOW:Lcom/living/emo/fragment/TimezoneFragment$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/living/emo/fragment/TimezoneFragment$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 46
    sput-object v5, Lcom/living/emo/fragment/TimezoneFragment$State;->$VALUES:[Lcom/living/emo/fragment/TimezoneFragment$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/fragment/TimezoneFragment$State;
    .locals 1

    .line 46
    const-class v0, Lcom/living/emo/fragment/TimezoneFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/fragment/TimezoneFragment$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/fragment/TimezoneFragment$State;
    .locals 1

    .line 46
    sget-object v0, Lcom/living/emo/fragment/TimezoneFragment$State;->$VALUES:[Lcom/living/emo/fragment/TimezoneFragment$State;

    invoke-virtual {v0}, [Lcom/living/emo/fragment/TimezoneFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/fragment/TimezoneFragment$State;

    return-object v0
.end method
