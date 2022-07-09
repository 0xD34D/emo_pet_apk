.class public final synthetic Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$tnk515kzLsUW-bl4coe4xhmsyE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/fragment/CitySettingFragment;

.field public final synthetic f$1:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/fragment/CitySettingFragment;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$tnk515kzLsUW-bl4coe4xhmsyE8;->f$0:Lcom/living/emo/fragment/CitySettingFragment;

    iput-object p2, p0, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$tnk515kzLsUW-bl4coe4xhmsyE8;->f$1:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$tnk515kzLsUW-bl4coe4xhmsyE8;->f$0:Lcom/living/emo/fragment/CitySettingFragment;

    iget-object v1, p0, Lcom/living/emo/fragment/-$$Lambda$CitySettingFragment$tnk515kzLsUW-bl4coe4xhmsyE8;->f$1:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/living/emo/fragment/CitySettingFragment;->lambda$getAddress$5$CitySettingFragment(Landroid/location/Location;)V

    return-void
.end method
