.class final enum Lcom/living/emo/fragment/LightFragment$State;
.super Ljava/lang/Enum;
.source "LightFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/fragment/LightFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/fragment/LightFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/fragment/LightFragment$State;

.field public static final enum NONE:Lcom/living/emo/fragment/LightFragment$State;

.field public static final enum ONOFF:Lcom/living/emo/fragment/LightFragment$State;

.field public static final enum RENAME:Lcom/living/emo/fragment/LightFragment$State;

.field public static final enum UNBIND:Lcom/living/emo/fragment/LightFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 66
    new-instance v0, Lcom/living/emo/fragment/LightFragment$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/fragment/LightFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/fragment/LightFragment$State;->NONE:Lcom/living/emo/fragment/LightFragment$State;

    new-instance v1, Lcom/living/emo/fragment/LightFragment$State;

    const-string v3, "ONOFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/fragment/LightFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/fragment/LightFragment$State;->ONOFF:Lcom/living/emo/fragment/LightFragment$State;

    new-instance v3, Lcom/living/emo/fragment/LightFragment$State;

    const-string v5, "RENAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/fragment/LightFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/fragment/LightFragment$State;->RENAME:Lcom/living/emo/fragment/LightFragment$State;

    new-instance v5, Lcom/living/emo/fragment/LightFragment$State;

    const-string v7, "UNBIND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/living/emo/fragment/LightFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/living/emo/fragment/LightFragment$State;->UNBIND:Lcom/living/emo/fragment/LightFragment$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/living/emo/fragment/LightFragment$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 65
    sput-object v7, Lcom/living/emo/fragment/LightFragment$State;->$VALUES:[Lcom/living/emo/fragment/LightFragment$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/fragment/LightFragment$State;
    .locals 1

    .line 65
    const-class v0, Lcom/living/emo/fragment/LightFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/fragment/LightFragment$State;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/fragment/LightFragment$State;
    .locals 1

    .line 65
    sget-object v0, Lcom/living/emo/fragment/LightFragment$State;->$VALUES:[Lcom/living/emo/fragment/LightFragment$State;

    invoke-virtual {v0}, [Lcom/living/emo/fragment/LightFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/fragment/LightFragment$State;

    return-object v0
.end method
