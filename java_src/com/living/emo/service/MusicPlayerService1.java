package com.living.emo.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.living.emo.presenter.PlayerControlPresenter1;
import com.living.emo.util.LogUtil;
/* loaded from: classes.dex */
public class MusicPlayerService1 extends Service {
    private static final String TAG = "com.living.emo.service.MusicPlayerService1";
    private PlayerControlPresenter1 mPlayerControlPresenter1 = null;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (this.mPlayerControlPresenter1 == null) {
            LogUtil.m65d(TAG, "----------onCreate-------------");
            this.mPlayerControlPresenter1 = new PlayerControlPresenter1();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        LogUtil.m65d(TAG, "----------onBind-------------");
        return this.mPlayerControlPresenter1;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
