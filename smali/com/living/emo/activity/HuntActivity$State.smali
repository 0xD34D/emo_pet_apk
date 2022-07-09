.class final enum Lcom/living/emo/activity/HuntActivity$State;
.super Ljava/lang/Enum;
.source "HuntActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/HuntActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/activity/HuntActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/activity/HuntActivity$State;

.field public static final enum EXPLANATION:Lcom/living/emo/activity/HuntActivity$State;

.field public static final enum NONE:Lcom/living/emo/activity/HuntActivity$State;

.field public static final enum OVER:Lcom/living/emo/activity/HuntActivity$State;

.field public static final enum READY:Lcom/living/emo/activity/HuntActivity$State;

.field public static final enum START:Lcom/living/emo/activity/HuntActivity$State;

.field public static final enum TIMEOUT:Lcom/living/emo/activity/HuntActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 83
    new-instance v0, Lcom/living/emo/activity/HuntActivity$State;

    const-string v1, "EXPLANATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/activity/HuntActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/activity/HuntActivity$State;->EXPLANATION:Lcom/living/emo/activity/HuntActivity$State;

    new-instance v1, Lcom/living/emo/activity/HuntActivity$State;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/activity/HuntActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/activity/HuntActivity$State;->READY:Lcom/living/emo/activity/HuntActivity$State;

    new-instance v3, Lcom/living/emo/activity/HuntActivity$State;

    const-string v5, "START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/activity/HuntActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/activity/HuntActivity$State;->START:Lcom/living/emo/activity/HuntActivity$State;

    new-instance v5, Lcom/living/emo/activity/HuntActivity$State;

    const-string v7, "OVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/living/emo/activity/HuntActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/living/emo/activity/HuntActivity$State;->OVER:Lcom/living/emo/activity/HuntActivity$State;

    new-instance v7, Lcom/living/emo/activity/HuntActivity$State;

    const-string v9, "TIMEOUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/living/emo/activity/HuntActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/living/emo/activity/HuntActivity$State;->TIMEOUT:Lcom/living/emo/activity/HuntActivity$State;

    new-instance v9, Lcom/living/emo/activity/HuntActivity$State;

    const-string v11, "NONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/living/emo/activity/HuntActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/living/emo/activity/HuntActivity$State;->NONE:Lcom/living/emo/activity/HuntActivity$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/living/emo/activity/HuntActivity$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 82
    sput-object v11, Lcom/living/emo/activity/HuntActivity$State;->$VALUES:[Lcom/living/emo/activity/HuntActivity$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/activity/HuntActivity$State;
    .locals 1

    .line 82
    const-class v0, Lcom/living/emo/activity/HuntActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/activity/HuntActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/activity/HuntActivity$State;
    .locals 1

    .line 82
    sget-object v0, Lcom/living/emo/activity/HuntActivity$State;->$VALUES:[Lcom/living/emo/activity/HuntActivity$State;

    invoke-virtual {v0}, [Lcom/living/emo/activity/HuntActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/activity/HuntActivity$State;

    return-object v0
.end method
