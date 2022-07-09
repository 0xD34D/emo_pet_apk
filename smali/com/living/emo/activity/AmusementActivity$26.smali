.class Lcom/living/emo/activity/AmusementActivity$26;
.super Ljava/lang/Object;
.source "AmusementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1063
    iput-object p1, p0, Lcom/living/emo/activity/AmusementActivity$26;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1066
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$26;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-static {p1}, Lcom/living/emo/activity/AmusementActivity;->access$800(Lcom/living/emo/activity/AmusementActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->outApp()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/living/emo/activity/AmusementActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 1067
    iget-object p1, p0, Lcom/living/emo/activity/AmusementActivity$26;->this$0:Lcom/living/emo/activity/AmusementActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/AmusementActivity;->finish()V

    return-void
.end method
