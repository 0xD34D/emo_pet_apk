.class public final enum Lcom/living/emo/activity/RecognitionActivity$State;
.super Ljava/lang/Enum;
.source "RecognitionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/RecognitionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/activity/RecognitionActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/activity/RecognitionActivity$State;

.field public static final enum ADD:Lcom/living/emo/activity/RecognitionActivity$State;

.field public static final enum DEL:Lcom/living/emo/activity/RecognitionActivity$State;

.field public static final enum IN:Lcom/living/emo/activity/RecognitionActivity$State;

.field public static final enum NONE:Lcom/living/emo/activity/RecognitionActivity$State;

.field public static final enum OUT:Lcom/living/emo/activity/RecognitionActivity$State;

.field public static final enum RENAME:Lcom/living/emo/activity/RecognitionActivity$State;

.field public static final enum RESCAN:Lcom/living/emo/activity/RecognitionActivity$State;

.field public static final enum SYN:Lcom/living/emo/activity/RecognitionActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 37
    new-instance v0, Lcom/living/emo/activity/RecognitionActivity$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/activity/RecognitionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->NONE:Lcom/living/emo/activity/RecognitionActivity$State;

    new-instance v1, Lcom/living/emo/activity/RecognitionActivity$State;

    const-string v3, "IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/activity/RecognitionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/activity/RecognitionActivity$State;->IN:Lcom/living/emo/activity/RecognitionActivity$State;

    new-instance v3, Lcom/living/emo/activity/RecognitionActivity$State;

    const-string v5, "OUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/activity/RecognitionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/activity/RecognitionActivity$State;->OUT:Lcom/living/emo/activity/RecognitionActivity$State;

    new-instance v5, Lcom/living/emo/activity/RecognitionActivity$State;

    const-string v7, "SYN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/living/emo/activity/RecognitionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/living/emo/activity/RecognitionActivity$State;->SYN:Lcom/living/emo/activity/RecognitionActivity$State;

    new-instance v7, Lcom/living/emo/activity/RecognitionActivity$State;

    const-string v9, "ADD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/living/emo/activity/RecognitionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/living/emo/activity/RecognitionActivity$State;->ADD:Lcom/living/emo/activity/RecognitionActivity$State;

    new-instance v9, Lcom/living/emo/activity/RecognitionActivity$State;

    const-string v11, "RESCAN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/living/emo/activity/RecognitionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/living/emo/activity/RecognitionActivity$State;->RESCAN:Lcom/living/emo/activity/RecognitionActivity$State;

    new-instance v11, Lcom/living/emo/activity/RecognitionActivity$State;

    const-string v13, "RENAME"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/living/emo/activity/RecognitionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/living/emo/activity/RecognitionActivity$State;->RENAME:Lcom/living/emo/activity/RecognitionActivity$State;

    new-instance v13, Lcom/living/emo/activity/RecognitionActivity$State;

    const-string v15, "DEL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/living/emo/activity/RecognitionActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/living/emo/activity/RecognitionActivity$State;->DEL:Lcom/living/emo/activity/RecognitionActivity$State;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/living/emo/activity/RecognitionActivity$State;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 36
    sput-object v15, Lcom/living/emo/activity/RecognitionActivity$State;->$VALUES:[Lcom/living/emo/activity/RecognitionActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/activity/RecognitionActivity$State;
    .locals 1

    .line 36
    const-class v0, Lcom/living/emo/activity/RecognitionActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/activity/RecognitionActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/activity/RecognitionActivity$State;
    .locals 1

    .line 36
    sget-object v0, Lcom/living/emo/activity/RecognitionActivity$State;->$VALUES:[Lcom/living/emo/activity/RecognitionActivity$State;

    invoke-virtual {v0}, [Lcom/living/emo/activity/RecognitionActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/activity/RecognitionActivity$State;

    return-object v0
.end method
