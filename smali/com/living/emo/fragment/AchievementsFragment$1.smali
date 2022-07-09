.class Lcom/living/emo/fragment/AchievementsFragment$1;
.super Ljava/lang/Object;
.source "AchievementsFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleAchievementsResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/AchievementsFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/AchievementsFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/AchievementsFragment;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/living/emo/fragment/AchievementsFragment$1;->this$0:Lcom/living/emo/fragment/AchievementsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/living/emo/fragment/AchievementsFragment$1;->this$0:Lcom/living/emo/fragment/AchievementsFragment;

    invoke-static {v0, p1}, Lcom/living/emo/fragment/AchievementsFragment;->access$000(Lcom/living/emo/fragment/AchievementsFragment;Ljava/util/List;)V

    return-void
.end method
