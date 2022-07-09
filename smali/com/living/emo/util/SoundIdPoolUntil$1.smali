.class Lcom/living/emo/util/SoundIdPoolUntil$1;
.super Ljava/lang/Object;
.source "SoundIdPoolUntil.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/util/SoundIdPoolUntil;->play(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/util/SoundIdPoolUntil;

.field final synthetic val$voiceId:I


# direct methods
.method constructor <init>(Lcom/living/emo/util/SoundIdPoolUntil;I)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/living/emo/util/SoundIdPoolUntil$1;->this$0:Lcom/living/emo/util/SoundIdPoolUntil;

    iput p2, p0, Lcom/living/emo/util/SoundIdPoolUntil$1;->val$voiceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    .line 62
    iget-object p1, p0, Lcom/living/emo/util/SoundIdPoolUntil$1;->this$0:Lcom/living/emo/util/SoundIdPoolUntil;

    iget-object v0, p1, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/living/emo/util/SoundIdPoolUntil$1;->val$voiceId:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 63
    iget-object p1, p0, Lcom/living/emo/util/SoundIdPoolUntil$1;->this$0:Lcom/living/emo/util/SoundIdPoolUntil;

    iget-object p1, p1, Lcom/living/emo/util/SoundIdPoolUntil;->mSoundPool:Landroid/media/SoundPool;

    iget p2, p0, Lcom/living/emo/util/SoundIdPoolUntil$1;->val$voiceId:I

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->unload(I)Z

    return-void
.end method
