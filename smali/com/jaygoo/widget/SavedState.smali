.class public Lcom/jaygoo/widget/SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/jaygoo/widget/SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currSelectedMax:F

.field public currSelectedMin:F

.field public maxValue:F

.field public minValue:F

.field public rangeInterval:F

.field public tickNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/jaygoo/widget/SavedState$1;

    invoke-direct {v0}, Lcom/jaygoo/widget/SavedState$1;-><init>()V

    sput-object v0, Lcom/jaygoo/widget/SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SavedState;->minValue:F

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SavedState;->maxValue:F

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SavedState;->rangeInterval:F

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SavedState;->tickNumber:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jaygoo/widget/SavedState;->currSelectedMin:F

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/jaygoo/widget/SavedState;->currSelectedMax:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jaygoo/widget/SavedState$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/jaygoo/widget/SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget p2, p0, Lcom/jaygoo/widget/SavedState;->minValue:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 41
    iget p2, p0, Lcom/jaygoo/widget/SavedState;->maxValue:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    iget p2, p0, Lcom/jaygoo/widget/SavedState;->rangeInterval:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    iget p2, p0, Lcom/jaygoo/widget/SavedState;->tickNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p2, p0, Lcom/jaygoo/widget/SavedState;->currSelectedMin:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 45
    iget p2, p0, Lcom/jaygoo/widget/SavedState;->currSelectedMax:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
