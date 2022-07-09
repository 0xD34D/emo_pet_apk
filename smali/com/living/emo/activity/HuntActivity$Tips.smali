.class final enum Lcom/living/emo/activity/HuntActivity$Tips;
.super Ljava/lang/Enum;
.source "HuntActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/HuntActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tips"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/living/emo/activity/HuntActivity$Tips;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/living/emo/activity/HuntActivity$Tips;

.field public static final enum HUNT:Lcom/living/emo/activity/HuntActivity$Tips;

.field public static final enum NONE:Lcom/living/emo/activity/HuntActivity$Tips;

.field public static final enum TIPS:Lcom/living/emo/activity/HuntActivity$Tips;

.field public static final enum WARNING:Lcom/living/emo/activity/HuntActivity$Tips;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 87
    new-instance v0, Lcom/living/emo/activity/HuntActivity$Tips;

    const-string v1, "HUNT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/living/emo/activity/HuntActivity$Tips;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->HUNT:Lcom/living/emo/activity/HuntActivity$Tips;

    new-instance v1, Lcom/living/emo/activity/HuntActivity$Tips;

    const-string v3, "TIPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/living/emo/activity/HuntActivity$Tips;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/living/emo/activity/HuntActivity$Tips;->TIPS:Lcom/living/emo/activity/HuntActivity$Tips;

    new-instance v3, Lcom/living/emo/activity/HuntActivity$Tips;

    const-string v5, "WARNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/living/emo/activity/HuntActivity$Tips;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/living/emo/activity/HuntActivity$Tips;->WARNING:Lcom/living/emo/activity/HuntActivity$Tips;

    new-instance v5, Lcom/living/emo/activity/HuntActivity$Tips;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/living/emo/activity/HuntActivity$Tips;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/living/emo/activity/HuntActivity$Tips;->NONE:Lcom/living/emo/activity/HuntActivity$Tips;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/living/emo/activity/HuntActivity$Tips;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 86
    sput-object v7, Lcom/living/emo/activity/HuntActivity$Tips;->$VALUES:[Lcom/living/emo/activity/HuntActivity$Tips;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/living/emo/activity/HuntActivity$Tips;
    .locals 1

    .line 86
    const-class v0, Lcom/living/emo/activity/HuntActivity$Tips;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/living/emo/activity/HuntActivity$Tips;

    return-object p0
.end method

.method public static values()[Lcom/living/emo/activity/HuntActivity$Tips;
    .locals 1

    .line 86
    sget-object v0, Lcom/living/emo/activity/HuntActivity$Tips;->$VALUES:[Lcom/living/emo/activity/HuntActivity$Tips;

    invoke-virtual {v0}, [Lcom/living/emo/activity/HuntActivity$Tips;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/living/emo/activity/HuntActivity$Tips;

    return-object v0
.end method
