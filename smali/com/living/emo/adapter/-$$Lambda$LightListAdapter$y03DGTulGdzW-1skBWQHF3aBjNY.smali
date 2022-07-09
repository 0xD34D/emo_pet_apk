.class public final synthetic Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$y03DGTulGdzW-1skBWQHF3aBjNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/adapter/LightListAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/adapter/LightListAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$y03DGTulGdzW-1skBWQHF3aBjNY;->f$0:Lcom/living/emo/adapter/LightListAdapter;

    iput p2, p0, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$y03DGTulGdzW-1skBWQHF3aBjNY;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$y03DGTulGdzW-1skBWQHF3aBjNY;->f$0:Lcom/living/emo/adapter/LightListAdapter;

    iget v1, p0, Lcom/living/emo/adapter/-$$Lambda$LightListAdapter$y03DGTulGdzW-1skBWQHF3aBjNY;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/adapter/LightListAdapter;->lambda$onBindViewHolder$0$LightListAdapter(ILandroid/view/View;)V

    return-void
.end method
