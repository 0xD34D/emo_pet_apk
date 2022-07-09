package com.living.emo.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.living.emo.presenter.PlayerControlPresenter2;
import com.living.emo.util.LogUtil;
/* loaded from: classes.dex */
public class MusicPlayerService2 extends Service {
    private static final String TAG = "com.living.emo.service.MusicPlayerService2";
    private PlayerControlPresenter2 mPlayerControlPresenter2 = null;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (this.mPlayerControlPresenter2 == null) {
            LogUtil.m65d(TAG, "----------onCreate-------------");
            this.mPlayerControlPresenter2 = new PlayerControlPresenter2();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        LogUtil.m65d(TAG, "----------onBind-------------");
        return this.mPlayerControlPresenter2;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
