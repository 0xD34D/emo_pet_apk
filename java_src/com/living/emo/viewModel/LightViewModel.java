package com.living.emo.viewModel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.living.emo.model.DataConfig;
import com.living.emo.util.LogUtil;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class LightViewModel extends ViewModel {
    private MutableLiveData<byte[]> byteStr = new MutableLiveData<>();
    private MutableLiveData<ArrayList<DataConfig.DataBean.LightBean.StateBean>> lightData = new MutableLiveData<>();
    private MutableLiveData<Integer> onOrOff = new MutableLiveData<>();
    private MutableLiveData<HashMap<String, Integer>> lightOnOff = new MutableLiveData<>();

    public LiveData<byte[]> getByteStr() {
        return this.byteStr;
    }

    public void setByteStr(byte[] bArr) {
        LogUtil.m64e("zxl::" + LightViewModel.class.getSimpleName(), "setByteStr: ------------------------------>");
        this.byteStr.setValue(bArr);
    }

    public LiveData<ArrayList<DataConfig.DataBean.LightBean.StateBean>> getLightData() {
        return this.lightData;
    }

    public void setLightData(ArrayList<DataConfig.DataBean.LightBean.StateBean> arrayList) {
        LogUtil.m64e("zxl::" + LightViewModel.class.getSimpleName(), "setLightData: ------------------------------>");
        this.lightData.setValue(arrayList);
    }

    public LiveData<Integer> getOnOrOff() {
        return this.onOrOff;
    }

    public void setOnOrOff(Integer num) {
        LogUtil.m64e("zxl::" + LightViewModel.class.getSimpleName(), "setOnOrOff: ------------------------------>");
        this.onOrOff.setValue(num);
    }

    public LiveData<HashMap<String, Integer>> getLightOnOff() {
        return this.lightOnOff;
    }

    public void setLightOnOff(HashMap<String, Integer> hashMap) {
        LogUtil.m64e("zxl::" + LightViewModel.class.getSimpleName(), "setLightOnOff: ------------------------------>");
        this.lightOnOff.setValue(hashMap);
    }
}
