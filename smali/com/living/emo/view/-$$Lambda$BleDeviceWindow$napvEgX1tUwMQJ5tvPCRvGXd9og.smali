.class public final synthetic Lcom/living/emo/view/-$$Lambda$BleDeviceWindow$napvEgX1tUwMQJ5tvPCRvGXd9og;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/living/emo/adapter/BleDeviceAdapter$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/view/BleDeviceWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/view/BleDeviceWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/view/-$$Lambda$BleDeviceWindow$napvEgX1tUwMQJ5tvPCRvGXd9og;->f$0:Lcom/living/emo/view/BleDeviceWindow;

    return-void
.end method


# virtual methods
.method public final click(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/view/-$$Lambda$BleDeviceWindow$napvEgX1tUwMQJ5tvPCRvGXd9og;->f$0:Lcom/living/emo/view/BleDeviceWindow;

    invoke-virtual {v0, p1}, Lcom/living/emo/view/BleDeviceWindow;->lambda$initView$0$BleDeviceWindow(Lcom/clj/fastble/data/BleDevice;)V

    return-void
.end method
