.class public final synthetic Lcom/living/emo/activity/-$$Lambda$2j3CHImIe3MI5fFgY9dgdXpJv_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/living/emo/activity/-$$Lambda$2j3CHImIe3MI5fFgY9dgdXpJv_8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/living/emo/activity/-$$Lambda$2j3CHImIe3MI5fFgY9dgdXpJv_8;

    invoke-direct {v0}, Lcom/living/emo/activity/-$$Lambda$2j3CHImIe3MI5fFgY9dgdXpJv_8;-><init>()V

    sput-object v0, Lcom/living/emo/activity/-$$Lambda$2j3CHImIe3MI5fFgY9dgdXpJv_8;->INSTANCE:Lcom/living/emo/activity/-$$Lambda$2j3CHImIe3MI5fFgY9dgdXpJv_8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    return-void
.end method
