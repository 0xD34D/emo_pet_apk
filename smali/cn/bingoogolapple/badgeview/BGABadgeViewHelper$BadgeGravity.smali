.class public final enum Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;
.super Ljava/lang/Enum;
.source "BGABadgeViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/bingoogolapple/badgeview/BGABadgeViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BadgeGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

.field public static final enum RightBottom:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

.field public static final enum RightCenter:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

.field public static final enum RightTop:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 517
    new-instance v0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    const-string v1, "RightTop"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->RightTop:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    .line 518
    new-instance v1, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    const-string v3, "RightCenter"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->RightCenter:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    .line 519
    new-instance v3, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    const-string v5, "RightBottom"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->RightBottom:Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 516
    sput-object v5, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->$VALUES:[Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 516
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;
    .locals 1

    .line 516
    const-class v0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    return-object p0
.end method

.method public static values()[Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;
    .locals 1

    .line 516
    sget-object v0, Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->$VALUES:[Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    invoke-virtual {v0}, [Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/bingoogolapple/badgeview/BGABadgeViewHelper$BadgeGravity;

    return-object v0
.end method
