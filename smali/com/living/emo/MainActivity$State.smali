.class final enum Lcom/living/emo/MainActivity$State;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/MainActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/MainActivity$State;

.field public static final enum IN:Lcom/living/emo/MainActivity$State;

.field public static final enum NONE:Lcom/living/emo/MainActivity$State;

.field public static final enum OUT:Lcom/living/emo/MainActivity$State;

.field public static final enum UPDATE:Lcom/living/emo/MainActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 140
    new-instance v0, Lcom/living/emo/MainActivity$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/MainActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/MainActivity$State;->NONE:Lcom/living/emo/MainActivity$State;

    new-instance v1, Lcom/living/emo/MainActivity$State;

    const-string v3, "IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/MainActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/MainActivity$State;->IN:Lcom/living/emo/MainActivity$State;

    new-instance v3, Lcom/living/emo/MainActivity$State;

    const-string v5, "OUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/MainActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/MainActivity$State;->OUT:Lcom/living/emo/MainActivity$State;

    new-instance v5, Lcom/living/emo/MainActivity$State;

    const-string v7, "UPDATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/living/emo/MainActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/living/emo/MainActivity$State;->UPDATE:Lcom/living/emo/MainActivity$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/living/emo/MainActivity$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 139
    sput-object v7, Lcom/living/emo/MainActivity$State;->$VALUES:[Lcom/living/emo/MainActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/MainActivity$State;
    .locals 1

    .line 139
    const-class v0, Lcom/living/emo/MainActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/MainActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/MainActivity$State;
    .locals 1

    .line 139
    sget-object v0, Lcom/living/emo/MainActivity$State;->$VALUES:[Lcom/living/emo/MainActivity$State;

    invoke-virtual {v0}, [Lcom/living/emo/MainActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/MainActivity$State;

    return-object v0
.end method
