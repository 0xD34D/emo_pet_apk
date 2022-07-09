.class Lcom/living/emo/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/MainActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/MainActivity;

.field final synthetic val$musicText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/living/emo/MainActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/living/emo/MainActivity$3;->this$0:Lcom/living/emo/MainActivity;

    iput-object p2, p0, Lcom/living/emo/MainActivity$3;->val$musicText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeMusicName(Ljava/lang/String;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/living/emo/MainActivity$3;->val$musicText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
