package com.living.emo.presenter;

import com.google.gson.Gson;
import com.living.emo.bean.MusicBean;
import com.living.emo.interfaces.IMusicsControlViewCallback;
import com.living.emo.interfaces.IMusicsPresenters;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class MemoryPresenters implements IMusicsPresenters {
    private static final String TAG = "com.living.emo.presenter.MemoryPresenters";
    private static MemoryPresenters instance = null;
    private static final String mMusics = "{\"code\":1,\"message\":\"success\",\"data\":[{\"name\":\"numb\",\"path\":\"musics/numb.mp3\"},{\"name\":\"unreal\",\"path\":\"musics/memoryBackground.mp3\"}]}";
    private List<IMusicsControlViewCallback> mCallbacks = new ArrayList();

    @Override // com.living.emo.interfaces.IMusicsPresenters
    public void getMusicList() {
        handlerControlView(((MusicBean) new Gson().fromJson(mMusics, (Class<Object>) MusicBean.class)).getData());
    }

    private void handlerControlView(List<MusicBean.DataBean> list) {
        List<IMusicsControlViewCallback> list2 = this.mCallbacks;
        if (list2 != null) {
            for (IMusicsControlViewCallback iMusicsControlViewCallback : list2) {
                iMusicsControlViewCallback.onMusicListLoad(list);
            }
        }
    }

    private MemoryPresenters() {
    }

    public static MemoryPresenters getInstance() {
        if (instance == null) {
            synchronized (MemoryPresenters.class) {
                if (instance == null) {
                    instance = new MemoryPresenters();
                }
            }
        }
        return instance;
    }

    public void registerControlView(IMusicsControlViewCallback iMusicsControlViewCallback) {
        List<IMusicsControlViewCallback> list = this.mCallbacks;
        if (list != null && !list.contains(iMusicsControlViewCallback)) {
            this.mCallbacks.add(iMusicsControlViewCallback);
        }
    }

    @Override // com.living.emo.interfaces.IBasePresenter
    public void unRegisterControlView() {
        this.mCallbacks.clear();
    }
}
