.class public final enum Lcom/living/emo/fragment/AlertFragment$State;
.super Ljava/lang/Enum;
.source "AlertFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/fragment/AlertFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/fragment/AlertFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/fragment/AlertFragment$State;

.field public static final enum None:Lcom/living/emo/fragment/AlertFragment$State;

.field public static final enum Remove:Lcom/living/emo/fragment/AlertFragment$State;

.field public static final enum Set:Lcom/living/emo/fragment/AlertFragment$State;

.field public static final enum Update:Lcom/living/emo/fragment/AlertFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 84
    new-instance v0, Lcom/living/emo/fragment/AlertFragment$State;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/fragment/AlertFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/fragment/AlertFragment$State;->None:Lcom/living/emo/fragment/AlertFragment$State;

    new-instance v1, Lcom/living/emo/fragment/AlertFragment$State;

    const-string v3, "Set"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/fragment/AlertFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/fragment/AlertFragment$State;->Set:Lcom/living/emo/fragment/AlertFragment$State;

    new-instance v3, Lcom/living/emo/fragment/AlertFragment$State;

    const-string v5, "Update"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/fragment/AlertFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/fragment/AlertFragment$State;->Update:Lcom/living/emo/fragment/AlertFragment$State;

    new-instance v5, Lcom/living/emo/fragment/AlertFragment$State;

    const-string v7, "Remove"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/living/emo/fragment/AlertFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/living/emo/fragment/AlertFragment$State;->Remove:Lcom/living/emo/fragment/AlertFragment$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/living/emo/fragment/AlertFragment$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 83
    sput-object v7, Lcom/living/emo/fragment/AlertFragment$State;->$VALUES:[Lcom/living/emo/fragment/AlertFragment$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/fragment/AlertFragment$State;
    .locals 1

    .line 83
    const-class v0, Lcom/living/emo/fragment/AlertFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/fragment/AlertFragment$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/fragment/AlertFragment$State;
    .locals 1

    .line 83
    sget-object v0, Lcom/living/emo/fragment/AlertFragment$State;->$VALUES:[Lcom/living/emo/fragment/AlertFragment$State;

    invoke-virtual {v0}, [Lcom/living/emo/fragment/AlertFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/fragment/AlertFragment$State;

    return-object v0
.end method
