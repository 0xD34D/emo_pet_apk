.class Lcom/living/emo/activity/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/BaseActivity;->playBackgroundMusicEvent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/BaseActivity;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/living/emo/activity/BaseActivity$2;->this$0:Lcom/living/emo/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 192
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/living/emo/util/MusicPlayerUtil;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/living/emo/util/MusicPlayerUtil;->onClick(Landroid/view/View;)V

    return-void
.end method
