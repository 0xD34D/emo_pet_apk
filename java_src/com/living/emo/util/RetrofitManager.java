package com.living.emo.util;

import com.living.emo.model.Constants;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
/* loaded from: classes.dex */
public class RetrofitManager {
    static RetrofitManager mRetrofitManager;
    private Retrofit mRetrofit;

    public RetrofitManager() throws Exception {
        build();
    }

    public static RetrofitManager getInstance() throws Exception {
        if (mRetrofitManager == null) {
            mRetrofitManager = new RetrofitManager();
        }
        return mRetrofitManager;
    }

    public void build() throws Exception {
        this.mRetrofit = new Retrofit.Builder().baseUrl(Constants.API_BASE_URL).addConverterFactory(GsonConverterFactory.create()).build();
    }

    public Retrofit getRetrofit() {
        return this.mRetrofit;
    }
}
