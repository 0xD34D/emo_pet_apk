package com.living.emo.presenter.domain;

import com.living.emo.MyApplication;
import com.living.emo.bean.Notice;
import com.living.emo.bean.domain.Article;
import com.living.emo.interfaces.IResultContrlView;
import com.living.emo.model.Constants;
import com.living.emo.util.LogUtil;
import com.living.emo.util.NoticeSharedPreferences;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;
/* loaded from: classes.dex */
public class NoticesPresenterImpl {
    static NoticesPresenterImpl sNoticesPresenter;
    private IResultContrlView mIResultContrlView;
    private Retrofit mRetrofit = new Retrofit.Builder().baseUrl(Constants.API_BASE_URL).addConverterFactory(GsonConverterFactory.create()).build();

    /* loaded from: classes.dex */
    public interface NoticesAPI {
        @GET("notification/content/{id}")
        Call<Article> getArticle(@Path("id") int i);

        @GET("notification/latest")
        Call<Notice> getNotice(@Query("origin") int i);
    }

    public static NoticesPresenterImpl getInstance() {
        if (sNoticesPresenter == null) {
            sNoticesPresenter = new NoticesPresenterImpl();
        }
        return sNoticesPresenter;
    }

    private NoticesPresenterImpl() {
    }

    public void NoticesInfo() {
        ((NoticesAPI) this.mRetrofit.create(NoticesAPI.class)).getNotice(NoticeSharedPreferences.getInstance(MyApplication.getContext()).getVersion()).enqueue(new Callback<Notice>() { // from class: com.living.emo.presenter.domain.NoticesPresenterImpl.1
            @Override // retrofit2.Callback
            public void onResponse(Call<Notice> call, Response<Notice> response) {
                LogUtil.m64e("TAG", "onResponse: " + response.toString());
                if (response.code() != 200) {
                    NoticesPresenterImpl.this.mIResultContrlView.failed(new Exception("出错了"));
                } else if (response.body().getErrcode() == 1) {
                    NoticesPresenterImpl.this.mIResultContrlView.failed(new Exception("出错了"));
                } else {
                    NoticesPresenterImpl.this.mIResultContrlView.success(response.body());
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<Notice> call, Throwable th) {
                NoticesPresenterImpl.this.mIResultContrlView.failed((Exception) th);
            }
        });
    }

    public void getArticle(final int i) {
        ((NoticesAPI) this.mRetrofit.create(NoticesAPI.class)).getArticle(i).enqueue(new Callback<Article>() { // from class: com.living.emo.presenter.domain.NoticesPresenterImpl.2
            @Override // retrofit2.Callback
            public void onResponse(Call<Article> call, Response<Article> response) {
                LogUtil.m64e("TAG", "onResponse: " + response.body().getContent());
                if (response.code() != 200) {
                    NoticesPresenterImpl.this.mIResultContrlView.failed(new Exception("出错了"));
                } else if (response.body().getErrcode() == 0) {
                    NoticesPresenterImpl.this.mIResultContrlView.failed(new Exception("出错了"));
                } else {
                    response.body().setId(i);
                    NoticesPresenterImpl.this.mIResultContrlView.success(response.body());
                }
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<Article> call, Throwable th) {
                LogUtil.m64e("TAG", "onFailure: " + th.toString());
                NoticesPresenterImpl.this.mIResultContrlView.failed((Exception) th);
            }
        });
    }

    public void setOnIResultContrlView(IResultContrlView iResultContrlView) {
        this.mIResultContrlView = iResultContrlView;
    }
}
