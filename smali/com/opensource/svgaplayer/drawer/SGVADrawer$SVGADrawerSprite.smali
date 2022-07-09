.class public final Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;
.super Ljava/lang/Object;
.source "SGVADrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SVGADrawerSprite"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
        "",
        "matteKey",
        "",
        "imageKey",
        "frameEntity",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
        "(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V",
        "getFrameEntity",
        "()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
        "getImageKey",
        "()Ljava/lang/String;",
        "getMatteKey",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

.field private final imageKey:Ljava/lang/String;

.field private final matteKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/opensource/svgaplayer/drawer/SGVADrawer;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;",
            ")V"
        }
    .end annotation

    const-string v0, "frameEntity"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->this$0:Lcom/opensource/svgaplayer/drawer/SGVADrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->matteKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->imageKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    return-void
.end method


# virtual methods
.method public final getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->frameEntity:Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    return-object v0
.end method

.method public final getImageKey()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->imageKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatteKey()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->matteKey:Ljava/lang/String;

    return-object v0
.end method
