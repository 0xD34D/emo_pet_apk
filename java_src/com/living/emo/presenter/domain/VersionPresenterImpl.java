package com.living.emo.presenter.domain;

import com.living.emo.bean.domain.Version;
import com.living.emo.interfaces.Api;
import com.living.emo.interfaces.IVersionContrlView;
import com.living.emo.interfaces.IVersionPresenter;
import com.living.emo.util.LogUtil;
import com.living.emo.util.RetrofitManager;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes.dex */
public class VersionPresenterImpl implements IVersionPresenter {
    private static final String TAG = "VersionPresenterImpl";
    private IVersionContrlView mListener = null;

    @Override // com.living.emo.interfaces.IVersionPresenter
    public void getVersionInfo() {
        try {
            ((Api) RetrofitManager.getInstance().getRetrofit().create(Api.class)).getVersionInfo().enqueue(new Callback<Version>() { // from class: com.living.emo.presenter.domain.VersionPresenterImpl.1
                @Override // retrofit2.Callback
                public void onResponse(Call<Version> call, Response<Version> response) {
                    String str = VersionPresenterImpl.TAG;
                    LogUtil.m64e(str, "onResponse: " + response.toString());
                    if (response.code() == 200 && VersionPresenterImpl.this.mListener != null) {
                        String str2 = VersionPresenterImpl.TAG;
                        LogUtil.m64e(str2, "onResponse: " + response.body().toString());
                        VersionPresenterImpl.this.mListener.getVersionInfo(response.body());
                    }
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<Version> call, Throwable th) {
                    String str = VersionPresenterImpl.TAG;
                    LogUtil.m64e(str, "onFailure: " + th.getMessage());
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            String str = TAG;
            LogUtil.m64e(str, "getVersionInfo: " + e.getMessage());
        }
    }

    public void registerControlView(IVersionContrlView iVersionContrlView) {
        this.mListener = iVersionContrlView;
    }

    @Override // com.living.emo.interfaces.IBasePresenter
    public void unRegisterControlView() {
        this.mListener = null;
    }
}
