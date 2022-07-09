.class Lcom/living/emo/activity/ConnectActivity$10;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/ConnectActivity;->onPermissionGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/activity/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/living/emo/activity/ConnectActivity;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity$10;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 504
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$10;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-virtual {p1}, Lcom/living/emo/activity/ConnectActivity;->finish()V

    return-void
.end method
