.class public final enum Lcom/living/emo/adapter/AlertAdapter$State;
.super Ljava/lang/Enum;
.source "AlertAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/adapter/AlertAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/adapter/AlertAdapter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/adapter/AlertAdapter$State;

.field public static final enum NORMAL:Lcom/living/emo/adapter/AlertAdapter$State;

.field public static final enum PRESS:Lcom/living/emo/adapter/AlertAdapter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lcom/living/emo/adapter/AlertAdapter$State;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/adapter/AlertAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/adapter/AlertAdapter$State;->NORMAL:Lcom/living/emo/adapter/AlertAdapter$State;

    new-instance v1, Lcom/living/emo/adapter/AlertAdapter$State;

    const-string v3, "PRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/adapter/AlertAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/adapter/AlertAdapter$State;->PRESS:Lcom/living/emo/adapter/AlertAdapter$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/living/emo/adapter/AlertAdapter$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 71
    sput-object v3, Lcom/living/emo/adapter/AlertAdapter$State;->$VALUES:[Lcom/living/emo/adapter/AlertAdapter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/adapter/AlertAdapter$State;
    .locals 1

    .line 71
    const-class v0, Lcom/living/emo/adapter/AlertAdapter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/adapter/AlertAdapter$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/adapter/AlertAdapter$State;
    .locals 1

    .line 71
    sget-object v0, Lcom/living/emo/adapter/AlertAdapter$State;->$VALUES:[Lcom/living/emo/adapter/AlertAdapter$State;

    invoke-virtual {v0}, [Lcom/living/emo/adapter/AlertAdapter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/adapter/AlertAdapter$State;

    return-object v0
.end method
