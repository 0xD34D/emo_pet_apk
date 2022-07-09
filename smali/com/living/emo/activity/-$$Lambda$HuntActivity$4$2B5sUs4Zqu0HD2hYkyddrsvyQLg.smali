.class public final synthetic Lcom/living/emo/activity/-$$Lambda$HuntActivity$4$2B5sUs4Zqu0HD2hYkyddrsvyQLg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/activity/HuntActivity$4;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/activity/HuntActivity$4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/activity/-$$Lambda$HuntActivity$4$2B5sUs4Zqu0HD2hYkyddrsvyQLg;->f$0:Lcom/living/emo/activity/HuntActivity$4;

    iput p2, p0, Lcom/living/emo/activity/-$$Lambda$HuntActivity$4$2B5sUs4Zqu0HD2hYkyddrsvyQLg;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/activity/-$$Lambda$HuntActivity$4$2B5sUs4Zqu0HD2hYkyddrsvyQLg;->f$0:Lcom/living/emo/activity/HuntActivity$4;

    iget v1, p0, Lcom/living/emo/activity/-$$Lambda$HuntActivity$4$2B5sUs4Zqu0HD2hYkyddrsvyQLg;->f$1:I

    invoke-virtual {v0, v1}, Lcom/living/emo/activity/HuntActivity$4;->lambda$findHunt$0$HuntActivity$4(I)V

    return-void
.end method
