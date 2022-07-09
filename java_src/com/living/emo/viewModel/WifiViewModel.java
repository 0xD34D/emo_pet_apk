package com.living.emo.viewModel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.living.emo.bean.WifiConfigSettingBean;
import java.util.HashMap;
/* loaded from: classes.dex */
public class WifiViewModel extends ViewModel {
    private final MutableLiveData<HashMap<String, String>> wifiConfig = new MutableLiveData<>();
    private final MutableLiveData<WifiConfigSettingBean> wifiState = new MutableLiveData<>();

    public void setWifiConfig(HashMap<String, String> hashMap) {
        this.wifiConfig.setValue(hashMap);
    }

    public LiveData<HashMap<String, String>> getWifiConfig() {
        return this.wifiConfig;
    }

    public void setWifiState(WifiConfigSettingBean wifiConfigSettingBean) {
        this.wifiState.setValue(wifiConfigSettingBean);
    }

    public LiveData<WifiConfigSettingBean> getwifiState() {
        return this.wifiState;
    }
}
