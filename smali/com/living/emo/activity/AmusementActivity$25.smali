.class Lcom/living/emo/activity/AmusementActivity$25;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Lcom/caesar/musicspectrumbarlibrary/MusicSpectrumBar$OnSeekChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/AmusementActivity;->initEvents()V
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

    .line 1043
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$25;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 2

    .line 1051
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$25;->this$0:Lcom/living/emo/activity/AmusementActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/living/emo/activity/AmusementActivity;->access$3502(Lcom/living/emo/activity/AmusementActivity;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(I)V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$25;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/living/emo/activity/AmusementActivity$25;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {v0}, Lcom/living/emo/activity/AmusementActivity;->access$1900(Lcom/living/emo/activity/AmusementActivity;)Lcom/living/emo/interfaces/IPlayerControlPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/living/emo/interfaces/IPlayerControlPresenter;->seekTo(I)V

    .line 1060
    :cond_0
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$25;->this$0:Lcom/living/emo/activity/AmusementActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/living/emo/activity/AmusementActivity;->access$3502(Lcom/living/emo/activity/AmusementActivity;Z)Z

    return-void
.end method
