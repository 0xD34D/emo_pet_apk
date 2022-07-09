.class final Lcom/jaygoo/widget/SavedState$1;
.super Ljava/lang/Object;
.source "SavedState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaygoo/widget/SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/jaygoo/widget/SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/jaygoo/widget/SavedState;
    .locals 2

    .line 50
    new-instance v0, Lcom/jaygoo/widget/SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/jaygoo/widget/SavedState;-><init>(Landroid/os/Parcel;Lcom/jaygoo/widget/SavedState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/jaygoo/widget/SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/jaygoo/widget/SavedState;
    .locals 0

    .line 54
    new-array p1, p1, [Lcom/jaygoo/widget/SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/jaygoo/widget/SavedState$1;->newArray(I)[Lcom/jaygoo/widget/SavedState;

    move-result-object p1

    return-object p1
.end method
