.class public Lcom/living/emo/fragment/VolumeFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "VolumeFragment.java"


# instance fields
.field currgress:F

.field currtime:J

.field mVolume:Lcom/jaygoo/widget/RangeSeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/living/emo/fragment/VolumeFragment;->currtime:J

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/living/emo/fragment/VolumeFragment;->currgress:F

    return-void
.end method


# virtual methods
.method protected initEvent()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/living/emo/fragment/VolumeFragment;->mVolume:Lcom/jaygoo/widget/RangeSeekBar;

    new-instance v1, Lcom/living/emo/fragment/VolumeFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/VolumeFragment$1;-><init>(Lcom/living/emo/fragment/VolumeFragment;)V

    invoke-virtual {v0, v1}, Lcom/jaygoo/widget/RangeSeekBar;->setOnRangeChangedListener(Lcom/jaygoo/widget/OnRangeChangedListener;)V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0080

    return v0
.end method
