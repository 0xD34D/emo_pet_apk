package com.living.emo.interfaces;

import com.living.emo.bean.domain.Version;
import retrofit2.Call;
import retrofit2.http.GET;
/* loaded from: classes.dex */
public interface Api {
    @GET("ota/version")
    Call<Version> getVersionInfo();
}
