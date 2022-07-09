.class public final synthetic Lcom/living/emo/adapter/-$$Lambda$BleDeviceAdapter$MIoE1EwZ948AJLd4H1fUTc3iHKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/adapter/BleDeviceAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/adapter/BleDeviceAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/adapter/-$$Lambda$BleDeviceAdapter$MIoE1EwZ948AJLd4H1fUTc3iHKE;->f$0:Lcom/living/emo/adapter/BleDeviceAdapter;

    iput p2, p0, Lcom/living/emo/adapter/-$$Lambda$BleDeviceAdapter$MIoE1EwZ948AJLd4H1fUTc3iHKE;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/adapter/-$$Lambda$BleDeviceAdapter$MIoE1EwZ948AJLd4H1fUTc3iHKE;->f$0:Lcom/living/emo/adapter/BleDeviceAdapter;

    iget v1, p0, Lcom/living/emo/adapter/-$$Lambda$BleDeviceAdapter$MIoE1EwZ948AJLd4H1fUTc3iHKE;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/adapter/BleDeviceAdapter;->lambda$onBindViewHolder$0$BleDeviceAdapter(ILandroid/view/View;)V

    return-void
.end method
