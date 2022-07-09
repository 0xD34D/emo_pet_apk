.class public final synthetic Lcom/living/emo/fragment/-$$Lambda$AchievementsFragment$wAXwGrZRxqP8eBFxjMMhtQMZvHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/living/emo/adapter/LifeTimeAdapter$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/fragment/AchievementsFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/fragment/AchievementsFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/fragment/-$$Lambda$AchievementsFragment$wAXwGrZRxqP8eBFxjMMhtQMZvHE;->f$0:Lcom/living/emo/fragment/AchievementsFragment;

    iput-object p2, p0, Lcom/living/emo/fragment/-$$Lambda$AchievementsFragment$wAXwGrZRxqP8eBFxjMMhtQMZvHE;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(ILcom/living/emo/bean/AchievementBean;)V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/fragment/-$$Lambda$AchievementsFragment$wAXwGrZRxqP8eBFxjMMhtQMZvHE;->f$0:Lcom/living/emo/fragment/AchievementsFragment;

    iget-object v1, p0, Lcom/living/emo/fragment/-$$Lambda$AchievementsFragment$wAXwGrZRxqP8eBFxjMMhtQMZvHE;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/living/emo/fragment/AchievementsFragment;->lambda$initView$0$AchievementsFragment(Ljava/util/List;ILcom/living/emo/bean/AchievementBean;)V

    return-void
.end method
