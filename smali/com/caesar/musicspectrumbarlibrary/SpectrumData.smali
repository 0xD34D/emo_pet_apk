.class public Lcom/caesar/musicspectrumbarlibrary/SpectrumData;
.super Ljava/lang/Object;
.source "SpectrumData.java"


# instance fields
.field private bottom:F

.field private color:Ljava/lang/String;

.field private left:F

.field private right:F

.field private top:F


# direct methods
.method public constructor <init>(FFFFLjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->left:F

    .line 16
    iput p2, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->right:F

    .line 17
    iput p3, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->top:F

    .line 18
    iput p4, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->bottom:F

    .line 19
    iput-object p5, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->color:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->bottom:F

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getLeft()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->left:F

    return v0
.end method

.method public getRight()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->right:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->top:F

    return v0
.end method

.method public setBottom(F)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->bottom:F

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->color:Ljava/lang/String;

    return-void
.end method

.method public setLeft(F)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->left:F

    return-void
.end method

.method public setRight(F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->right:F

    return-void
.end method

.method public setTop(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/caesar/musicspectrumbarlibrary/SpectrumData;->top:F

    return-void
.end method
