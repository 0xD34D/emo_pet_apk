.class Lcom/living/emo/activity/ConnectActivity$1;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Lcom/living/emo/view/BleDeviceWindow$OnWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/activity/ConnectActivity;->initWindow()V
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

    .line 112
    iput-object p1, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0, p1}, Lcom/living/emo/activity/ConnectActivity;->access$002(Lcom/living/emo/activity/ConnectActivity;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 116
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$100(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {p1}, Lcom/living/emo/activity/ConnectActivity;->access$200(Lcom/living/emo/activity/ConnectActivity;)Lcom/living/emo/view/BleDeviceWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/view/BleDeviceWindow;->dismiss()V

    return-void
.end method

.method public refresh()V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$300(Lcom/living/emo/activity/ConnectActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$400(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/BleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v2}, Lcom/living/emo/activity/ConnectActivity;->access$000(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v2

    const-string v3, "0000ffe0-0000-1000-8000-00805f9b34fb"

    const-string v4, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, v2, v3, v4}, Lcom/clj/fastble/BleManager;->stopNotify(Lcom/clj/fastble/data/BleDevice;Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0, v1}, Lcom/living/emo/activity/ConnectActivity;->access$302(Lcom/living/emo/activity/ConnectActivity;Z)Z

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$500(Lcom/living/emo/activity/ConnectActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ble_name"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$500(Lcom/living/emo/activity/ConnectActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$400(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->disconnectAllDevice()V

    .line 129
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$400(Lcom/living/emo/activity/ConnectActivity;)Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->destroy()V

    .line 130
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$600(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v2, 0x7f080160

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 131
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$700(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f080163

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 132
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$800(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$900(Lcom/living/emo/activity/ConnectActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$1000(Lcom/living/emo/activity/ConnectActivity;)V

    .line 135
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$1100(Lcom/living/emo/activity/ConnectActivity;)V

    .line 136
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0}, Lcom/living/emo/activity/ConnectActivity;->access$200(Lcom/living/emo/activity/ConnectActivity;)Lcom/living/emo/view/BleDeviceWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/view/BleDeviceWindow;->dismiss()V

    .line 137
    iget-object v0, p0, Lcom/living/emo/activity/ConnectActivity$1;->this$0:Lcom/living/emo/activity/ConnectActivity;

    invoke-static {v0, v1}, Lcom/living/emo/activity/ConnectActivity;->access$1202(Lcom/living/emo/activity/ConnectActivity;Z)Z

    return-void
.end method
