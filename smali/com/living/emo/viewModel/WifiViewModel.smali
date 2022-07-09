.class public Lcom/living/emo/viewModel/WifiViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "WifiViewModel.java"


# instance fields
.field private final wifiConfig:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final wifiState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/living/emo/bean/WifiConfigSettingBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/living/emo/viewModel/WifiViewModel;->wifiConfig:Landroidx/lifecycle/MutableLiveData;

    .line 14
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/living/emo/viewModel/WifiViewModel;->wifiState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public getWifiConfig()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/living/emo/viewModel/WifiViewModel;->wifiConfig:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getwifiState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/living/emo/bean/WifiConfigSettingBean;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/living/emo/viewModel/WifiViewModel;->wifiState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public setWifiConfig(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/living/emo/viewModel/WifiViewModel;->wifiConfig:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setWifiState(Lcom/living/emo/bean/WifiConfigSettingBean;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/living/emo/viewModel/WifiViewModel;->wifiState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
