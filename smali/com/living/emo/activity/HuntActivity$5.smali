.class Lcom/living/emo/activity/HuntActivity$5;
.super Ljava/lang/Object;
.source "HuntActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/HuntActivity;->alertDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/HuntActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/HuntActivity;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity$5;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 379
    iget-object p2, p0, Lcom/living/emo/activity/HuntActivity$5;->this$0:Lcom/living/emo/activity/HuntActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/living/emo/activity/HuntActivity;->access$202(Lcom/living/emo/activity/HuntActivity;Z)Z

    .line 380
    iget-object p2, p0, Lcom/living/emo/activity/HuntActivity$5;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-static {p2}, Lcom/living/emo/activity/HuntActivity;->access$1000(Lcom/living/emo/activity/HuntActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    invoke-static {}, Lcom/living/emo/util/CommandUtil;->resetting()[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/living/emo/activity/HuntActivity;->write(Lcom/clj/fastble/data/BleDevice;[B)V

    .line 381
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
