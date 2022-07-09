.class Lcom/living/emo/activity/AmusementActivity$1;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Lcom/living/emo/interfaces/IMusicsControlViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/AmusementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/AmusementActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/AmusementActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicListLoad(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/MusicBean$DataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$1;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0, p1}, Lcom/living/emo/activity/AmusementActivity;->access$002(Lcom/living/emo/activity/AmusementActivity;Ljava/util/List;)Ljava/util/List;

    :cond_0
    return-void
.end method
